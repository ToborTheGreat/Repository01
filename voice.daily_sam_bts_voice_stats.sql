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

DROP TRIGGER voice_daily_sam_bts_voice_stats_trigger_part ON voice.daily_sam_bts_voice_stats;
DROP INDEX voice.daily_sam_bts_voice_stats_idx2;
DROP INDEX voice.daily_sam_bts_voice_stats_idx;
DROP INDEX voice.daily_sam_bts_voice_stats_daily_idx;
DROP TABLE voice.daily_sam_bts_voice_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: daily_sam_bts_voice_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE daily_sam_bts_voice_stats (
    item_date date,
    vendor text,
    market character varying(50),
    bsc integer,
    bsc_name character varying(30),
    cascade_id character varying(30),
    bts integer,
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
    ce_use_ratio real,
    access_ch_occ real,
    page_ch_occ real,
    soft_softer_ho_fail_pct real,
    soft_softer_ho_success_pct real,
    ifho_hard_ho_pct real,
    ifho_hard_ho_failure_pct real,
    ifho_hard_ho_success_pct real,
    iv_hard_ho_failure_pct real,
    iv_hard_ho_success_pct real,
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
    bh_ce_use_ratio real,
    bh_access_ch_occ real,
    bh_page_ch_occ real,
    bh_soft_softer_ho_fail_pct real,
    bh_soft_softer_ho_success_pct real,
    bh_ifho_hard_ho_pct real,
    bh_ifho_hard_ho_failure_pct real,
    bh_ifho_hard_ho_success_pct real,
    bh_iv_hard_ho_failure_pct real,
    bh_iv_hard_ho_success_pct real,
    bh_sms_attempts integer,
    bh_sms_success integer,
    bh_sms_success_pct real,
    ifho_hard_ho_att integer,
    bh_ifho_hard_ho_att integer,
    m_att integer,
    hard_handin_success_pct real,
    hard_handin_drop_pct real,
    bh_m_att integer,
    bh_hard_handin_success_pct real,
    bh_hard_handin_drop_pct real,
    backhaul_blks integer,
    bh_backhaul_blks integer,
    ibhho_down_att integer,
    ibhho_down_suc integer,
    ibhho_down_drops integer,
    ibhho_up_att integer,
    ibhho_up_suc integer,
    ibhho_up_drops integer,
    ibhho_up_suc_pct real,
    ibhho_down_suc_pct real,
    bh_ibhho_down_att integer,
    bh_ibhho_down_suc integer,
    bh_ibhho_down_drops integer,
    bh_ibhho_up_att integer,
    bh_ibhho_up_suc integer,
    bh_ibhho_up_drops integer,
    bh_ibhho_up_suc_pct real,
    bh_ibhho_down_suc_pct real,
    imhho_success_pct real,
    bh_imhho_success_pct real,
    ifho_hard_ho_ce_una bigint,
    ifho_hard_ho_rsc_una bigint,
    ifho_hard_ho_syn_to bigint,
    ifho_hard_ho_etc_fail bigint,
    ifho_hard_ho_hcm_to bigint,
    ifho_hard_ho_avg_suc real,
    ifho_hard_ho_bsc_call_drp bigint,
    bh_ifho_hard_ho_ce_una integer,
    bh_ifho_hard_ho_rsc_una integer,
    bh_ifho_hard_ho_syn_to integer,
    bh_ifho_hard_ho_etc_fail integer,
    bh_ifho_hard_ho_hcm_to integer,
    bh_ifho_hard_ho_avg_suc real,
    bh_ifho_hard_ho_bsc_call_drp integer,
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
    ifho_hard_ho_suc integer,
    bh_ifho_hard_ho_suc integer,
    bsc_market character varying(50),
    ecsfb_drop_pct double precision,
    ecsfb_hand_in_success_pct double precision,
    ecsfb_hand_in_att integer,
    bh_ecsfb_drop_pct double precision,
    bh_ecsfb_hand_in_success_pct double precision,
    bh_ecsfb_hand_in_att integer,
    backhaul_blks_pct double precision,
    bh_backhaul_blks_pct double precision,
    m_suc_ecsfb integer,
    bh_m_suc_ecsfb integer,
    hours integer,
    max_access_ch_occ real,
    max_page_ch_occ real
)
WITH (autovacuum_enabled=true, toast.autovacuum_enabled=true);
ALTER TABLE ONLY daily_sam_bts_voice_stats ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: daily_sam_bts_voice_stats_daily_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_sam_bts_voice_stats_daily_idx ON daily_sam_bts_voice_stats USING btree (item_date, cascade_id, bts);


--
-- Name: daily_sam_bts_voice_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_sam_bts_voice_stats_idx ON daily_sam_bts_voice_stats USING btree (item_date);


--
-- Name: daily_sam_bts_voice_stats_idx2; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_sam_bts_voice_stats_idx2 ON daily_sam_bts_voice_stats USING btree (item_date, market, bts);


--
-- Name: voice_daily_sam_bts_voice_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER voice_daily_sam_bts_voice_stats_trigger_part
    BEFORE INSERT ON daily_sam_bts_voice_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_sam_bts_voice_stats_part();


--
-- PostgreSQL database dump complete
--

