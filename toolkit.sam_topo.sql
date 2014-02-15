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

DROP TRIGGER trg_sam_topo_ins_upd ON toolkit.sam_topo;
DROP INDEX toolkit.sam_topo_idx5;
DROP INDEX toolkit.sam_topo_idx3;
DROP INDEX toolkit.sam_topo_idx2;
DROP INDEX toolkit.sam_topo_idx1;
DROP INDEX toolkit.sam_topo_idx;
DROP INDEX toolkit.sam_topo_gist1;
DROP TABLE toolkit.sam_topo;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: sam_topo; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE sam_topo (
    cascade_id character varying(30) NOT NULL,
    nsc_clli character varying(50),
    new_switch_name character varying(100),
    new_bsc_name character varying(30) NOT NULL,
    new_rnc_name character varying(50),
    cluster_name character varying(100),
    new_bts_id integer NOT NULL,
    sector integer NOT NULL,
    carrier integer NOT NULL,
    band integer NOT NULL,
    market character varying(50) NOT NULL,
    lat double precision NOT NULL,
    lng double precision NOT NULL,
    azimuth integer NOT NULL,
    agl integer NOT NULL,
    avg_tier1_dist real,
    site_geoloc public.geometry,
    sector_geoloc_poi public.geometry,
    pn_offset integer,
    sector_alias integer NOT NULL,
    row_checksum character varying(1000)
);


--
-- Name: sam_topo_gist1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sam_topo_gist1 ON sam_topo USING gist (site_geoloc);


--
-- Name: sam_topo_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sam_topo_idx ON sam_topo USING btree (new_bsc_name, new_bts_id);


--
-- Name: sam_topo_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sam_topo_idx1 ON sam_topo USING btree (cascade_id);


--
-- Name: sam_topo_idx2; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sam_topo_idx2 ON sam_topo USING btree (market, cascade_id);


--
-- Name: sam_topo_idx3; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sam_topo_idx3 ON sam_topo USING btree (pn_offset, azimuth);


--
-- Name: sam_topo_idx5; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sam_topo_idx5 ON sam_topo USING btree (cascade_id, new_bsc_name, new_bts_id);


--
-- Name: trg_sam_topo_ins_upd; Type: TRIGGER; Schema: toolkit; Owner: -
--

CREATE TRIGGER trg_sam_topo_ins_upd
    BEFORE INSERT OR UPDATE ON sam_topo
    FOR EACH ROW
    EXECUTE PROCEDURE trg_sam_topo_crud();


--
-- PostgreSQL database dump complete
--

