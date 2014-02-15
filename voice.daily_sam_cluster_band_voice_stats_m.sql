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

DROP INDEX voice.daily_sam_cluster_band_voice_stats_m_idx;
ALTER TABLE ONLY voice.daily_sam_cluster_band_voice_stats_m DROP CONSTRAINT daily_sam_cluster_band_voice_stats_m_pk;
DROP TABLE voice.daily_sam_cluster_band_voice_stats_m;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: daily_sam_cluster_band_voice_stats_m; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE daily_sam_cluster_band_voice_stats_m (
    item_date date NOT NULL,
    vendor text,
    market character varying(50) NOT NULL,
    cluster character varying(50) NOT NULL,
    cluster_group character varying(20) NOT NULL,
    band integer NOT NULL,
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
    access_ch_occ real,
    page_ch_occ real,
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
    bh_access_ch_occ real,
    bh_page_ch_occ real,
    bh_sms_attempts integer,
    bh_sms_success integer,
    bh_sms_success_pct real,
    comb_hard_hand_in_drop_pct real,
    comb_total_erlangs real,
    bh_comb_hard_hand_in_drop_pct real,
    bh_comb_total_erlangs real,
    site_reporting_cnt integer,
    traffic_hour_cnt integer,
    avail_hour_cnt integer,
    backhaul_blks integer,
    bh_backhaul_blks integer,
    ecsfb_drop_pct double precision,
    ecsfb_hand_in_success_pct double precision,
    ecsfb_hand_in_att integer,
    bh_ecsfb_drop_pct double precision,
    bh_ecsfb_hand_in_success_pct double precision,
    bh_ecsfb_hand_in_att integer,
    imhho_att integer,
    imhho_suc integer,
    imhho_msc_rjt integer,
    imhho_cmp_msc integer,
    imhho_etc_fail integer,
    imhho_avg_suc real,
    bh_imhho_att integer,
    bh_imhho_suc integer,
    bh_imhho_msc_rjt integer,
    bh_imhho_cmp_msc integer,
    bh_imhho_etc_fail integer,
    bh_imhho_avg_suc real,
    m_att integer,
    hard_handin_success_pct double precision,
    bh_m_att integer,
    bh_hard_handin_success_pct double precision,
    backhaul_blks_pct double precision,
    bh_backhaul_blks_pct double precision
)
WITH (autovacuum_enabled=true, toast.autovacuum_enabled=true);
ALTER TABLE ONLY daily_sam_cluster_band_voice_stats_m ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: daily_sam_cluster_band_voice_stats_m_pk; Type: CONSTRAINT; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

ALTER TABLE ONLY daily_sam_cluster_band_voice_stats_m
    ADD CONSTRAINT daily_sam_cluster_band_voice_stats_m_pk PRIMARY KEY (item_date, market, cluster, cluster_group, band);


--
-- Name: daily_sam_cluster_band_voice_stats_m_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_sam_cluster_band_voice_stats_m_idx ON daily_sam_cluster_band_voice_stats_m USING btree (item_date);


--
-- PostgreSQL database dump complete
--
