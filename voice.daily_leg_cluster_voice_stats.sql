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

DROP TRIGGER voice_daily_leg_cluster_voice_stats_trigger_part ON voice.daily_leg_cluster_voice_stats;
DROP INDEX voice.daily_leg_cluster_voice_stats_idx;
DROP TABLE voice.daily_leg_cluster_voice_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: daily_leg_cluster_voice_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE daily_leg_cluster_voice_stats (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    cluster character varying(50) NOT NULL,
    cluster_group character varying(20) NOT NULL,
    total_setup_attempts bigint,
    total_access_failures bigint,
    total_access_failure_pct double precision,
    total_equipment_blocks bigint,
    total_block_pct double precision,
    total_successful_calls bigint,
    total_primary_drops bigint,
    total_drop_pct double precision,
    total_primary_erlangs real,
    total_mous real
)
WITH (autovacuum_enabled=true);
ALTER TABLE ONLY daily_leg_cluster_voice_stats ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: daily_leg_cluster_voice_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_leg_cluster_voice_stats_idx ON daily_leg_cluster_voice_stats USING btree (item_date);


--
-- Name: voice_daily_leg_cluster_voice_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER voice_daily_leg_cluster_voice_stats_trigger_part
    BEFORE INSERT ON daily_leg_cluster_voice_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_leg_cluster_voice_stats_part();


--
-- PostgreSQL database dump complete
--

