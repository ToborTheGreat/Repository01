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

DROP TABLE toolkit.legacy_bsc_rules;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: legacy_bsc_rules; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE legacy_bsc_rules (
    ninetynine_market character varying(50) NOT NULL,
    switch character varying(50) NOT NULL,
    bsc character varying(50) NOT NULL,
    sector_offset integer NOT NULL,
    rncmanagername character varying(30)
);


--
-- PostgreSQL database dump complete
--

