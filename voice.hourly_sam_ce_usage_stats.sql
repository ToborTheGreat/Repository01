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

DROP TRIGGER hourly_sam_ce_usage_stats_trigger_part ON voice.hourly_sam_ce_usage_stats;
DROP INDEX voice.hourly_sam_ce_usage_stats_idx4;
DROP INDEX voice.hourly_sam_ce_usage_stats_idx;
ALTER TABLE ONLY voice.hourly_sam_ce_usage_stats DROP CONSTRAINT hourly_sam_ce_usage_stats_pk;
DROP TABLE voice.hourly_sam_ce_usage_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_ce_usage_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE hourly_sam_ce_usage_stats (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    bts integer NOT NULL,
    ce_use_cnt integer,
    ce_avail_cnt integer,
    ce_use_ratio real
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);
ALTER TABLE ONLY hourly_sam_ce_usage_stats ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: hourly_sam_ce_usage_stats_pk; Type: CONSTRAINT; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

ALTER TABLE ONLY hourly_sam_ce_usage_stats
    ADD CONSTRAINT hourly_sam_ce_usage_stats_pk PRIMARY KEY (item_date, hour, bsc_name, bts);


--
-- Name: hourly_sam_ce_usage_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_ce_usage_stats_idx ON hourly_sam_ce_usage_stats USING btree (item_date);

ALTER TABLE hourly_sam_ce_usage_stats CLUSTER ON hourly_sam_ce_usage_stats_idx;


--
-- Name: hourly_sam_ce_usage_stats_idx4; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE UNIQUE INDEX hourly_sam_ce_usage_stats_idx4 ON hourly_sam_ce_usage_stats USING btree (item_date, market, hour, bsc_name, bts);


--
-- Name: hourly_sam_ce_usage_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER hourly_sam_ce_usage_stats_trigger_part
    BEFORE INSERT ON hourly_sam_ce_usage_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_ce_usage_stats_part();


--
-- PostgreSQL database dump complete
--

