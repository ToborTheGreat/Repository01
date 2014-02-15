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

DROP TABLE toolkit.sam_bsc_hierarachy;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: sam_bsc_hierarachy; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE sam_bsc_hierarachy (
    market character varying(30) NOT NULL,
    bsc_name character varying(20) NOT NULL,
    bsc integer NOT NULL,
    bts integer NOT NULL,
    sector integer NOT NULL,
    fa_index integer NOT NULL,
    fa_kind character varying(12) NOT NULL,
    fa_id integer NOT NULL,
    fa_num integer NOT NULL,
    band_class character varying(10) NOT NULL,
    nid integer NOT NULL,
    pn_offset integer NOT NULL,
    last_modified timestamp(0) without time zone DEFAULT now() NOT NULL
);


--
-- PostgreSQL database dump complete
--

