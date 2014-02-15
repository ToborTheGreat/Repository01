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

DROP INDEX toolkit.sector_sam_topo_idx2;
DROP INDEX toolkit.sector_sam_topo_idx1;
DROP INDEX toolkit.sector_sam_topo_idx;
ALTER TABLE ONLY toolkit.sector_sam_topo DROP CONSTRAINT sector_sam_topo_pk;
DROP TABLE toolkit.sector_sam_topo;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: sector_sam_topo; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE sector_sam_topo (
    market character varying(50) NOT NULL,
    cascade_id character varying(30) NOT NULL,
    new_bsc_name character varying(30) NOT NULL,
    new_bts_id integer NOT NULL,
    sector integer NOT NULL,
    azimuth integer,
    pn_offset integer,
    sector_alias integer,
    lat double precision,
    lng double precision,
    avg_tier1_dist real,
    site_geoloc public.geometry,
    sector_geoloc_poi public.geometry
);


--
-- Name: sector_sam_topo_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY sector_sam_topo
    ADD CONSTRAINT sector_sam_topo_pk PRIMARY KEY (market, cascade_id, new_bsc_name, new_bts_id, sector);


--
-- Name: sector_sam_topo_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sector_sam_topo_idx ON sector_sam_topo USING btree (new_bsc_name, new_bts_id);


--
-- Name: sector_sam_topo_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sector_sam_topo_idx1 ON sector_sam_topo USING btree (cascade_id);


--
-- Name: sector_sam_topo_idx2; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sector_sam_topo_idx2 ON sector_sam_topo USING btree (market);


--
-- PostgreSQL database dump complete
--

