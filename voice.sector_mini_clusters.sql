--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = voice, pg_catalog;

DROP TRIGGER voice_sector_mini_clusters_trigger_part ON voice.sector_mini_clusters;
DROP INDEX voice.sector_mini_clusters_idx9;
DROP INDEX voice.sector_mini_clusters_idx2;
DROP INDEX voice.sector_mini_clusters_idx1;
DROP INDEX voice.sector_mini_clusters_idx;
DROP TABLE voice.sector_mini_clusters;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: sector_mini_clusters; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE sector_mini_clusters (
    market character varying(30) NOT NULL,
    s_cascade_id character varying(20) NOT NULL,
    s_bts integer NOT NULL,
    s_sector integer NOT NULL,
    d_cascade_id character varying(20) NOT NULL,
    d_sector integer NOT NULL,
    dist_km real,
    rev_bearing_delta real,
    cum_contrib real NOT NULL,
    item_date date NOT NULL
)
WITH (autovacuum_enabled=true);
ALTER TABLE ONLY sector_mini_clusters ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: sector_mini_clusters_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX sector_mini_clusters_idx ON sector_mini_clusters USING btree (s_cascade_id, d_cascade_id);


--
-- Name: sector_mini_clusters_idx1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX sector_mini_clusters_idx1 ON sector_mini_clusters USING btree (item_date);


--
-- Name: sector_mini_clusters_idx2; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX sector_mini_clusters_idx2 ON sector_mini_clusters USING btree (item_date, d_cascade_id);


--
-- Name: sector_mini_clusters_idx9; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX sector_mini_clusters_idx9 ON sector_mini_clusters USING btree (item_date, d_cascade_id, d_sector);


--
-- Name: voice_sector_mini_clusters_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER voice_sector_mini_clusters_trigger_part
    BEFORE INSERT ON sector_mini_clusters
    FOR EACH ROW
    EXECUTE PROCEDURE trg_sector_mini_clusters_part();


--
-- PostgreSQL database dump complete
--

