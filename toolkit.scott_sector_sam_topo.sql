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

DROP TABLE toolkit.scott_sector_sam_topo;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: scott_sector_sam_topo; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE scott_sector_sam_topo (
    market character varying(50),
    cascade_id character varying(30),
    new_bsc_name character varying(30),
    new_bts_id integer,
    sector integer,
    azimuth integer,
    pn_offset integer,
    sector_alias integer,
    lat double precision,
    lng double precision,
    avg_tier1_dist real,
    site_geoloc public.geometry
);


--
-- PostgreSQL database dump complete
--

