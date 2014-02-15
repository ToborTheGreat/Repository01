--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = evdo, pg_catalog;

DROP TRIGGER evdo_daily_sam_site_evdo_stats_trigger_part ON evdo.daily_sam_site_evdo_stats;
DROP INDEX evdo.daily_sam_site_evdo_stats_idx1;
DROP INDEX evdo.daily_sam_site_evdo_stats_idx;
DROP TABLE evdo.daily_sam_site_evdo_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: daily_sam_site_evdo_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE daily_sam_site_evdo_stats (
    item_date date NOT NULL,
    vendor character varying(30),
    market character varying(50) NOT NULL,
    bsc character varying(50),
    bsc_name character varying(30) NOT NULL,
    cascade_id character varying(30),
    total_conn_attempts bigint,
    total_conn_attempts_org bigint,
    total_conn_attempts_ter bigint,
    total_conn_failures bigint,
    total_conn_failures_pct real,
    total_blks bigint,
    total_blks_pct real,
    ce_blks bigint,
    rnc_blks bigint,
    cust_blks bigint,
    equip_blks bigint,
    equip_blks_pct real,
    non_bts_equip_blks bigint,
    successful_conn bigint,
    successful_call_pct real,
    total_normal_conn_close bigint,
    total_dropped_conn bigint,
    dropped_conn_pct real,
    tot_fwd_data_trans_megbyte bigint,
    tot_rev_data_trans_megbyte bigint,
    avg_fwd_phy_sect_tput real,
    avg_rev_phy_sect_tput real,
    avg_req_drc_rate_kbs real,
    avg_req_drc_rate_kbs_denom bigint,
    avg_req_drc_rate_kbs_numer bigint,
    total_slot_util real,
    control_slot_util real,
    mac_util real,
    control_chan_util real,
    avg_fwd_tr_wait_time real,
    rab_busy_ratio real,
    ses_conf_suc_rate real,
    norm_ses_release_rate real,
    abnorm_ses_release_rate real,
    rev_air_per_pct real,
    soft_ho_rate real,
    softer_ho_rate real,
    soft_softer_ho_success_rate real,
    soft_softer_ho_failure_rate real,
    hard_ho_rate real,
    hard_ho_success_rate real,
    hard_ho_failure_rate real,
    qchat_avg_active_ptt_talk_time real,
    qchat_initial_ptt_call_setup_latency real,
    qchat_ptt_conn_attempts integer,
    qchat_ptt_conn_drops_net_mgmt integer,
    qchat_pct_ptt_conn_drop_rate_net_mgmt real,
    qchat_ptt_conn_failures_net_mgmt integer,
    qchat_ptt_conn_failures_rate_pct_net_mgmt real,
    qchat_ptt_conn_successes integer,
    qchat_do_to_1x_hand_downs integer,
    qchat_primary_mou real,
    qchat_ptt_paging_success_rate_pct real,
    qchat_ptt_post_first_page_successes integer,
    qchat_pct_ptt_first_page_success_rate real,
    total_page_success_rate_pct real,
    first_page_success_rate_pct real,
    bh_hour integer,
    bh_total_conn_attempts bigint,
    bh_total_conn_attempts_org bigint,
    bh_total_conn_attempts_ter bigint,
    bh_total_conn_failures bigint,
    bh_total_conn_failures_pct real,
    bh_total_blks bigint,
    bh_total_blks_pct real,
    bh_ce_blks bigint,
    bh_rnc_blks bigint,
    bh_cust_blks bigint,
    bh_equip_blks bigint,
    bh_equip_blks_pct real,
    bh_non_bts_equip_blks bigint,
    bh_successful_conn bigint,
    bh_successful_call_pct real,
    bh_total_normal_conn_close bigint,
    bh_total_dropped_conn bigint,
    bh_dropped_conn_pct real,
    bh_tot_fwd_data_trans_megbyte bigint,
    bh_tot_rev_data_trans_megbyte bigint,
    bh_avg_fwd_phy_sect_tput real,
    bh_avg_rev_phy_sect_tput real,
    bh_avg_req_drc_rate_kbs real,
    bh_total_slot_util real,
    bh_control_slot_util real,
    bh_mac_util real,
    bh_control_chan_util real,
    bh_avg_fwd_tr_wait_time real,
    bh_rab_busy_ratio real,
    bh_ses_conf_suc_rate real,
    bh_norm_ses_release_rate real,
    bh_abnorm_ses_release_rate real,
    bh_rev_air_per_pct real,
    bh_soft_ho_rate real,
    bh_softer_ho_rate real,
    bh_soft_softer_ho_success_rate real,
    bh_soft_softer_ho_failure_rate real,
    bh_hard_ho_rate real,
    bh_hard_ho_success_rate real,
    bh_hard_ho_failure_rate real,
    bh_qchat_avg_active_ptt_talk_time real,
    bh_qchat_initial_ptt_call_setup_latency real,
    bh_qchat_ptt_conn_attempts integer,
    bh_qchat_ptt_conn_drops_net_mgmt integer,
    bh_qchat_pct_ptt_conn_drop_rate_net_mgmt real,
    bh_qchat_ptt_conn_failures_net_mgmt integer,
    bh_qchat_ptt_conn_failures_rate_pct_net_mgmt real,
    bh_qchat_ptt_conn_successes integer,
    bh_qchat_do_to_1x_hand_downs integer,
    bh_qchat_primary_mou real,
    bh_qchat_ptt_paging_success_rate_pct real,
    bh_qchat_ptt_post_first_page_successes integer,
    bh_qchat_pct_ptt_first_page_success_rate real,
    bh_total_page_success_rate_pct real,
    bh_first_page_success_rate_pct real,
    uati_asgmnt_success_rate_pct real,
    bh_uati_asgmnt_success_rate_pct real,
    min_ce_use_cnt integer,
    max_ce_use_cnt integer,
    avg_ce_use_cnt integer,
    bh_min_ce_use_cnt integer,
    bh_max_ce_use_cnt integer,
    bh_avg_ce_use_cnt integer,
    req_inter_rnc_ho_cnt integer,
    inter_rnc_hho_failure_pct real,
    inter_rnc_hho_success_pct real,
    bh_req_inter_rnc_ho_cnt integer,
    bh_inter_rnc_hho_failure_pct real,
    bh_inter_rnc_hho_success_pct real,
    at_acq_fail integer,
    ccp_atp_to integer,
    bcp_cep_to integer,
    sel_err integer,
    sel_una integer,
    bh_at_acq_fail integer,
    bh_ccp_atp_to integer,
    bh_bcp_cep_to integer,
    bh_sel_err integer,
    bh_sel_una integer,
    bsc_market character varying(50),
    hours integer
);


SET default_tablespace = p2_evdoindex;

--
-- Name: daily_sam_site_evdo_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_sam_site_evdo_stats_idx ON daily_sam_site_evdo_stats USING btree (item_date, cascade_id);


--
-- Name: daily_sam_site_evdo_stats_idx1; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_sam_site_evdo_stats_idx1 ON daily_sam_site_evdo_stats USING btree (item_date);


--
-- Name: evdo_daily_sam_site_evdo_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER evdo_daily_sam_site_evdo_stats_trigger_part
    BEFORE INSERT ON daily_sam_site_evdo_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_sam_site_evdo_stats_part();


--
-- PostgreSQL database dump complete
--

