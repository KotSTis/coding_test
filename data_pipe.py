from sqlalchemy import create_engine
import pandas as pd
import os
import psycopg2
import requests
from dotenv import load_dotenv
import collections
ROOT_DIR = os.path.dirname(os.path.abspath(__file__))
load_dotenv(os.path.join(ROOT_DIR, 'config', '.env'))

#URLS
ontology_url = "http://www.ebi.ac.uk/ols/api/ontologies/efo" 
terms_url = "http://www.ebi.ac.uk/ols/api/ontologies/efo/terms"
parents_url = "http://www.ebi.ac.uk/ols/api/ontologies/efo/parents"
#connecting to db
conn = psycopg2.connect(
    dbname=os.environ.get("POSTGRES_DB"),
    user=os.environ.get("POSTGRES_USER"),
    password=os.environ.get("POSTGRES_PASSWORD"),
    host='127.0.0.1',
    port=os.environ.get("POSTGRES_PORT")
)
dbname=os.environ.get("POSTGRES_DB")
user=os.environ.get("POSTGRES_USER")
password=os.environ.get("POSTGRES_PASSWORD")
port=os.environ.get("POSTGRES_PORT")
#making connection to the local db
url = f'postgresql://{user}:{password}@localhost:{port}/{dbname}'
engine = create_engine(url)

def get_pages(url, size, pages):
    session = requests.Session()
    first_page = session.get(url, params={'page': 0, 'size':size}).json()
    yield first_page
    num_pages = first_page['page']['totalPages'] if pages < 0 else pages

    for page in range(1, num_pages):
        print("page {0} out of {1}".format(page, num_pages))
        next_page = session.get(url, params={'page': page, 'size':size}).json()
        yield next_page

def get_synonyms(synonyms, id):
    retlist = []
    for synonym in synonyms:
        retlist.append([synonym, id])
    return retlist
   
def get_parents(id):
    parent_ids = []
    session = requests.Session()
    first_page = session.get(parents_url, params={'id': id}).json()
    num_pages = first_page['page']['totalPages']
    if first_page.__contains__('_embedded'):
        for term in first_page['_embedded']['terms']:
            if term.get('ontology_prefix') == "EFO":
                parent_ids.append({"parent_id": term.get('obo_id'),
                                   "child_id":  id})
        
        if num_pages > 2:
            for page in range(1, num_pages):
                next_page = session.get(url, params={'page': page}).json()
                if next_page.__contains__('_embedded'):
                    for term in page['_embedded']['terms']:
                        if term.get('ontology_prefix') == "EFO":
                             parent_ids.append({"parent_id": term.get('obo_id'),
                                                "child_id":  id})
    return parent_ids

def get_mesh_reference(xrefs, term_id):
    if xrefs is None:
        return []
    initial_refs = [[x[5:], term_id] for x in xrefs
              if x.startswith(("MeSh", "MESH"))]
    #because list is unhashable we take the extra step to assure uniqueness of records
    return [list(x) for x in set(tuple(x) for x in initial_refs)]
   

def load_and_process(terms, key_name, source_table):
    #reading new source data from api db
    db = pd.read_sql_query(""" SELECT * 
                            FROM dbo.{0}""".format(source_table), conn)
    if db.empty:
        terms.to_sql(source_table, engine, schema="dbo", if_exists='append', index=False)
        conn.commit()
        return
    db2, terms2 = db.align(terms, join='inner', axis=1)
    #detect changes. Get rows that are not present in the target.
    changes = terms2[~terms2.apply(tuple,1).isin(db2.apply(tuple,1))]
    if changes.empty:
        return
    #get new records
    inserts = changes[~changes[key_name].isin(db2[key_name])]

    #get modified rows
    modified = changes[changes[key_name].isin(db2[key_name])]
    #simply inserts the new values to the db
    inserts.to_sql(source_table, engine, schema="dbo", if_exists='append', index=False)
    conn.commit()
    update_destination_table(modified, source_table, key_name, engine)

def update_destination_table(df, table_name, key_name, engine):
    temp_list = []
    temp_table = f"{table_name}_temporary_table"
    for col in df.columns:
        if col != key_name:
            temp_list.append(f'"{col}"=s."{col}"')
    df.to_sql(temp_table, engine, schema="dbo", if_exists='replace', index=False)
    update_full = (f'UPDATE dbo."{table_name}" f '
                   f'SET {", ".join(temp_list)} '
                   f'FROM dbo."{table_name}" t '
                   f'INNER JOIN (SELECT * FROM dbo."{temp_table}") AS s ON s."{key_name}"=t."{key_name}" '
                   f'Where t."{key_name}"=s."{key_name}" ;'
                   )
    
    with engine.begin() as eng:
        eng.execute(update_full)
    conn.commit()
    cursor = conn.cursor()
    # drop temp table table after update successful
    sql = '''DROP TABLE dbo.{0} '''.format(temp_table)
    cursor.execute(sql)
    conn.commit()
     
if __name__ == '__main__':
    
    processor = get_pages(terms_url, 50, 2)
    terms = []
    parent_children = []
    mesh_references = []
    synonyms = []

    for page in processor:
        for term in page['_embedded']['terms']:
            #filtering by the terms that exists within the EFO ontology
            if term.get("ontology_prefix") == "EFO":
                terms.append({"description":  term.get('description'),
                            "iri":          term.get('iri'),
                            "id":         term.get('obo_id')})

                parent_children.extend(get_parents(term.get('obo_id')))
                
                mesh_references.extend(get_mesh_reference(
                    term.get('annotation').get('database_cross_reference'),
                    term.get('obo_id')))
                
                synonyms.extend(get_synonyms(term.get('synonyms'), term.get('obo_id')))

            
    term_df = pd.DataFrame(terms, columns=['id', 'description', 'iri'])
    df = term_df[term_df['id'].notna()]

    synonyms2 = [x for x in synonyms if x != []]
    
    load_and_process(df, "id", "efo_terms")
    
    parent_df = pd.DataFrame(parent_children, columns = ['parent_id', 'child_id'])
    df2 = parent_df.dropna(axis=0, how='any')
    load_and_process(df2, "parent_id", "parent_children")
    
    mesh_df = pd.DataFrame(mesh_references, columns = ['mesh_id', 'term_id'])
    df = mesh_df[mesh_df['mesh_id'].notna()]
    
    load_and_process(df, "mesh_id", "mesh_terms")
    #load_and_process(mesh_references)
    synonym_df = pd.DataFrame(synonyms2, columns = ['name', 'term_id'])
    
    load_and_process(pd.DataFrame(synonym_df['name']), "name", "synonyms")
    
    load_and_process(pd.DataFrame(synonym_df), "name", "synonym_terms")

        