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

DROP INDEX toolkit.legacy_topo_staging_idx;
DROP TABLE toolkit.legacy_topo_staging;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: legacy_topo_staging; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE legacy_topo_staging (
    market99 character varying(50),
    area character varying(50),
    region character varying(50),
    cascade_id character varying(20),
    atc_replacement character varying(50),
    current_vendor character varying(20),
    approved_vendor character varying(20),
    cell_id integer,
    sector integer,
    cdma_freq integer,
    ant_lat double precision,
    ant_lon double precision,
    structure_type character varying(50),
    switch_name character varying(50),
    bsc_name character varying(50),
    rnc_name character varying(50),
    bts_id_legacy integer,
    nsc_clli character varying(50),
    pn_offset integer,
    site_geoloc public.geometry
);


--
-- Name: legacy_topo_staging_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX legacy_topo_staging_idx ON legacy_topo_staging USING btree (cascade_id);


--
-- PostgreSQL database dump complete
--

