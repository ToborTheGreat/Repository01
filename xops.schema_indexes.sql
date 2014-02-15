--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = xops, pg_catalog;

ALTER TABLE ONLY xops.schema_indexes DROP CONSTRAINT work_indexes_pk;
DROP TABLE xops.schema_indexes;
SET search_path = xops, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: schema_indexes; Type: TABLE; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE schema_indexes (
    schema_name text NOT NULL,
    table_name text NOT NULL,
    index_name text NOT NULL,
    tablespace_name text,
    index_def text
);


--
-- Name: work_indexes_pk; Type: CONSTRAINT; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY schema_indexes
    ADD CONSTRAINT work_indexes_pk PRIMARY KEY (schema_name, table_name, index_name);


--
-- PostgreSQL database dump complete
--

