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

ALTER TABLE ONLY toolkit.bsc_sam_topo DROP CONSTRAINT bsc_sam_topo_pk;
DROP TABLE toolkit.bsc_sam_topo;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: bsc_sam_topo; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE bsc_sam_topo (
    market character varying(50) NOT NULL,
    new_bsc_name character varying(30) NOT NULL,
    hull_geoloc public.geometry,
    area_geoloc public.geometry
);


--
-- Name: bsc_sam_topo_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY bsc_sam_topo
    ADD CONSTRAINT bsc_sam_topo_pk PRIMARY KEY (market, new_bsc_name);


--
-- PostgreSQL database dump complete
--

