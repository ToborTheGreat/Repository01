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

DROP TABLE toolkit.legacy_topo_alt_pn_list;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: legacy_topo_alt_pn_list; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE legacy_topo_alt_pn_list (
    cascade_id character varying(20) NOT NULL,
    sector integer NOT NULL,
    pn_offset integer NOT NULL
);


--
-- PostgreSQL database dump complete
--

