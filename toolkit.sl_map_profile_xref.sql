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

ALTER TABLE ONLY toolkit.sl_map_profile_xref DROP CONSTRAINT sl_map_profile_xref_pkey;
DROP TABLE toolkit.sl_map_profile_xref;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: sl_map_profile_xref; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE sl_map_profile_xref (
    sl_map_profile_xref_id integer DEFAULT nextval('sl_map_profile_xref_sl_map_profile_xref_id_seq'::regclass) NOT NULL,
    xref character varying(32) NOT NULL,
    geo_type character varying(32) NOT NULL,
    map_xref character varying(32) NOT NULL,
    enabled character(1) DEFAULT 'Y'::bpchar NOT NULL,
    show_all integer
);


--
-- Name: sl_map_profile_xref_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY sl_map_profile_xref
    ADD CONSTRAINT sl_map_profile_xref_pkey PRIMARY KEY (sl_map_profile_xref_id);


--
-- PostgreSQL database dump complete
--

