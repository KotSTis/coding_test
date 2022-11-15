The python requirements can be installed by running


The postgres database is spun up from a Docker image, so docker should be installed before.
After installing Docker, from within the config directory run:


```
    docker-compose up -d
```

```
    cat db_restore.sql | docker exec -i efo_db psql -U codingtest -d efo_db
```

For the limited purposes of the test and the computational power of my machine,
I process the first 100 terms of the ontology. this can be turned off and the whole ontology processed
by commenting out the following line in data_pipe.py on line 126

```
    processor = get_pages(terms_url, page_size, pages)
```

Input a negative number for the pages and you will download the entire ontology


Author's Notes/Remarks:
The choice to not enforce a foreign key started as a necessity since I was not downloading the entire ontology when developing
but also later realized that a parent could be possibly outside of the EFO ontology, so it would not be possible to include those
parents in the database if we had indeed enforced a foreign key constraint on the parent_id field.

As a proof of concept, id, description and iri were chosen as the columns for the efo terms. If more information
is required, that can easily be added on, as we are accessing the entire ontology before selecting our data.

The table structure was chosen because from the limited heuristics on the efo ontology, we notice:
    - a many to one relationship between synonym and term
    - a one to many relationship between term and parent links
That is why we chose to implement two pivot tables to associate each term
with its parent links and synonyms.

Furthemore some terms within the efo ontology have short codes that signify another ontology,
ie. MONDO:0002122.  
We can easily filter these results through and only choose the terms
that are returned from the efo ontology get that also only have short codes that start with 'EFO:'

On top of that, when processing the parent links, the design choice was made to not include parents
that are not in the efo ontology.  
Again, if these parent links are required in the future, they can easily be included without requiring
extensive refactoring.

When creating the pivot table to connect a term to its MESH references, I noticed in some cases, there is duplicate refs
ie. MeSH:00001 and MESH:00001. Some other times though, the case is that MeSH and MESH have different numerical ids.
Therefore the choice was made to include the MESH references not as a column in the efo_terms table but as a pivot table
since it more than likely the relationship between efo terms and mesh references is many to many given the subset of data looked at.
