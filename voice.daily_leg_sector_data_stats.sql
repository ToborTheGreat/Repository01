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

DROP TRIGGER voice_daily_leg_sector_data_stats_trigger_part ON voice.daily_leg_sector_data_stats;
DROP INDEX voice.daily_leg_sector_data_stats_idx2;
DROP INDEX voice.daily_leg_sector_data_stats_idx1;
DROP INDEX voice.daily_leg_sector_data_stats_idx;
ALTER TABLE ONLY voice.daily_leg_sector_data_stats DROP CONSTRAINT daily_leg_sector_data_stats_pk;
DROP TABLE voice.daily_leg_sector_data_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: daily_leg_sector_data_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE daily_leg_sector_data_stats (
    item_date date NOT NULL,
    technology character varying(30) NOT NULL,
    region character varying(30),
    l4_market character varying(50),
    l5_market character varying(50),
    cluster character varying(50),
    ninetynine_market character varying(50),
    switch character varying(30) NOT NULL,
    bsc character varying NOT NULL,
    cascade character varying(30) NOT NULL,
    bts integer,
    sector integer NOT NULL,
    total_setup_attempts bigint,
    total_access_failures bigint,
    total_access_failure_pct double precision,
    total_equipment_blocks bigint,
    total_block_pct double precision,
    total_successful_calls bigint,
    total_primary_drops bigint,
    total_drop_pct double precision,
    total_primary_erlangs real,
    total_mous real,
    bbh_busy_hour text,
    bbh_setup_attempts bigint,
    bbh_access_failures bigint,
    bbh_access_failure_pct double precision,
    bbh_equipment_blocks bigint,
    bbh_block_pct double precision,
    bbh_successful_calls bigint,
    bbh_primary_drops bigint,
    bbh_drop_pct double precision,
    bbh_primary_erlangs real,
    bbh_mous real
)
WITH (autovacuum_enabled=true, toast.autovacuum_enabled=true);


SET default_tablespace = p2_voiceindex;

--
-- Name: daily_leg_sector_data_stats_pk; Type: CONSTRAINT; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

ALTER TABLE ONLY daily_leg_sector_data_stats
    ADD CONSTRAINT daily_leg_sector_data_stats_pk PRIMARY KEY (item_date, technology, switch, bsc, cascade, sector);


--
-- Name: daily_leg_sector_data_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_leg_sector_data_stats_idx ON daily_leg_sector_data_stats USING btree (item_date, cascade);


--
-- Name: daily_leg_sector_data_stats_idx1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_leg_sector_data_stats_idx1 ON daily_leg_sector_data_stats USING btree (item_date);


--
-- Name: daily_leg_sector_data_stats_idx2; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_leg_sector_data_stats_idx2 ON daily_leg_sector_data_stats USING btree (cascade);


--
-- Name: voice_daily_leg_sector_data_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER voice_daily_leg_sector_data_stats_trigger_part
    BEFORE INSERT ON daily_leg_sector_data_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_leg_sector_data_stats_part();


--
-- PostgreSQL database dump complete
--

