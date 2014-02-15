--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = lte, pg_catalog;

DROP TRIGGER lte_daily_sam_sector_lte_stats_trigger_part ON lte.daily_sam_sector_lte_stats;
DROP INDEX lte.daily_sam_sector_lte_stats_itmdt_ix;
DROP INDEX lte.daily_sam_sector_lte_stats_idx1;
DROP INDEX lte.daily_sam_sector_lte_stats_idx;
DROP TABLE lte.daily_sam_sector_lte_stats;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: daily_sam_sector_lte_stats; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE daily_sam_sector_lte_stats (
    item_date date NOT NULL,
    market character varying(40) NOT NULL,
    cascade_id character varying(20) NOT NULL,
    lsm_name character varying(30) NOT NULL,
    enodeb_id integer NOT NULL,
    sector integer NOT NULL,
    num_hours integer NOT NULL,
    rrc_conn_req bigint,
    rrc_conn_estab_succ_rate real,
    rrc_conn_failures bigint,
    rrc_conn_failure_rate real,
    s1_setup_req bigint,
    s1_setup_suc_rate real,
    s1_setup_fail_rate real,
    init_erab_setup_req bigint,
    init_erab_setup_suc_rate real,
    init_erab_fail_rate real,
    addtl_erab_setup_suc bigint,
    addtl_erab_setup_suc_rate real,
    addtl_erab_setup_fail_rate real,
    total_erab_drops bigint,
    samsung_conn_drop_rate real,
    sprint_conn_drop_cnt bigint,
    sprint_conn_drop_rate real,
    ext_conn_failure_rate real,
    conn_setup_time real,
    s1_late real,
    estab_time bigint,
    rrc_conn_estab_time real,
    rrc_conn_re_estab_time real,
    intra_enb_att bigint,
    intra_enb_prep_suc_rate real,
    intra_enb_suc_rate real,
    intra_ho_cnt bigint,
    intra_enb_late real,
    inter_x2_out_att bigint,
    inter_enb_x2_out_prep_suc_rate real,
    inter_enb_x2_out_suc_rate real,
    inter_x2_in_att bigint,
    inter_enb_x2_in_prep_suc_rate real,
    inter_enb_x2_in_suc_rate real,
    x2_late real,
    inter_ho_cnt bigint,
    s1_hout_att bigint,
    s1_hout_suc_rate real,
    s1_hin_att bigint,
    s1_hin_suc_rate real,
    air_mac_dl_pdu real,
    air_mac_ul_pdu real,
    total_payload_mb real,
    avg_dl_sector_tput real,
    avg_ul_sector_tput real,
    avg_dl_eff_tput real,
    avg_ul_eff_tput real,
    air_mac_dl_tput integer,
    avg_dl_pdcp real,
    avg_ul_pdcp real,
    avg_dl_rf_util real,
    avg_dl_prb_util real,
    peak_dl_rf_util real,
    avg_ul_rf_util real,
    avg_ul_prb_util real,
    peak_ul_rf_util real,
    rach_usage real,
    paging_att bigint,
    paging_suc_rate real,
    discarded_nbr bigint,
    paging_discard_rate real,
    max_num_users real,
    max_num_bearers real,
    total_erab_connections bigint,
    avg_ue_with_active_dl real,
    avg_ue_with_active_ul real,
    dl_ip_late real,
    cell_unavailable_time_lock bigint,
    cell_unavailable_time_down bigint,
    tx_error_rate real,
    tx_error_rate_hours bigint,
    rx_error_rate real,
    rx_error_rate_hours bigint,
    inter_rat_ho_att bigint,
    inter_rat_ho_prep_succ bigint,
    inter_rat_ho_suc_rate real,
    avg_interference_pwr_prb real,
    avg_rssi_over_path real,
    num_load_balance_ho bigint,
    load_balancing_ho_suc_rate real,
    conn_vs_session_drop_rate real,
    rrc_conn_reconfig_att bigint,
    rrc_conn_reconfig_succ_rate real,
    rrc_conn_re_estab_req bigint,
    rrc_conn_re_estab_succ bigint,
    rrc_conn_re_estab_succ_rate real,
    total_rrc_conn real,
    avg_holding_time real,
    call_fail_macb_loss_radio_link bigint,
    avg_tot_prb_dl real,
    avg_tot_prb_ul real,
    s1_ho_time_cnt bigint,
    sustainability real,
    accessibility real,
    s1_sig_time_avg real,
    dl_received_cqi_cnt bigint,
    dl_received_cqi_valued_cnt bigint,
    cinr_criteria_rate real
)
WITH (autovacuum_enabled=true);
ALTER TABLE ONLY daily_sam_sector_lte_stats ALTER COLUMN enodeb_id SET STATISTICS 1000;


SET default_tablespace = p2_lteindex;

--
-- Name: daily_sam_sector_lte_stats_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX daily_sam_sector_lte_stats_idx ON daily_sam_sector_lte_stats USING btree (item_date, market);


--
-- Name: daily_sam_sector_lte_stats_idx1; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX daily_sam_sector_lte_stats_idx1 ON daily_sam_sector_lte_stats USING btree (cascade_id);


--
-- Name: daily_sam_sector_lte_stats_itmdt_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX daily_sam_sector_lte_stats_itmdt_ix ON daily_sam_sector_lte_stats USING btree (item_date);


--
-- Name: lte_daily_sam_sector_lte_stats_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER lte_daily_sam_sector_lte_stats_trigger_part
    BEFORE INSERT ON daily_sam_sector_lte_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_sam_sector_lte_stats_part();


--
-- PostgreSQL database dump complete
--

