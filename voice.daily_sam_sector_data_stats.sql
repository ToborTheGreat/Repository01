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

DROP TRIGGER voice_daily_sam_sector_data_stats_trigger_part ON voice.daily_sam_sector_data_stats;
DROP INDEX voice.daily_sam_sector_data_stats_idx1;
DROP INDEX voice.daily_sam_sector_data_stats_idx;
DROP TABLE voice.daily_sam_sector_data_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: daily_sam_sector_data_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE daily_sam_sector_data_stats (
    item_date date,
    vendor text,
    market character varying(50),
    bsc integer,
    bsc_name character varying(30),
    cascade_id character varying(30),
    bts integer,
    sector integer,
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
    re_org integer,
    bh_re_org integer,
    bsc_sector integer,
    backhaul_blks integer,
    bh_backhaul_blks integer,
    m_att integer,
    bh_m_att integer,
    not_acq integer,
    ms_atp1 integer,
    ms_atp2 integer,
    bad_frm2 integer,
    cmp_bcp integer,
    syn_to integer,
    rev_no_frm_from_cep2 integer,
    bad_frm3 integer,
    bad_frm4 integer,
    bs_rel3 integer,
    bs_rel4 integer,
    atp_una integer,
    cmp_atp integer,
    ovd_cmp integer,
    a1_oos integer,
    bs_rel1 integer,
    bs_rel2 integer,
    cmp_msc integer,
    bcp_cep integer,
    so_rej integer,
    fwd_no_frm_from_atp2 integer,
    bh_not_acq integer,
    bh_ms_atp1 integer,
    bh_ms_atp2 integer,
    bh_bad_frm2 integer,
    bh_cmp_bcp integer,
    bh_syn_to integer,
    bh_rev_no_frm_from_cep2 integer,
    bh_bad_frm3 integer,
    bh_bad_frm4 integer,
    bh_bs_rel3 integer,
    bh_bs_rel4 integer,
    bh_atp_una integer,
    bh_cmp_atp integer,
    bh_ovd_cmp integer,
    bh_a1_oos integer,
    bh_bs_rel1 integer,
    bh_bs_rel2 integer,
    bh_cmp_msc integer,
    bh_bcp_cep integer,
    bh_so_rej integer,
    bh_fwd_no_frm_from_atp2 integer,
    bsc_market character varying(50),
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
    hard_handin_success_pct double precision,
    bh_hard_handin_success_pct double precision,
    backhaul_blks_pct double precision,
    bh_backhaul_blks_pct double precision,
    hours integer
)
WITH (autovacuum_enabled=true, toast.autovacuum_enabled=true);


SET default_tablespace = p2_voiceindex;

--
-- Name: daily_sam_sector_data_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_sam_sector_data_stats_idx ON daily_sam_sector_data_stats USING btree (item_date, cascade_id, sector);


--
-- Name: daily_sam_sector_data_stats_idx1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_sam_sector_data_stats_idx1 ON daily_sam_sector_data_stats USING btree (item_date);


--
-- Name: voice_daily_sam_sector_data_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER voice_daily_sam_sector_data_stats_trigger_part
    BEFORE INSERT ON daily_sam_sector_data_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_sam_sector_data_stats_part();


--
-- PostgreSQL database dump complete
--

