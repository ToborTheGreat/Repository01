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

DROP INDEX toolkit.site_sam_topo_idx1;
DROP INDEX toolkit.site_sam_topo_idx;
DROP TABLE toolkit.site_sam_topo;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: site_sam_topo; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE site_sam_topo (
    market character varying(50),
    cascade_id character varying(30),
    lat double precision,
    lng double precision,
    avg_tier1_dist real,
    site_geoloc public.geometry,
    new_bsc_name character varying(30) NOT NULL
);


--
-- Name: site_sam_topo_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX site_sam_topo_idx ON site_sam_topo USING btree (market, cascade_id);


--
-- Name: site_sam_topo_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX site_sam_topo_idx1 ON site_sam_topo USING btree (market);


--
-- PostgreSQL database dump complete
--

