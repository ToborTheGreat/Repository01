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

DROP TABLE toolkit.sam_topo_bak_03222013;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: sam_topo_bak_03222013; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE sam_topo_bak_03222013 (
    cascade_id character varying(30),
    nsc_clli character varying(50),
    new_switch_name character varying(100),
    new_bsc_name character varying(30),
    new_rnc_name character varying(50),
    cluster_name character varying(100),
    new_bts_id integer,
    sector integer,
    carrier integer,
    band integer,
    market character varying(50),
    lat double precision,
    lng double precision,
    azimuth integer,
    agl integer,
    avg_tier1_dist real,
    site_geoloc public.geometry,
    sector_geoloc_poi public.geometry,
    pn_offset integer,
    sector_alias integer,
    row_checksum character varying(1000)
);


--
-- PostgreSQL database dump complete
--

