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

DROP INDEX voice.daily_leg_voice_stats2_idx2;
ALTER TABLE ONLY voice.daily_leg_voice_stats2 DROP CONSTRAINT daily_leg_voice_stats2_pk;
DROP TABLE voice.daily_leg_voice_stats2;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: daily_leg_voice_stats2; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE daily_leg_voice_stats2 (
    item_date date NOT NULL,
    technology character varying(30),
    region character varying(30),
    l4_market character varying(50),
    l5_market character varying(50),
    cluster character varying(50),
    ninetynine_market character varying(50),
    switch character varying(30),
    bsc character varying(30),
    cascade character varying(30) NOT NULL,
    bts integer NOT NULL,
    sector integer NOT NULL,
    carrier integer NOT NULL,
    total_setup_attempts integer NOT NULL,
    total_access_failures integer,
    total_access_failure_pct real,
    total_equipment_blocks integer,
    total_block_pct real,
    total_successful_calls integer,
    total_primary_drops integer,
    total_drop_pct real,
    total_primary_erlangs real,
    total_mous real,
    bbh_busy_hour character varying(20),
    bbh_setup_attempts integer,
    bbh_access_failures integer,
    bbh_access_failure_pct real,
    bbh_equipment_blocks integer,
    bbh_block_pct real,
    bbh_successful_calls integer,
    bbh_primary_drops integer,
    bbh_drop_pct real,
    bbh_primary_erlangs real,
    bbh_mous real
)
WITH (autovacuum_enabled=true);
ALTER TABLE ONLY daily_leg_voice_stats2 ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: daily_leg_voice_stats2_pk; Type: CONSTRAINT; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

ALTER TABLE ONLY daily_leg_voice_stats2
    ADD CONSTRAINT daily_leg_voice_stats2_pk PRIMARY KEY (item_date, cascade, bts, sector, carrier, total_setup_attempts);


--
-- Name: daily_leg_voice_stats2_idx2; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_leg_voice_stats2_idx2 ON daily_leg_voice_stats2 USING btree (cascade);


--
-- PostgreSQL database dump complete
--

