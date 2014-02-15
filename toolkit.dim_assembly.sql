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

ALTER TABLE ONLY toolkit.dim_assembly DROP CONSTRAINT dim_assembly_pk;
DROP TABLE toolkit.dim_assembly;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: dim_assembly; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE dim_assembly (
    dim_parent character varying(128) NOT NULL,
    parent_id integer,
    dim_sql text
);


--
-- Name: dim_assembly_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY dim_assembly
    ADD CONSTRAINT dim_assembly_pk PRIMARY KEY (dim_parent);


--
-- PostgreSQL database dump complete
--

