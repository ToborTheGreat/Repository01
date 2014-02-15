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

DROP TRIGGER voice_daily_sam_mini_cluster_band_voice_stats_trigger_part ON voice.daily_sam_mini_cluster_band_voice_stats;
DROP INDEX voice.daily_sam_mini_cluster_band_voice_stats_idx1;
DROP INDEX voice.daily_sam_mini_cluster_band_voice_stats_idx;
DROP TABLE voice.daily_sam_mini_cluster_band_voice_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: daily_sam_mini_cluster_band_voice_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE daily_sam_mini_cluster_band_voice_stats (
    item_date date,
    vendor text,
    market character varying(50),
    cascade_id character varying(20),
    sector integer,
    band integer,
    attempts bigint,
    orig_att bigint,
    term_att bigint,
    access_failures bigint,
    access_fail_pct double precision,
    cust_blks bigint,
    cust_blks_pct double precision,
    equip_blks bigint,
    equip_blks_pct double precision,
    total_successful_calls bigint,
    successful_calls_pct double precision,
    drops bigint,
    drops_pct double precision,
    m_drp_bad bigint,
    m_suc bigint,
    hard_ho_drop_pct double precision,
    total_mou double precision,
    erlangs double precision,
    pri_erlangs double precision,
    avg_hld real,
    voc_att bigint,
    avg_voc_hld_time real,
    ce_una bigint,
    walsh_una bigint,
    tch_ovp bigint,
    non_bts_blks bigint,
    link_una bigint,
    re_org integer,
    sms_attempts integer,
    sms_success integer,
    sms_success_pct real,
    bh_hour integer,
    bh_attempts bigint,
    bh_orig_att bigint,
    bh_term_att bigint,
    bh_access_failures bigint,
    bh_access_fail_pct double precision,
    bh_cust_blks bigint,
    bh_cust_blks_pct double precision,
    bh_equip_blks bigint,
    bh_equip_blks_pct double precision,
    bh_total_successful_calls bigint,
    bh_successful_calls_pct double precision,
    bh_drops bigint,
    bh_drops_pct double precision,
    bh_m_drp_bad bigint,
    bh_m_suc bigint,
    bh_hard_ho_drop_pct double precision,
    bh_total_mou double precision,
    bh_erlangs double precision,
    bh_pri_erlangs double precision,
    bh_avg_hld real,
    bh_voc_att bigint,
    bh_avg_voc_hld_time real,
    bh_ce_una bigint,
    bh_walsh_una bigint,
    bh_tch_ovp bigint,
    bh_non_bts_blks bigint,
    bh_link_una bigint,
    bh_re_org integer,
    bh_sms_attempts integer,
    bh_sms_success integer,
    bh_sms_success_pct real,
    comb_hard_hand_in_drop_pct real,
    comb_total_erlangs real,
    bh_comb_hard_hand_in_drop_pct real,
    bh_comb_total_erlangs real,
    site_reporting_cnt integer,
    sector_cnt integer,
    ecsfb_drop_pct double precision,
    ecsfb_hand_in_success_pct double precision,
    ecsfb_hand_in_att integer,
    backhaul_blks integer,
    backhaul_blks_pct double precision,
    m_suc_ecsfb integer
)
WITH (autovacuum_enabled=true, toast.autovacuum_enabled=true);
ALTER TABLE ONLY daily_sam_mini_cluster_band_voice_stats ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: daily_sam_mini_cluster_band_voice_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_sam_mini_cluster_band_voice_stats_idx ON daily_sam_mini_cluster_band_voice_stats USING btree (item_date);


--
-- Name: daily_sam_mini_cluster_band_voice_stats_idx1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_sam_mini_cluster_band_voice_stats_idx1 ON daily_sam_mini_cluster_band_voice_stats USING btree (item_date, cascade_id);


--
-- Name: voice_daily_sam_mini_cluster_band_voice_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER voice_daily_sam_mini_cluster_band_voice_stats_trigger_part
    BEFORE INSERT ON daily_sam_mini_cluster_band_voice_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_sam_mini_cluster_band_voice_stats_part();


--
-- PostgreSQL database dump complete
--

