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

ALTER TABLE ONLY xops.agg_assembly DROP CONSTRAINT agg_assembly_pk;
DROP TABLE xops.agg_assembly;
SET search_path = xops, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: agg_assembly; Type: TABLE; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE agg_assembly (
    agg_name character varying(128) NOT NULL,
    agg_id integer,
    agg_sql text,
    component_type character varying(32),
    schema character varying(32),
    build_order integer
);


--
-- Name: agg_assembly_pk; Type: CONSTRAINT; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY agg_assembly
    ADD CONSTRAINT agg_assembly_pk PRIMARY KEY (agg_name);


--
-- PostgreSQL database dump complete
--

