--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = geo, pg_catalog;

DROP TABLE geo.mybhrec;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: mybhrec; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE mybhrec (
    item_date date,
    vendor text,
    market character varying(50),
    bsc integer,
    bsc_name character varying(30),
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
    pri_erlangs double precision,
    avg_hld real,
    ce_una bigint,
    walsh_una bigint,
    tch_ovp bigint,
    non_bts_blks bigint,
    re_org bigint,
    link_una bigint,
    backhaul_blks bigint,
    total_mou double precision,
    m_drp_bad bigint,
    m_suc bigint,
    m_att bigint,
    hard_handin_success_pct double precision,
    hard_handin_drop_pct double precision,
    voc_att bigint,
    avg_voc_hld_time real,
    erlangs double precision,
    max_ce_use_ratio real,
    access_ch_occ double precision,
    page_ch_occ double precision,
    soft_softer_ho_fail_pct double precision,
    soft_softer_ho_success_pct double precision,
    ifho_hard_ho_pct double precision,
    ifho_hard_ho_failure_pct double precision,
    ifho_hard_ho_success_pct double precision,
    ifho_hard_ho_suc bigint,
    ifho_hard_ho_ce_una bigint,
    ifho_hard_ho_rsc_una bigint,
    ifho_hard_ho_syn_to bigint,
    ifho_hard_ho_etc_fail bigint,
    ifho_hard_ho_hcm_to bigint,
    ifho_hard_ho_avg_suc real,
    ifho_hard_ho_bsc_call_drp bigint,
    iv_hard_ho_failure_pct double precision,
    iv_hard_ho_success_pct double precision,
    sms_attempts bigint,
    sms_success bigint,
    sms_success_pct double precision,
    ibhho_down_att bigint,
    ibhho_down_suc bigint,
    ibhho_down_drops bigint,
    ibhho_up_att bigint,
    ibhho_up_suc bigint,
    ibhho_up_drops bigint,
    ibhho_up_suc_pct double precision,
    ibhho_down_suc_pct double precision,
    imhho_att bigint,
    imhho_suc bigint,
    imhho_msc_rjt bigint,
    imhho_cmp_msc bigint,
    imhho_etc_fail bigint,
    imhho_avg_suc real,
    imhho_success_pct double precision,
    cascade_id character varying(30)
);


--
-- PostgreSQL database dump complete
--

