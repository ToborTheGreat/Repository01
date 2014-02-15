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

ALTER TABLE ONLY toolkit.etl_lsm DROP CONSTRAINT etl_lsm_pkey;
DROP TABLE toolkit.etl_lsm;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: etl_lsm; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE etl_lsm (
    lsm_name character varying(30) NOT NULL,
    ip_address character varying(20),
    login character varying(30),
    pwd character varying(30),
    enabled character(1)
);


--
-- Name: etl_lsm_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY etl_lsm
    ADD CONSTRAINT etl_lsm_pkey PRIMARY KEY (lsm_name);


--
-- PostgreSQL database dump complete
--

