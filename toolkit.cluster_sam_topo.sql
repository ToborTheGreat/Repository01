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

ALTER TABLE ONLY toolkit.cluster_sam_topo DROP CONSTRAINT cluster_sam_topo_pk;
DROP TABLE toolkit.cluster_sam_topo;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: cluster_sam_topo; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE cluster_sam_topo (
    market character varying(50) NOT NULL,
    cluster character varying(50) NOT NULL,
    hull_geoloc public.geometry,
    area_geoloc public.geometry
);


--
-- Name: cluster_sam_topo_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY cluster_sam_topo
    ADD CONSTRAINT cluster_sam_topo_pk PRIMARY KEY (market, cluster);


--
-- PostgreSQL database dump complete
--

