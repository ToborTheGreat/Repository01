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

ALTER TABLE ONLY xops.sovu_work_indexes DROP CONSTRAINT souv_work_index_pk;
DROP TABLE xops.sovu_work_indexes;
SET search_path = xops, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sovu_work_indexes; Type: TABLE; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sovu_work_indexes (
    schema_name text NOT NULL,
    table_name text NOT NULL,
    index_name text NOT NULL,
    index_def text
);


--
-- Name: souv_work_index_pk; Type: CONSTRAINT; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sovu_work_indexes
    ADD CONSTRAINT souv_work_index_pk PRIMARY KEY (schema_name, table_name, index_name);


--
-- PostgreSQL database dump complete
--

