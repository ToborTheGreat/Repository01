--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = sm_om, pg_catalog;

ALTER TABLE ONLY sm_om.om_catalog_col_mapping DROP CONSTRAINT om_catalog_col_mapping_pkey;
DROP TABLE sm_om.om_catalog_col_mapping;
SET search_path = sm_om, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: om_catalog_col_mapping; Type: TABLE; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE om_catalog_col_mapping (
    schema_name character varying(30) NOT NULL,
    table_name character varying(50) NOT NULL,
    market_col_name character varying(30),
    bsc_col_name character varying(30),
    cluster_col_name character varying(30),
    bts_col_name character varying(30),
    date_col_name character varying(30),
    cascade_col_name character varying(30),
    sector_col_name character varying(30),
    switch_col_name character varying(30)
);


--
-- Name: om_catalog_col_mapping_pkey; Type: CONSTRAINT; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY om_catalog_col_mapping
    ADD CONSTRAINT om_catalog_col_mapping_pkey PRIMARY KEY (schema_name, table_name);


--
-- PostgreSQL database dump complete
--

