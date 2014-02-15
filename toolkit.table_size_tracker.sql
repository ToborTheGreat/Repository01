--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = toolkit, pg_catalog;

ALTER TABLE ONLY toolkit.table_size_tracker DROP CONSTRAINT table_size_tracker_pk;
DROP TABLE toolkit.table_size_tracker;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: table_size_tracker; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE table_size_tracker (
    item_dt date NOT NULL,
    table_schema character varying NOT NULL,
    table_name character varying NOT NULL,
    table_bytes bigint NOT NULL
);


--
-- Name: table_size_tracker_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY table_size_tracker
    ADD CONSTRAINT table_size_tracker_pk PRIMARY KEY (item_dt, table_schema, table_name, table_bytes);


--
-- PostgreSQL database dump complete
--

