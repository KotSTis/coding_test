--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE efo_db;




--
-- Drop roles
--

DROP ROLE codingtest;


--
-- Roles
--

CREATE ROLE codingtest;
ALTER ROLE codingtest WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:jaci7JcyFpn4zUqXUjmh6A==$qUB6n1GiW6sGcTZrpJes+ChaxzHXh/xkyNDkBSG1z4s=:9Sm3hob7DLRa42OQBg+velE59jPLRjgq9ngOo4+SNO0=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: codingtest
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO codingtest;

\connect template1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: codingtest
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: codingtest
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: codingtest
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "efo_db" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: efo_db; Type: DATABASE; Schema: -; Owner: codingtest
--

CREATE DATABASE efo_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE efo_db OWNER TO codingtest;

\connect efo_db

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: dbo; Type: SCHEMA; Schema: -; Owner: codingtest
--

CREATE SCHEMA dbo;


ALTER SCHEMA dbo OWNER TO codingtest;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: efo_terms; Type: TABLE; Schema: dbo; Owner: codingtest
--

CREATE TABLE dbo.efo_terms (
    description text,
    iri character varying NOT NULL,
    id character varying NOT NULL
);


ALTER TABLE dbo.efo_terms OWNER TO codingtest;

--
-- Name: mesh_terms; Type: TABLE; Schema: dbo; Owner: codingtest
--

CREATE TABLE dbo.mesh_terms (
    mesh_id character varying NOT NULL,
    term_id character varying NOT NULL
);


ALTER TABLE dbo.mesh_terms OWNER TO codingtest;

--
-- Name: parent_children; Type: TABLE; Schema: dbo; Owner: codingtest
--

CREATE TABLE dbo.parent_children (
    parent_id character varying NOT NULL,
    child_id character varying NOT NULL
);


ALTER TABLE dbo.parent_children OWNER TO codingtest;

--
-- Name: synonym_terms; Type: TABLE; Schema: dbo; Owner: codingtest
--

CREATE TABLE dbo.synonym_terms (
    name character varying NOT NULL,
    term_id character varying NOT NULL
);


ALTER TABLE dbo.synonym_terms OWNER TO codingtest;

--
-- Name: synonyms; Type: TABLE; Schema: dbo; Owner: codingtest
--

CREATE TABLE dbo.synonyms (
    name character varying NOT NULL
);


ALTER TABLE dbo.synonyms OWNER TO codingtest;

--
-- Data for Name: efo_terms; Type: TABLE DATA; Schema: dbo; Owner: codingtest
--

COPY dbo.efo_terms (description, iri, id) FROM stdin;
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0024389
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000872
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000833
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0009903
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000857
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000854
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1001998
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	HP:0012210
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	UBERON:0000061
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0007507
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000838
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0009534
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000839
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000018
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0004828
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000836
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0000203
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0042976
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000834
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0009444
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000843
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	Orphanet:261279
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	NCBITaxon:2759
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0003641
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000478
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0004805
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0005774
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000844
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000852
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0002254
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0003781
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0002907
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000850
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1001047
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000835
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0000588
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0002036
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	Orphanet:309789
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	Orphanet:309796
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000840
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000849
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1002018
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0003853
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	Orphanet:261272
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	Orphanet:98132
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000847
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0004277
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0000524
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000848
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0003869
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000845
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000846
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0000556
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0002122
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	Orphanet:307141
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000853
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	NCBITaxon:82378
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000858
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000837
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0002422
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000832
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	NCBITaxon:300275
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	NCBITaxon:4890
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000841
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0009675
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000842
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0009567
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000856
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0009559
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0003833
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000859
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000990
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000862
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000855
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	NCBITaxon:33090
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	Orphanet:248296
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	Orphanet:183651
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000863
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0002256
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0015765
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0100150
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0018943
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0100196
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	HP:0100880
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	NCBITaxon:94323
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	Orphanet:261265
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	Orphanet:98142
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0003955
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1001288
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000864
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0003832
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000861
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:1000851
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0015926
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	EFO:0007201
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	MONDO:0002562
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	Orphanet:206634
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	UBERON:0000411
{"Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (DUODENOGASTRIC REFLUX); to the esophagus (GASTROESOPHAGEAL REFLUX); or to the PANCREAS.","Retrograde bile flow. Reflux of bile can be from the duodenum to the stomach (duodenogastric reflux); to the esophagus (gastroesophageal reflux); or to the pancreas."}	http://www.ebi.ac.uk/efo/EFO_1000838	NCBITaxon:94328
\.


--
-- Data for Name: mesh_terms; Type: TABLE DATA; Schema: dbo; Owner: codingtest
--

COPY dbo.mesh_terms (mesh_id, term_id) FROM stdin;
D001655	EFO:1000838
D001660	EFO:0009534
D001744	EFO:1000839
D001745	EFO:1000018
D010265	EFO:0000203
D001602	EFO:1000837
D014804	MONDO:0042976
D000237	EFO:1000834
D007960	MONDO:0004805
D054363	EFO:1000835
D008654	EFO:0000588
D001442	EFO:1000832
D016866	EFO:1000872
D001446	EFO:1000833
D010409	MONDO:0002036
D018329	EFO:1000841
D009506	EFO:0009675
D001899	EFO:1000842
D013145	EFO:0009567
D001748	EFO:1000840
D001984	EFO:1000849
D001982	EFO:1002018
D012142	EFO:0003853
D020526	EFO:1000847
D020520	EFO:0004277
D001943	EFO:0003869
D001929	EFO:1000845
D001927	EFO:0005774
D020968	EFO:1000843
D020516	EFO:1000844
D009443	MONDO:0002122
D013577	MONDO:0002254
D002341	EFO:1000853
D002340	EFO:0003781
D020767	MONDO:0002907
D002054	EFO:1000850
D009059	EFO:1001047
D002095	EFO:1000851
D011009	MONDO:0015926
D002539	EFO:1000859
D020765	EFO:1000990
D002551	EFO:0007201
D017590	EFO:1000857
D003711	MONDO:0002562
D002422	EFO:1000854
D020918	EFO:1001998
D020512	EFO:1000855
C580316	MONDO:0018943
D014793	UBERON:0000411
D000825	UBERON:0000061
D002690	EFO:1000863
D023521	EFO:1000863
D015231	EFO:0003955
D002694	EFO:1001288
D041761	EFO:1000864
D005705	EFO:0003832
D013901	EFO:0007507
D002579	EFO:1000862
D002577	MONDO:0002256
\.


--
-- Data for Name: parent_children; Type: TABLE DATA; Schema: dbo; Owner: codingtest
--

COPY dbo.parent_children (parent_id, child_id) FROM stdin;
EFO:0009534	EFO:1000838
EFO:0010284	EFO:0009534
MONDO:0004828	EFO:1000839
EFO:1000018	EFO:1000839
EFO:0009690	EFO:1000018
MONDO:0024647	MONDO:0004828
EFO:0000203	EFO:1000836
EFO:0005803	EFO:0000203
MONDO:0042976	EFO:1000837
MONDO:0024298	MONDO:0042976
MONDO:0004805	EFO:1000834
EFO:1000478	EFO:1000834
MONDO:0003641	EFO:1000834
MONDO:0044881	MONDO:0003641
EFO:1000158	MONDO:0003641
EFO:0000232	EFO:1000478
MONDO:0017611	EFO:1000478
EFO:0005803	MONDO:0004805
EFO:0000540	MONDO:0004805
EFO:0000588	EFO:1000835
EFO:0002422	EFO:1000835
EFO:0000616	EFO:0002422
EFO:1001044	EFO:0000588
EFO:1000872	EFO:1000832
MONDO:0024389	EFO:1000832
EFO:0000771	MONDO:0024389
MONDO:0021678	EFO:1000872
EFO:0009903	EFO:1000833
MONDO:0002036	EFO:1000833
EFO:0009555	MONDO:0002036
EFO:0000408	EFO:0009903
NCBITaxon:4890	NCBITaxon:300275
NCBITaxon:2759	NCBITaxon:4890
EFO:0009675	EFO:1000841
EFO:0000625	EFO:0009675
MONDO:0021583	EFO:0009675
MONDO:0021440	EFO:0009675
EFO:0009567	EFO:1000842
EFO:0000771	EFO:0009567
BFO:0000040	EFO:0009567
EFO:1000018	EFO:1000840
EFO:0003853	EFO:1000849
EFO:1002018	EFO:1000849
EFO:0009433	EFO:1002018
EFO:0000684	EFO:0003853
EFO:0000616	EFO:0003853
Orphanet:98132	Orphanet:261272
Orphanet:98130	Orphanet:98132
EFO:0004277	EFO:1000847
EFO:0003763	EFO:0004277
EFO:0003869	EFO:1000848
MONDO:0021350	EFO:0003869
EFO:0009483	EFO:0003869
EFO:0010285	EFO:0003869
EFO:0005774	EFO:1000845
EFO:0009386	EFO:0005774
EFO:0000556	EFO:1000846
EFO:0009444	EFO:1000846
HP:0000118	EFO:0009444
HP:0001626	EFO:0000556
MONDO:0002122	EFO:1000843
EFO:1000844	EFO:1000843
EFO:0009559	EFO:1000844
EFO:0009903	MONDO:0002122
EFO:0003100	MONDO:0002122
EFO:0003100	EFO:0009559
MONDO:0002254	EFO:1000852
EFO:0000408	MONDO:0002254
BFO:0000040	MONDO:0002254
MONDO:0002907	EFO:1000853
EFO:0003781	EFO:1000853
EFO:0003763	EFO:0003781
MONDO:0000473	EFO:0003781
EFO:0003763	MONDO:0002907
MONDO:0000831	MONDO:0002907
EFO:0000524	EFO:1000850
EFO:1001047	EFO:1000850
MONDO:0002254	EFO:1000850
MONDO:0005042	EFO:1001047
EFO:0000405	EFO:1001047
EFO:0000408	EFO:0000524
MONDO:0015926	EFO:1000851
MONDO:0017027	MONDO:0015926
NCBITaxon:2759	NCBITaxon:82378
OBI:0100026	NCBITaxon:2759
EFO:0003833	EFO:1000858
EFO:1000158	EFO:0003833
EFO:0005774	EFO:0003833
EFO:1000990	EFO:1000859
EFO:0003763	EFO:1000990
EFO:0007201	EFO:1000856
MONDO:0001657	EFO:0007201
MONDO:0002562	EFO:1000857
EFO:0005774	EFO:1000857
MONDO:0021147	MONDO:0002562
EFO:0005772	MONDO:0002562
MONDO:0002254	EFO:1000854
EFO:1001998	EFO:1000854
MONDO:0024317	EFO:1001998
EFO:0009387	EFO:1001998
MONDO:0100196	EFO:1000855
MONDO:0018943	EFO:1000855
MONDO:0100150	EFO:1000855
MONDO:0015765	EFO:1000855
Orphanet:206634	EFO:1000855
Orphanet:183497	Orphanet:206634
MONDO:0019952	MONDO:0015765
MONDO:0019952	MONDO:0100150
EFO:0000508	MONDO:0018943
MONDO:0002921	MONDO:0018943
MONDO:0019952	MONDO:0100196
MONDO:0002320	MONDO:0100196
MONDO:0017303	MONDO:0100196
HP:0012210	HP:0100880
HP:0000077	HP:0012210
NCBITaxon:2759	NCBITaxon:94323
Orphanet:98142	Orphanet:261265
Orphanet:102020	Orphanet:98142
UBERON:0000061	UBERON:0000411
EFO:0000786	UBERON:0000061
UBERON:0001062	UBERON:0000061
NCBITaxon:33090	NCBITaxon:94328
NCBITaxon:2759	NCBITaxon:33090
Orphanet:183651	Orphanet:248296
Orphanet:158300	Orphanet:183651
EFO:1001288	EFO:1000863
EFO:0003955	EFO:1000863
EFO:0009549	EFO:0003955
EFO:0000771	EFO:0003955
MONDO:0021681	EFO:0003955
EFO:0009555	EFO:0003955
MONDO:0021678	EFO:1001288
EFO:0003832	EFO:1000864
MONDO:0015509	EFO:0003832
EFO:0007507	EFO:1000861
MONDO:0002254	EFO:0007507
EFO:0004264	EFO:0007507
EFO:0000618	EFO:0007507
MONDO:0002256	EFO:1000862
MONDO:0002654	MONDO:0002256
\.


--
-- Data for Name: synonym_terms; Type: TABLE DATA; Schema: dbo; Owner: codingtest
--

COPY dbo.synonym_terms (name, term_id) FROM stdin;
Bile Reflux	EFO:1000838
bile reflux	EFO:1000838
biliary tree disease	EFO:0009534
biliary tract disorder	EFO:0009534
disorder of biliary tree	EFO:0009534
disease or disorder of biliary tree	EFO:0009534
disease of biliary tree	EFO:0009534
biliary tree disease or disorder	EFO:0009534
bladder stone	EFO:1000839
vesical calculi	EFO:1000839
bladder stones	EFO:1000839
bladder calculus	EFO:1000839
Urinary Bladder Calculi	EFO:1000839
cystoliths	EFO:1000839
disorder of urinary bladder	EFO:1000018
bladder disease	EFO:1000018
disease of urinary bladder	EFO:1000018
disease or disorder of urinary bladder	EFO:1000018
urinary bladder disease or disorder	EFO:1000018
urinary bladder disorder	EFO:1000018
bladder disorder	EFO:1000018
urinary bladder disease	EFO:1000018
urolithiasis of lower urinary tract	MONDO:0004828
lower urinary tract urolithiasis	MONDO:0004828
BMH	EFO:1000836
benign monoclonal gammopathy (disorder)	EFO:1000836
benign Monoclonal Gammopathy	EFO:1000836
Monoclonal Gammopathy of Undetermined Significance	EFO:1000836
Monoclonal gammopathy of uncertain significance	EFO:0000203
Paraproteinaemia	EFO:0000203
Monoclonal Gammopathy of Unknown Significance	EFO:0000203
Monoclonal Gammopathy Of Undetermined Significance (MGUS)	EFO:0000203
Benign Monoclonal Gammopathy	EFO:0000203
MGUS - Monoclonal gammopathy of uncertain significance	EFO:0000203
Monoclonal gammopathy of undetermined significance	EFO:0000203
Monoclonal gammopathy of uncertain significance (disorder)	EFO:0000203
monoclonal gammopathy	EFO:0000203
Monoclonal gammopathy of undetermined significance (morphologic abnormality)	EFO:0000203
MGUS	EFO:0000203
Paraproteinemia	EFO:0000203
thiamine deficiency	EFO:1000837
beriberi	EFO:1000837
vitamin B1 deficiency	EFO:1000837
Beriberi	EFO:1000837
Beri Beri	EFO:1000837
mucoid cell adenoma	EFO:1000834
pituitary basophilic adenoma	EFO:1000834
pituitary gland basophil adenoma	EFO:1000834
basophilic pituitary gland adenoma	EFO:1000834
basophilic adenoma	EFO:1000834
pituitary gland basophilic adenoma	EFO:1000834
lymphomas and hemopoietic neoplasms of CNS	MONDO:0003641
CNS hematopoietic tumor	MONDO:0003641
lymphomas and hemopoietic neoplasms of the CNS	MONDO:0003641
central nervous system hematopoietic and lymphoid system neoplasm	MONDO:0003641
central nervous system hematopoietic neoplasm	MONDO:0003641
central nervous system hematopoietic tumor	MONDO:0003641
hematopoietic neoplasm of central nervous system	MONDO:0003641
hematopoietic tumor of central nervous system	MONDO:0003641
hematopoietic neoplasm of the central nervous system	MONDO:0003641
CNS hematopoietic neoplasm	MONDO:0003641
central nervous system hematopoietic neoplasms	MONDO:0003641
hematopoietic tumor of the central nervous system	MONDO:0003641
hematopoietic neoplasm of the CNS	MONDO:0003641
hematopoietic and lymphoid system neoplasm of central nervous system	MONDO:0003641
hematopoietic neoplasm of CNS	MONDO:0003641
pituitary adenoma	EFO:1000478
pituitary gland adenoma	EFO:1000478
adenoma of the pituitary gland	EFO:1000478
adenoma of pituitary gland	EFO:1000478
adenoma, anterior lobe pituitary gland, benign	EFO:1000478
adenoma of the pituitary	EFO:1000478
adenoma of pituitary	EFO:1000478
leukocyte disorder	MONDO:0004805
disease or disorder of leukocyte	MONDO:0004805
disorders, leukocyte	MONDO:0004805
disease of leukocyte	MONDO:0004805
white blood cell disorder	MONDO:0004805
leukocyte disease or disorder	MONDO:0004805
leukocyte disease	MONDO:0004805
disorder of leukocyte	MONDO:0004805
disorder, leukocyte	MONDO:0004805
benign fibrous mesothelioma	EFO:1000835
fibrous mesothelioma, benign (morphologic abnormality)	EFO:1000835
localized benign fibrous mesothelioma	EFO:1000835
fibrous mesothelioma, benign	EFO:1000835
benign neoplasm	EFO:0002422
benign neoplasm (disease)	EFO:0002422
neoplasm (disease), benign	EFO:0002422
mesothelioma	EFO:0000588
Bacteroides disease or disorder	EFO:1000832
Bacteroides caused disease or disorder	EFO:1000832
Bacteroides Infections	EFO:1000832
infection due to Bacteroides	EFO:1000832
Bacteroides infectious disease	EFO:1000832
anaerobic bacterial infection	MONDO:0024389
infection due to anaerobic bacteria	MONDO:0024389
infection caused by anaerobic bacteria	MONDO:0024389
Bacteroidaceae disease or disorder	EFO:1000872
Bacteroidaceae infectious disease	EFO:1000872
Bacteroidaceae caused disease or disorder	EFO:1000872
Bacteroidaceae Infections	EFO:1000872
Balanitis [Ambiguous]	EFO:1000833
balanitis	EFO:1000833
Balanitis (disorder)	EFO:1000833
Balanitis	EFO:1000833
glans penis inflammation	EFO:1000833
inflammation of glans penis	EFO:1000833
disease or disorder of penis	MONDO:0002036
disorder of penis	MONDO:0002036
penile disorder	MONDO:0002036
penis disease or disorder	MONDO:0002036
penis disease	MONDO:0002036
penile disease	MONDO:0002036
disease of penis	MONDO:0002036
inflammatory disorder	EFO:0009903
anatomical structure inflammation	EFO:0009903
inflammation of anatomical structure	EFO:0009903
inflammatory disease	EFO:0009903
yeasts	NCBITaxon:4890
blue skin Nevus	EFO:1000841
blue nevus	EFO:1000841
blue Nevus of the skin	EFO:1000841
blue Nevus of skin	EFO:1000841
mole	EFO:0009675
melanocytic Nevus	EFO:0009675
melanocytic nevus	EFO:0009675
nevus	EFO:0009675
melanotic Nevus	EFO:0009675
mole of skin	EFO:0009675
Borreliosis, NOS	EFO:1000842
Borrelia caused disease or disorder	EFO:1000842
Borrelia Infections	EFO:1000842
Borrelia disease or disorder	EFO:1000842
Borreliosis (disorder)	EFO:1000842
Borrelia infectious disease	EFO:1000842
borreliosis	EFO:1000842
Infection, Spirochete	EFO:0009567
SPIROCHETE INFECT	EFO:0009567
Spirochetal infection	EFO:0009567
Spirochete Infections	EFO:0009567
Infections, Spirochete	EFO:0009567
Spirochete Infection	EFO:0009567
Infection, Spirochaetales	EFO:0009567
Infections, Spirochaetales	EFO:0009567
Spirochaetales Infections	EFO:0009567
INFECT SPIROCHAETALES	EFO:0009567
SPIROCHAETALES INFECT	EFO:0009567
Spirochaetales Infection	EFO:0009567
INFECT SPIROCHETE	EFO:0009567
spirochaetales infections	EFO:0009567
Spirochetosis	EFO:0009567
bladder neck obstruction	EFO:1000840
bladder neck obstruction (disorder)	EFO:1000840
obstruction of bladder neck or vesicourethral orifice	EFO:1000840
Obstruction of bladder neck or vesicourethral orifice	EFO:1000840
Urinary Bladder Neck Obstruction	EFO:1000840
Bronchial Neoplasms	EFO:1000849
tumor of bronchus	EFO:1000849
neoplasm of bronchus	EFO:1000849
bronchus neoplasm (disease)	EFO:1000849
bronchial neoplasm (disease)	EFO:1000849
bronchial neoplasm	EFO:1000849
bronchus neoplasm	EFO:1000849
bronchus tumor	EFO:1000849
neoplasm of bronchus (disorder)	EFO:1000849
bronchus disease or disorder	EFO:1002018
bronchus disease	EFO:1002018
bronchial disorder	EFO:1002018
disease or disorder of bronchus	EFO:1002018
disease of bronchus	EFO:1002018
bronchospasm	EFO:1002018
disorder of bronchus	EFO:1002018
neoplasm of the respiratory tract	EFO:0003853
respiratory tract neoplasm	EFO:0003853
tumor of the respiratory tract	EFO:0003853
neoplasm of respiratory tract	EFO:0003853
respiratory system neoplasm	EFO:0003853
tract neoplasms, respiratory	EFO:0003853
neoplasms, respiratory tract	EFO:0003853
Neoplasms, Respiratory Tract	EFO:0003853
neoplasm, respiratory tract	EFO:0003853
tract neoplasm, respiratory	EFO:0003853
Respiratory Tract Neoplasms	EFO:0003853
Respiratory Tract Neoplasm	EFO:0003853
RESPIRATORY TRACT NEOPL	EFO:0003853
Tract Neoplasm, Respiratory	EFO:0003853
Tract Neoplasms, Respiratory	EFO:0003853
tumor of respiratory tract	EFO:0003853
Neoplasm, Respiratory Tract	EFO:0003853
respiratory tract tumor	EFO:0003853
Dup(17)(q12)	Orphanet:261272
Trisomy 17q12	Orphanet:261272
brainstem infarction	EFO:1000847
brain stem infarction	EFO:1000847
Brainstem infarction NOS	EFO:1000847
brain infarction of brainstem	EFO:1000847
brain stem infarction (disorder)	EFO:1000847
brainstem brain infarction	EFO:1000847
Brain Stem Infarctions	EFO:1000847
Brainstem infarction	EFO:1000847
Brainstem infarction NOS (disorder)	EFO:1000847
Venous Brain Infarctions	EFO:0004277
Posterior Circulation Infarction, Brain	EFO:0004277
Lacunar Infarction	EFO:0004277
INFARCT ANTERIOR CEREBRAL CIRC	EFO:0004277
Lacunar Infarctions	EFO:0004277
Brain Infarction, Posterior Circulation	EFO:0004277
Infarctions, Lacunar	EFO:0004277
Infarction, Brain, Anterior Circulation	EFO:0004277
Posterior Circulation Brain Infarction	EFO:0004277
POSTERIOR CIRC BRAIN INFARCT	EFO:0004277
Infarction, Brain	EFO:0004277
Brain Infarctions	EFO:0004277
INFARCT BRAIN POSTERIOR CIRC	EFO:0004277
Infarction, Brain, Posterior Circulation	EFO:0004277
Infarction, Posterior Circulation, Brain	EFO:0004277
Infarction, Anterior Cerebral Circulation	EFO:0004277
Infarction, Lacunar	EFO:0004277
Brain Infarction	EFO:0004277
Venous Infarction, Brain	EFO:0004277
ANTERIOR CIRC BRAIN INFARCT	EFO:0004277
brain infarction	EFO:0004277
Brain Infarctions, Venous	EFO:0004277
VENOUS INFARCT BRAIN	EFO:0004277
Venous Brain Infarction	EFO:0004277
BRAIN INFARCT	EFO:0004277
INFARCT ANTERIOR CIRC BRAIN	EFO:0004277
ANTERIOR CIRC INFARCT BRAIN	EFO:0004277
Anterior Circulation Brain Infarction	EFO:0004277
Infarction, Brain Venous	EFO:0004277
POSTERIOR CIRC INFARCT BRAIN	EFO:0004277
Brain Venous Infarction	EFO:0004277
Infarction, Anterior Circulation, Brain	EFO:0004277
Brain Venous Infarctions	EFO:0004277
ANTERIOR CEREBRAL CIRC INFARCT	EFO:0004277
Brain Infarction, Venous	EFO:0004277
BRAIN INFARCT POSTERIOR CIRC	EFO:0004277
Infarctions, Venous Brain	EFO:0004277
Brain Infarction, Anterior Circulation	EFO:0004277
BRAIN INFARCT ANTERIOR CIRC	EFO:0004277
INFARCT LACUNAR	EFO:0004277
Infarctions, Brain Venous	EFO:0004277
Venous Infarctions, Brain	EFO:0004277
Anterior Cerebral Circulation Infarction	EFO:0004277
BRAIN INFARCT VENOUS	EFO:0004277
INFARCT POSTERIOR CIRC BRAIN	EFO:0004277
Anterior Circulation Infarction, Brain	EFO:0004277
INFARCT BRAIN ANTERIOR CIRC	EFO:0004277
Infarction, Venous Brain	EFO:0004277
Infarctions, Brain	EFO:0004277
Cyst of the breast	EFO:1000848
Cyst of breast (disorder)	EFO:1000848
Breast Cyst	EFO:1000848
Cyst of breast	EFO:1000848
Neoplasms, Breast	EFO:0003869
Breast Tumors	EFO:0003869
neoplasm of breast	EFO:0003869
tumor of breast	EFO:0003869
Mammary Neoplasms, Human	EFO:0003869
breast tumor	EFO:0003869
neoplasm of the breast	EFO:0003869
Human Mammary Neoplasms	EFO:0003869
breast neoplasm	EFO:0003869
Breast Tumor	EFO:0003869
Tumors, Breast	EFO:0003869
BREAST NEOPL	EFO:0003869
Tumor, Breast	EFO:0003869
Breast Neoplasms	EFO:0003869
Neoplasm, Breast	EFO:0003869
Neoplasm, Human Mammary	EFO:0003869
Mammary Neoplasm, Human	EFO:0003869
Human Mammary Neoplasm	EFO:0003869
Neoplasms, Human Mammary	EFO:0003869
neoplasm, breast	EFO:0003869
breast neoplasm (disease)	EFO:0003869
tumor of the breast	EFO:0003869
NEOPL BREAST	EFO:0003869
brain edema	EFO:1000845
Brain Edema	EFO:1000845
intracranial swelling	EFO:1000845
wet brain	EFO:1000845
disease or disorder of brain	EFO:0005774
disease of brain	EFO:0005774
brain disease or disorder	EFO:0005774
brain disorder	EFO:0005774
disorder of brain	EFO:0005774
brain disease	EFO:0005774
Hypoxia-Ischemia, Brain	EFO:1000846
Ischemia, NOS	EFO:0000556
Ischemia (disorder)	EFO:0000556
Ischaemia, NOS	EFO:0000556
Ischemias	EFO:0000556
Ischaemia	EFO:0000556
brachial plexus neuritis	EFO:1000843
neuritis of brachial nerve plexus	EFO:1000843
Brachial neuritis (disorder)	EFO:1000843
Parsonage-Aldren-Turner syndrome	EFO:1000843
parsonage-Aldren-Turner syndrome	EFO:1000843
Brachial Plexus Neuritis	EFO:1000843
brachial nerve plexus neuritis	EFO:1000843
brachial neuritis	EFO:1000843
Brachial neuritis	EFO:1000843
brachial plexus disorder	EFO:1000844
peripheral neuropathy of brachial nerve plexus	EFO:1000844
brachial nerve plexus peripheral neuropathy	EFO:1000844
Brachial plexus disorder	EFO:1000844
brachial plexus neuropathy	EFO:1000844
brachial plexopathy	EFO:1000844
Brachial Plexus Neuropathies	EFO:1000844
peripheral neuritis	MONDO:0002122
nerve inflammation	MONDO:0002122
nerve plexus disease or disorder	EFO:0009559
plexopathy	EFO:0009559
nerve plexus disorder	EFO:0009559
disease or disorder of nerve plexus	EFO:0009559
disease of nerve plexus	EFO:0009559
disorder of nerve plexus	EFO:0009559
nerve plexus disease	EFO:0009559
Monosomy 17q23.1-q23.2	Orphanet:261279
Monosomy 17q23.1q23.2	Orphanet:261279
17q23.1-q23.2 microdeletion syndrome	Orphanet:261279
Del(17)(q23.1q23.2)	Orphanet:261279
carcinoid syndrome	EFO:1000852
malignant carcinoid syndrome	EFO:1000852
symptom clusters	MONDO:0002254
syndrome	MONDO:0002254
symptom cluster	MONDO:0002254
cluster, symptom	MONDO:0002254
syndromic disease	MONDO:0002254
clusters, symptom	MONDO:0002254
syndromic disease or disorder	MONDO:0002254
syndrome associated with disease or disorder	MONDO:0002254
syndromes	MONDO:0002254
carotid artery thrombosis	EFO:1000853
Carotid artery thrombosis	EFO:1000853
Carotid Artery Thrombosis	EFO:1000853
Carotid artery thrombosis (disorder)	EFO:1000853
disorder of carotid artery	EFO:0003781
carotid artery segment disease or disorder	EFO:0003781
Internal Carotid Artery Diseases	EFO:0003781
Arterial Diseases, Common Carotid	EFO:0003781
COMMON CAROTID ARTERY DIS	EFO:0003781
Artery Disease, Carotid	EFO:0003781
CAROTID ARTERY DIS	EFO:0003781
Arterial Disease, Carotid	EFO:0003781
External Carotid Artery Diseases	EFO:0003781
Carotid Artery Disorders	EFO:0003781
ARTERIAL DIS COMMON CAROTID	EFO:0003781
EXTERNAL CAROTID ARTERY DIS	EFO:0003781
Carotid Arterial Disease	EFO:0003781
carotid artery segment disease	EFO:0003781
carotid artery disorder	EFO:0003781
ARTERIAL DIS EXTERNAL CAROTID	EFO:0003781
Arterial Diseases, Carotid	EFO:0003781
Artery Disorder, Carotid	EFO:0003781
Carotid Arterial Diseases	EFO:0003781
Carotid Artery Diseases	EFO:0003781
Arterial Diseases, External Carotid	EFO:0003781
Artery Diseases, Carotid	EFO:0003781
disorder of carotid artery (disorder)	EFO:0003781
Arterial Diseases, Internal Carotid	EFO:0003781
ARTERIAL DIS CAROTID	EFO:0003781
Carotid Artery Disorder	EFO:0003781
INTERNAL CAROTID ARTERY DIS	EFO:0003781
ARTERIAL DIS INTERNAL CAROTID	EFO:0003781
Common Carotid Artery Diseases	EFO:0003781
disorder of carotid artery segment	EFO:0003781
Disorders, Carotid Artery	EFO:0003781
disease or disorder of carotid artery segment	EFO:0003781
Artery Disorders, Carotid	EFO:0003781
disease of carotid artery segment	EFO:0003781
cerebral thrombosis	MONDO:0002907
oral dysesthesia	EFO:1000850
burning mouth syndrome	EFO:1000850
Stomatopyrosis	EFO:1000850
Orodynia	EFO:1000850
BMS	EFO:1000850
Burning Mouth Syndrome	EFO:1000850
stomatodynia	EFO:1000850
oral cavity disease	EFO:1001047
mouth disease	EFO:1001047
disease or disorder of mouth	EFO:1001047
oral disorder	EFO:1001047
disorder of mouth	EFO:1001047
mouth disease or disorder	EFO:1001047
disease of the mouth	EFO:1001047
disease of mouth	EFO:1001047
oral disease	EFO:1001047
oral cavity disorder	EFO:1001047
mouth disorder	EFO:1001047
disorder of head (disorder)	EFO:0000524
head disease	EFO:0000524
Byssinosis	EFO:1000851
cotton mill fever	EFO:1000851
flax-dressers' disease	EFO:1000851
pneumoconiosis from cotton dust	EFO:1000851
stripper's asthma	EFO:1000851
Flax-dressers' disease	EFO:1000851
Stripper's asthma	EFO:1000851
cotton dust pneumoconiosis	EFO:1000851
byssinosis	EFO:1000851
Byssinosis (disorder)	EFO:1000851
Eukarya	NCBITaxon:2759
eucaryotes	NCBITaxon:2759
Eucaryotae	NCBITaxon:2759
cerebellar cancer	EFO:1000858
Cerebellar Neoplasms	EFO:1000858
malignant tumor of Cerebellum	EFO:1000858
PRIMARY BRAIN NEOPL	EFO:0003833
neoplasm of brain	EFO:0003833
Brain Tumor	EFO:0003833
brain neoplasms	EFO:0003833
Intracranial Neoplasm	EFO:0003833
Neoplasm, Brain	EFO:0003833
Recurrent Brain Tumor	EFO:0003833
Neoplasms, Brain	EFO:0003833
NEOPL BRAIN	EFO:0003833
brain neoplasm (disease)	EFO:0003833
Brain Neoplasms	EFO:0003833
Brain Tumors, Recurrent	EFO:0003833
NEOPL INTRACRANIAL	EFO:0003833
Neoplasms, Intracranial	EFO:0003833
tumor of the Brain	EFO:0003833
Intracranial Neoplasms	EFO:0003833
Recurrent Brain Tumors	EFO:0003833
Brain Tumor, Recurrent	EFO:0003833
tumor of brain	EFO:0003833
Neoplasm, Intracranial	EFO:0003833
Tumor, Brain	EFO:0003833
Brain Tumors	EFO:0003833
neoplasm of the brain	EFO:0003833
brain neoplasm	EFO:0003833
INTRACRANIAL NEOPL	EFO:0003833
brain tumor	EFO:0003833
Tumors, Brain	EFO:0003833
cerebral arterial disease	EFO:1000859
Cerebral Arterial Diseases	EFO:1000859
Intracranial Arterial Diseases	EFO:1000990
intracranial arterial disease	EFO:1000990
Neurolipocytoma	EFO:1000856
Neurocytoma	EFO:1000856
intraventricular neoplasm of brain	EFO:0007201
malignant brain ventricle neoplasm	EFO:0007201
malignant neoplasm of brain ventricle	EFO:0007201
cancer of brain ventricle	EFO:0007201
intraventricular neoplasms	EFO:0007201
brain neoplasms, intraventricular	EFO:0007201
intraventricular brain neoplasm	EFO:0007201
cerebral ventricle neoplasm	EFO:0007201
intraventricular brain neoplasms	EFO:0007201
intraventricular neoplasm of the brain	EFO:0007201
Intraventricular tumor of brain	EFO:0007201
intraventricular tumor of the brain	EFO:0007201
intraventricular tumor of brain	EFO:0007201
cerebral ventricle cancer	EFO:0007201
intraventricular brain tumor	EFO:0007201
brain ventricle cancer	EFO:0007201
Cerebral Ventricle Neoplasms	EFO:0007201
osmotic demyelination syndrome	EFO:1000857
central pontine myelinolysis (disorder)	EFO:1000857
Myelinolysis, Central Pontine	EFO:1000857
central pontine myelinolysis	EFO:1000857
central pontine myelinosis	EFO:1000857
demyelinating disorder	MONDO:0002562
Causalgia NOS	EFO:1000854
Complex regional pain syndrome, type II	EFO:1000854
Causalgia (disorder)	EFO:1000854
causalgia	EFO:1000854
Causalgia	EFO:1000854
CRPS II	EFO:1000854
Complex regional pain syndrome II	EFO:1000854
Complex regional pain syndrome, type II (disorder)	EFO:1000854
complex regional pain syndrome type 2	EFO:1000854
Complex regional pain syndromes	EFO:1001998
complex regional pain syndrome	EFO:1001998
Myopathy, Central Core	EFO:1000855
central core myopathy	EFO:1000855
central core disease	EFO:1000855
central core disease (disorder)	EFO:1000855
RYR1-related myopathy	MONDO:0100150
myofibrillar myopathy (disease)	MONDO:0018943
myofibrillar myopathy	MONDO:0018943
TPM2 myopathy	MONDO:0100196
autosomal dominant TPM2-related myopathy	MONDO:0100196
congenital myopathy related to TPM2	MONDO:0100196
TPM2-related myopathy	MONDO:0100196
Structural anomalies of the renal tract	HP:0012210
Kidney malformation	HP:0012210
Abnormally shaped kidney	HP:0012210
Renal malformation	HP:0012210
Structural renal anomalies	HP:0012210
Abnormal kidney morphology	HP:0012210
Structural kidney abnormalities	HP:0012210
Kidney structure issue	HP:0012210
Suminoe oyster	NCBITaxon:94323
Crassostrea ariakensis (Fujita, 1913)	NCBITaxon:94323
Crassostrea ariakesis	NCBITaxon:94323
Monosomy 17q12	Orphanet:261265
Del(17)(q12)	Orphanet:261265
Partial autosomal deletion	Orphanet:98142
connected biological structure	UBERON:0000061
biological structure	UBERON:0000061
ginger	NCBITaxon:94328
green plants	NCBITaxon:33090
Chlamydia caused disease or disorder	EFO:1000863
Chlamydia infectious disease	EFO:1000863
Chlamydophila Infections	EFO:1000863
Chlamydia disease or disorder	EFO:1000863
Chlamydophila disease or disorder	EFO:1000863
Chlamydophila caused disease or disorder	EFO:1000863
chlamydia infectious disease	EFO:1000863
bacterial sexually transmitted disease	EFO:0003955
Venereal Disease, Bacterial	EFO:0003955
Sexually Transmitted Diseases, Bacterial	EFO:0003955
Bacterial Venereal Disease	EFO:0003955
Disease, Bacterial Venereal	EFO:0003955
Venereal Diseases, Bacterial	EFO:0003955
BACT VENEREAL DIS	EFO:0003955
BACT SEX TRANSM DIS	EFO:0003955
Diseases, Bacterial Venereal	EFO:0003955
VENEREAL DIS BACT	EFO:0003955
Bacterial Venereal Diseases	EFO:0003955
Sexually Transmitted Disease, Bacterial	EFO:0003955
SEX TRANSM DIS BACT	EFO:0003955
Bacterial Sexually Transmitted Diseases	EFO:0003955
chlamydiaceae infections	EFO:1001288
cholecystolithiasis	EFO:1000864
Cholecystolithiasis	EFO:1000864
gallbladder disorder	EFO:0003832
Bladder Disease, Gall	EFO:0003832
Gallbladder Disease	EFO:0003832
GALL BLADDER DIS	EFO:0003832
disease of gall bladder	EFO:0003832
Disease, Gallbladder	EFO:0003832
disease or disorder of gall bladder	EFO:0003832
Diseases, Gallbladder	EFO:0003832
gall bladder disease	EFO:0003832
Bladder Diseases, Gall	EFO:0003832
Gall bladder disorder	EFO:0003832
GALLBLADDER DIS	EFO:0003832
gall bladder disease or disorder	EFO:0003832
Diseases, Gall Bladder	EFO:0003832
Gall Bladder Diseases	EFO:0003832
Disease, Gall Bladder	EFO:0003832
disorder of gall bladder	EFO:0003832
Gallbladder Diseases	EFO:0003832
Arterial thoracic outlet syndrome due to cervical rib	EFO:1000861
Cervical Rib Syndrome	EFO:1000861
TOS	EFO:0007507
Thoracic Outlet Syndrome	EFO:0007507
TOS - thoracic outlet syndrome	EFO:0007507
TOS - Thoracic outlet syndrome	EFO:0007507
thoracic outlet syndrome	EFO:0007507
thoracic outlet compression syndrome	EFO:0007507
Erosion of cervix	EFO:1000862
cervix erosion	EFO:1000862
Erosion of cervix (disorder)	EFO:1000862
Uterine Cervical Erosion	EFO:1000862
erosion of cervix	EFO:1000862
disease or disorder of uterine cervix	MONDO:0002256
uterine cervix disease or disorder	MONDO:0002256
disease of uterine cervix	MONDO:0002256
uterine cervix disease	MONDO:0002256
disorder of uterine cervix	MONDO:0002256
cervical disorder	MONDO:0002256
\.


--
-- Data for Name: synonyms; Type: TABLE DATA; Schema: dbo; Owner: codingtest
--

COPY dbo.synonyms (name) FROM stdin;
Bile Reflux
bile reflux
biliary tree disease
biliary tract disorder
disorder of biliary tree
disease or disorder of biliary tree
disease of biliary tree
biliary tree disease or disorder
bladder stone
vesical calculi
bladder stones
bladder calculus
Urinary Bladder Calculi
cystoliths
disorder of urinary bladder
bladder disease
disease of urinary bladder
disease or disorder of urinary bladder
urinary bladder disease or disorder
urinary bladder disorder
bladder disorder
urinary bladder disease
urolithiasis of lower urinary tract
lower urinary tract urolithiasis
BMH
benign monoclonal gammopathy (disorder)
benign Monoclonal Gammopathy
Monoclonal Gammopathy of Undetermined Significance
Monoclonal gammopathy of uncertain significance
Paraproteinaemia
Monoclonal Gammopathy of Unknown Significance
Monoclonal Gammopathy Of Undetermined Significance (MGUS)
Benign Monoclonal Gammopathy
MGUS - Monoclonal gammopathy of uncertain significance
Monoclonal gammopathy of undetermined significance
Monoclonal gammopathy of uncertain significance (disorder)
monoclonal gammopathy
Monoclonal gammopathy of undetermined significance (morphologic abnormality)
MGUS
Paraproteinemia
thiamine deficiency
beriberi
vitamin B1 deficiency
Beriberi
Beri Beri
mucoid cell adenoma
pituitary basophilic adenoma
pituitary gland basophil adenoma
basophilic pituitary gland adenoma
basophilic adenoma
pituitary gland basophilic adenoma
lymphomas and hemopoietic neoplasms of CNS
CNS hematopoietic tumor
lymphomas and hemopoietic neoplasms of the CNS
central nervous system hematopoietic and lymphoid system neoplasm
central nervous system hematopoietic neoplasm
central nervous system hematopoietic tumor
hematopoietic neoplasm of central nervous system
hematopoietic tumor of central nervous system
hematopoietic neoplasm of the central nervous system
CNS hematopoietic neoplasm
central nervous system hematopoietic neoplasms
hematopoietic tumor of the central nervous system
hematopoietic neoplasm of the CNS
hematopoietic and lymphoid system neoplasm of central nervous system
hematopoietic neoplasm of CNS
pituitary adenoma
pituitary gland adenoma
adenoma of the pituitary gland
adenoma of pituitary gland
adenoma, anterior lobe pituitary gland, benign
adenoma of the pituitary
adenoma of pituitary
leukocyte disorder
disease or disorder of leukocyte
disorders, leukocyte
disease of leukocyte
white blood cell disorder
leukocyte disease or disorder
leukocyte disease
disorder of leukocyte
disorder, leukocyte
benign fibrous mesothelioma
fibrous mesothelioma, benign (morphologic abnormality)
localized benign fibrous mesothelioma
fibrous mesothelioma, benign
benign neoplasm
benign neoplasm (disease)
neoplasm (disease), benign
mesothelioma
Bacteroides disease or disorder
Bacteroides caused disease or disorder
Bacteroides Infections
infection due to Bacteroides
Bacteroides infectious disease
anaerobic bacterial infection
infection due to anaerobic bacteria
infection caused by anaerobic bacteria
Bacteroidaceae disease or disorder
Bacteroidaceae infectious disease
Bacteroidaceae caused disease or disorder
Bacteroidaceae Infections
Balanitis [Ambiguous]
balanitis
Balanitis (disorder)
Balanitis
glans penis inflammation
inflammation of glans penis
disease or disorder of penis
disorder of penis
penile disorder
penis disease or disorder
penis disease
penile disease
disease of penis
inflammatory disorder
anatomical structure inflammation
inflammation of anatomical structure
inflammatory disease
yeasts
blue skin Nevus
blue nevus
blue Nevus of the skin
blue Nevus of skin
mole
melanocytic Nevus
melanocytic nevus
nevus
melanotic Nevus
mole of skin
Borreliosis, NOS
Borrelia caused disease or disorder
Borrelia Infections
Borrelia disease or disorder
Borreliosis (disorder)
Borrelia infectious disease
borreliosis
Infection, Spirochete
SPIROCHETE INFECT
Spirochetal infection
Spirochete Infections
Infections, Spirochete
Spirochete Infection
Infection, Spirochaetales
Infections, Spirochaetales
Spirochaetales Infections
INFECT SPIROCHAETALES
SPIROCHAETALES INFECT
Spirochaetales Infection
INFECT SPIROCHETE
spirochaetales infections
Spirochetosis
bladder neck obstruction
bladder neck obstruction (disorder)
obstruction of bladder neck or vesicourethral orifice
Obstruction of bladder neck or vesicourethral orifice
Urinary Bladder Neck Obstruction
Bronchial Neoplasms
tumor of bronchus
neoplasm of bronchus
bronchus neoplasm (disease)
bronchial neoplasm (disease)
bronchial neoplasm
bronchus neoplasm
bronchus tumor
neoplasm of bronchus (disorder)
bronchus disease or disorder
bronchus disease
bronchial disorder
disease or disorder of bronchus
disease of bronchus
bronchospasm
disorder of bronchus
neoplasm of the respiratory tract
respiratory tract neoplasm
tumor of the respiratory tract
neoplasm of respiratory tract
respiratory system neoplasm
tract neoplasms, respiratory
neoplasms, respiratory tract
Neoplasms, Respiratory Tract
neoplasm, respiratory tract
tract neoplasm, respiratory
Respiratory Tract Neoplasms
Respiratory Tract Neoplasm
RESPIRATORY TRACT NEOPL
Tract Neoplasm, Respiratory
Tract Neoplasms, Respiratory
tumor of respiratory tract
Neoplasm, Respiratory Tract
respiratory tract tumor
Dup(17)(q12)
Trisomy 17q12
brainstem infarction
brain stem infarction
Brainstem infarction NOS
brain infarction of brainstem
brain stem infarction (disorder)
brainstem brain infarction
Brain Stem Infarctions
Brainstem infarction
Brainstem infarction NOS (disorder)
Venous Brain Infarctions
Posterior Circulation Infarction, Brain
Lacunar Infarction
INFARCT ANTERIOR CEREBRAL CIRC
Lacunar Infarctions
Brain Infarction, Posterior Circulation
Infarctions, Lacunar
Infarction, Brain, Anterior Circulation
Posterior Circulation Brain Infarction
POSTERIOR CIRC BRAIN INFARCT
Infarction, Brain
Brain Infarctions
INFARCT BRAIN POSTERIOR CIRC
Infarction, Brain, Posterior Circulation
Infarction, Posterior Circulation, Brain
Infarction, Anterior Cerebral Circulation
Infarction, Lacunar
Brain Infarction
Venous Infarction, Brain
ANTERIOR CIRC BRAIN INFARCT
brain infarction
Brain Infarctions, Venous
VENOUS INFARCT BRAIN
Venous Brain Infarction
BRAIN INFARCT
INFARCT ANTERIOR CIRC BRAIN
ANTERIOR CIRC INFARCT BRAIN
Anterior Circulation Brain Infarction
Infarction, Brain Venous
POSTERIOR CIRC INFARCT BRAIN
Brain Venous Infarction
Infarction, Anterior Circulation, Brain
Brain Venous Infarctions
ANTERIOR CEREBRAL CIRC INFARCT
Brain Infarction, Venous
BRAIN INFARCT POSTERIOR CIRC
Infarctions, Venous Brain
Brain Infarction, Anterior Circulation
BRAIN INFARCT ANTERIOR CIRC
INFARCT LACUNAR
Infarctions, Brain Venous
Venous Infarctions, Brain
Anterior Cerebral Circulation Infarction
BRAIN INFARCT VENOUS
INFARCT POSTERIOR CIRC BRAIN
Anterior Circulation Infarction, Brain
INFARCT BRAIN ANTERIOR CIRC
Infarction, Venous Brain
Infarctions, Brain
Cyst of the breast
Cyst of breast (disorder)
Breast Cyst
Cyst of breast
Neoplasms, Breast
Breast Tumors
neoplasm of breast
tumor of breast
Mammary Neoplasms, Human
breast tumor
neoplasm of the breast
Human Mammary Neoplasms
breast neoplasm
Breast Tumor
Tumors, Breast
BREAST NEOPL
Tumor, Breast
Breast Neoplasms
Neoplasm, Breast
Neoplasm, Human Mammary
Mammary Neoplasm, Human
Human Mammary Neoplasm
Neoplasms, Human Mammary
neoplasm, breast
breast neoplasm (disease)
tumor of the breast
NEOPL BREAST
brain edema
Brain Edema
intracranial swelling
wet brain
disease or disorder of brain
disease of brain
brain disease or disorder
brain disorder
disorder of brain
brain disease
Hypoxia-Ischemia, Brain
Ischemia, NOS
Ischemia (disorder)
Ischaemia, NOS
Ischemias
Ischaemia
brachial plexus neuritis
neuritis of brachial nerve plexus
Brachial neuritis (disorder)
Parsonage-Aldren-Turner syndrome
parsonage-Aldren-Turner syndrome
Brachial Plexus Neuritis
brachial nerve plexus neuritis
brachial neuritis
Brachial neuritis
brachial plexus disorder
peripheral neuropathy of brachial nerve plexus
brachial nerve plexus peripheral neuropathy
Brachial plexus disorder
brachial plexus neuropathy
brachial plexopathy
Brachial Plexus Neuropathies
peripheral neuritis
nerve inflammation
nerve plexus disease or disorder
plexopathy
nerve plexus disorder
disease or disorder of nerve plexus
disease of nerve plexus
disorder of nerve plexus
nerve plexus disease
Monosomy 17q23.1-q23.2
Monosomy 17q23.1q23.2
17q23.1-q23.2 microdeletion syndrome
Del(17)(q23.1q23.2)
carcinoid syndrome
malignant carcinoid syndrome
symptom clusters
syndrome
symptom cluster
cluster, symptom
syndromic disease
clusters, symptom
syndromic disease or disorder
syndrome associated with disease or disorder
syndromes
carotid artery thrombosis
Carotid artery thrombosis
Carotid Artery Thrombosis
Carotid artery thrombosis (disorder)
disorder of carotid artery
carotid artery segment disease or disorder
Internal Carotid Artery Diseases
Arterial Diseases, Common Carotid
COMMON CAROTID ARTERY DIS
Artery Disease, Carotid
CAROTID ARTERY DIS
Arterial Disease, Carotid
External Carotid Artery Diseases
Carotid Artery Disorders
ARTERIAL DIS COMMON CAROTID
EXTERNAL CAROTID ARTERY DIS
Carotid Arterial Disease
carotid artery segment disease
carotid artery disorder
ARTERIAL DIS EXTERNAL CAROTID
Arterial Diseases, Carotid
Artery Disorder, Carotid
Carotid Arterial Diseases
Carotid Artery Diseases
Arterial Diseases, External Carotid
Artery Diseases, Carotid
disorder of carotid artery (disorder)
Arterial Diseases, Internal Carotid
ARTERIAL DIS CAROTID
Carotid Artery Disorder
INTERNAL CAROTID ARTERY DIS
ARTERIAL DIS INTERNAL CAROTID
Common Carotid Artery Diseases
disorder of carotid artery segment
Disorders, Carotid Artery
disease or disorder of carotid artery segment
Artery Disorders, Carotid
disease of carotid artery segment
cerebral thrombosis
oral dysesthesia
burning mouth syndrome
Stomatopyrosis
Orodynia
BMS
Burning Mouth Syndrome
stomatodynia
oral cavity disease
mouth disease
disease or disorder of mouth
oral disorder
disorder of mouth
mouth disease or disorder
disease of the mouth
disease of mouth
oral disease
oral cavity disorder
mouth disorder
disorder of head (disorder)
head disease
Byssinosis
cotton mill fever
flax-dressers' disease
pneumoconiosis from cotton dust
stripper's asthma
Flax-dressers' disease
Stripper's asthma
cotton dust pneumoconiosis
byssinosis
Byssinosis (disorder)
Eukarya
eucaryotes
Eucaryotae
cerebellar cancer
Cerebellar Neoplasms
malignant tumor of Cerebellum
PRIMARY BRAIN NEOPL
neoplasm of brain
Brain Tumor
brain neoplasms
Intracranial Neoplasm
Neoplasm, Brain
Recurrent Brain Tumor
Neoplasms, Brain
NEOPL BRAIN
brain neoplasm (disease)
Brain Neoplasms
Brain Tumors, Recurrent
NEOPL INTRACRANIAL
Neoplasms, Intracranial
tumor of the Brain
Intracranial Neoplasms
Recurrent Brain Tumors
Brain Tumor, Recurrent
tumor of brain
Neoplasm, Intracranial
Tumor, Brain
Brain Tumors
neoplasm of the brain
brain neoplasm
INTRACRANIAL NEOPL
brain tumor
Tumors, Brain
cerebral arterial disease
Cerebral Arterial Diseases
Intracranial Arterial Diseases
intracranial arterial disease
Neurolipocytoma
Neurocytoma
intraventricular neoplasm of brain
malignant brain ventricle neoplasm
malignant neoplasm of brain ventricle
cancer of brain ventricle
intraventricular neoplasms
brain neoplasms, intraventricular
intraventricular brain neoplasm
cerebral ventricle neoplasm
intraventricular brain neoplasms
intraventricular neoplasm of the brain
Intraventricular tumor of brain
intraventricular tumor of the brain
intraventricular tumor of brain
cerebral ventricle cancer
intraventricular brain tumor
brain ventricle cancer
Cerebral Ventricle Neoplasms
osmotic demyelination syndrome
central pontine myelinolysis (disorder)
Myelinolysis, Central Pontine
central pontine myelinolysis
central pontine myelinosis
demyelinating disorder
Causalgia NOS
Complex regional pain syndrome, type II
Causalgia (disorder)
causalgia
Causalgia
CRPS II
Complex regional pain syndrome II
Complex regional pain syndrome, type II (disorder)
complex regional pain syndrome type 2
Complex regional pain syndromes
complex regional pain syndrome
Myopathy, Central Core
central core myopathy
central core disease
central core disease (disorder)
RYR1-related myopathy
myofibrillar myopathy (disease)
myofibrillar myopathy
TPM2 myopathy
autosomal dominant TPM2-related myopathy
congenital myopathy related to TPM2
TPM2-related myopathy
Structural anomalies of the renal tract
Kidney malformation
Abnormally shaped kidney
Renal malformation
Structural renal anomalies
Abnormal kidney morphology
Structural kidney abnormalities
Kidney structure issue
Suminoe oyster
Crassostrea ariakensis (Fujita, 1913)
Crassostrea ariakesis
Monosomy 17q12
Del(17)(q12)
Partial autosomal deletion
connected biological structure
biological structure
ginger
green plants
Chlamydia caused disease or disorder
Chlamydia infectious disease
Chlamydophila Infections
Chlamydia disease or disorder
Chlamydophila disease or disorder
Chlamydophila caused disease or disorder
chlamydia infectious disease
bacterial sexually transmitted disease
Venereal Disease, Bacterial
Sexually Transmitted Diseases, Bacterial
Bacterial Venereal Disease
Disease, Bacterial Venereal
Venereal Diseases, Bacterial
BACT VENEREAL DIS
BACT SEX TRANSM DIS
Diseases, Bacterial Venereal
VENEREAL DIS BACT
Bacterial Venereal Diseases
Sexually Transmitted Disease, Bacterial
SEX TRANSM DIS BACT
Bacterial Sexually Transmitted Diseases
chlamydiaceae infections
cholecystolithiasis
Cholecystolithiasis
gallbladder disorder
Bladder Disease, Gall
Gallbladder Disease
GALL BLADDER DIS
disease of gall bladder
Disease, Gallbladder
disease or disorder of gall bladder
Diseases, Gallbladder
gall bladder disease
Bladder Diseases, Gall
Gall bladder disorder
GALLBLADDER DIS
gall bladder disease or disorder
Diseases, Gall Bladder
Gall Bladder Diseases
Disease, Gall Bladder
disorder of gall bladder
Gallbladder Diseases
Arterial thoracic outlet syndrome due to cervical rib
Cervical Rib Syndrome
TOS
Thoracic Outlet Syndrome
TOS - thoracic outlet syndrome
TOS - Thoracic outlet syndrome
thoracic outlet syndrome
thoracic outlet compression syndrome
Erosion of cervix
cervix erosion
Erosion of cervix (disorder)
Uterine Cervical Erosion
erosion of cervix
disease or disorder of uterine cervix
uterine cervix disease or disorder
disease of uterine cervix
uterine cervix disease
disorder of uterine cervix
cervical disorder
\.


--
-- Name: efo_terms efo_terms_pkey; Type: CONSTRAINT; Schema: dbo; Owner: codingtest
--

ALTER TABLE ONLY dbo.efo_terms
    ADD CONSTRAINT efo_terms_pkey PRIMARY KEY (id);


--
-- Name: parent_children parents_children_pkey; Type: CONSTRAINT; Schema: dbo; Owner: codingtest
--

ALTER TABLE ONLY dbo.parent_children
    ADD CONSTRAINT parents_children_pkey PRIMARY KEY (parent_id, child_id);


--
-- Name: mesh_terms prim_key_const; Type: CONSTRAINT; Schema: dbo; Owner: codingtest
--

ALTER TABLE ONLY dbo.mesh_terms
    ADD CONSTRAINT prim_key_const PRIMARY KEY (mesh_id) INCLUDE (mesh_id);


--
-- Name: synonym_terms prim_keys; Type: CONSTRAINT; Schema: dbo; Owner: codingtest
--

ALTER TABLE ONLY dbo.synonym_terms
    ADD CONSTRAINT prim_keys PRIMARY KEY (name, term_id) INCLUDE (name, term_id);


--
-- Name: synonyms synonyms_pkey; Type: CONSTRAINT; Schema: dbo; Owner: codingtest
--

ALTER TABLE ONLY dbo.synonyms
    ADD CONSTRAINT synonyms_pkey PRIMARY KEY (name);


--
-- Name: parent_children child_key; Type: FK CONSTRAINT; Schema: dbo; Owner: codingtest
--

ALTER TABLE ONLY dbo.parent_children
    ADD CONSTRAINT child_key FOREIGN KEY (child_id) REFERENCES dbo.efo_terms(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: synonym_terms efo_term_id_foreign; Type: FK CONSTRAINT; Schema: dbo; Owner: codingtest
--

ALTER TABLE ONLY dbo.synonym_terms
    ADD CONSTRAINT efo_term_id_foreign FOREIGN KEY (term_id) REFERENCES dbo.efo_terms(id) NOT VALID;


--
-- Name: mesh_terms term_id_key; Type: FK CONSTRAINT; Schema: dbo; Owner: codingtest
--

ALTER TABLE ONLY dbo.mesh_terms
    ADD CONSTRAINT term_id_key FOREIGN KEY (term_id) REFERENCES dbo.efo_terms(id);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: codingtest
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO codingtest;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: codingtest
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

