--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

DROP TABLE public.z_mybhrec;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_mybhrec; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_mybhrec (
    item_date date,
    vendor text,
    market character varying(50),
    bsc character varying(50),
    bsc_name character varying(30),
    bts integer,
    sector integer,
    band integer,
    total_conn_attempts bigint,
    total_conn_attempts_org bigint,
    total_conn_attempts_ter bigint,
    total_conn_failures bigint,
    total_conn_failures_pct double precision,
    total_blks bigint,
    total_blks_pct double precision,
    ce_blks bigint,
    rnc_blks bigint,
    cust_blks bigint,
    equip_blks bigint,
    equip_blks_pct double precision,
    non_bts_equip_blks bigint,
    successful_conn bigint,
    successful_call_pct double precision,
    total_normal_conn_close bigint,
    total_dropped_conn bigint,
    dropped_conn_pct double precision,
    tot_fwd_data_trans_megbyte double precision,
    tot_rev_data_trans_megbyte double precision,
    avg_fwd_phy_sect_tput real,
    avg_rev_phy_sect_tput real,
    avg_req_drc_rate_kbs double precision,
    total_slot_util double precision,
    control_slot_util double precision,
    mac_util double precision,
    control_chan_util double precision,
    avg_fwd_tr_wait_time double precision,
    rab_busy_ratio double precision,
    ses_conf_suc_rate double precision,
    norm_ses_release_rate double precision,
    abnorm_ses_release_rate double precision,
    rev_air_per_pct double precision,
    qchat_avg_active_ptt_talk_time double precision,
    qchat_initial_ptt_call_setup_latency double precision,
    qchat_ptt_conn_attempts bigint,
    qchat_ptt_conn_drops_net_mgmt bigint,
    qchat_pct_ptt_conn_drop_rate_net_mgmt double precision,
    qchat_ptt_conn_failures_net_mgmt bigint,
    qchat_ptt_conn_failures_rate_pct_net_mgmt double precision,
    qchat_ptt_conn_successes bigint,
    qchat_do_to_1x_hand_downs bigint,
    qchat_primary_mou double precision
);


--
-- PostgreSQL database dump complete
--

