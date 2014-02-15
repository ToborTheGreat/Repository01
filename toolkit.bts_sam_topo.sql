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

DROP INDEX toolkit.bts_sam_topo_n1;
DROP INDEX toolkit.bts_sam_topo_idx4;
DROP INDEX toolkit.bts_sam_topo_idx3;
DROP INDEX toolkit.bts_sam_topo_idx2;
DROP INDEX toolkit.bts_sam_topo_idx1;
DROP INDEX toolkit.bts_sam_topo_idx;
ALTER TABLE ONLY toolkit.bts_sam_topo DROP CONSTRAINT bts_sam_topo_pk;
DROP TABLE toolkit.bts_sam_topo;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: bts_sam_topo; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE bts_sam_topo (
    market character varying(50) NOT NULL,
    cascade_id character varying(30) NOT NULL,
    new_bsc_name character varying(30) NOT NULL,
    new_bts_id integer NOT NULL,
    lat double precision,
    lng double precision,
    avg_tier1_dist real,
    site_geoloc public.geometry
);


--
-- Name: bts_sam_topo_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY bts_sam_topo
    ADD CONSTRAINT bts_sam_topo_pk PRIMARY KEY (market, cascade_id, new_bsc_name, new_bts_id);


--
-- Name: bts_sam_topo_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX bts_sam_topo_idx ON bts_sam_topo USING btree (new_bsc_name, new_bts_id);


--
-- Name: bts_sam_topo_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX bts_sam_topo_idx1 ON bts_sam_topo USING btree (cascade_id);


--
-- Name: bts_sam_topo_idx2; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX bts_sam_topo_idx2 ON bts_sam_topo USING btree (market);


--
-- Name: bts_sam_topo_idx3; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX bts_sam_topo_idx3 ON bts_sam_topo USING btree (new_bts_id);


--
-- Name: bts_sam_topo_idx4; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX bts_sam_topo_idx4 ON bts_sam_topo USING btree (new_bts_id, new_bsc_name);


--
-- Name: bts_sam_topo_n1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX bts_sam_topo_n1 ON bts_sam_topo USING btree (market, cascade_id, new_bsc_name, new_bts_id);


--
-- PostgreSQL database dump complete
--

