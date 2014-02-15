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

ALTER TABLE ONLY xops.sovu_work_columns DROP CONSTRAINT sovu_work_columns_pk;
DROP TABLE xops.sovu_work_columns;
SET search_path = xops, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sovu_work_columns; Type: TABLE; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sovu_work_columns (
    schema_name text NOT NULL,
    table_name text NOT NULL,
    parent_name text,
    column_name text NOT NULL,
    column_hash text,
    parent_hash text
);


--
-- Name: sovu_work_columns_pk; Type: CONSTRAINT; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sovu_work_columns
    ADD CONSTRAINT sovu_work_columns_pk PRIMARY KEY (schema_name, table_name, column_name);


--
-- PostgreSQL database dump complete
--

