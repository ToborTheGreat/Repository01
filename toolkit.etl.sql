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

ALTER TABLE ONLY toolkit.etl DROP CONSTRAINT etl_pkey;
DROP TABLE toolkit.etl;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: etl; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE etl (
    item_date date NOT NULL,
    doit integer DEFAULT 1 NOT NULL
);


--
-- Name: etl_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY etl
    ADD CONSTRAINT etl_pkey PRIMARY KEY (item_date);


--
-- PostgreSQL database dump complete
--

