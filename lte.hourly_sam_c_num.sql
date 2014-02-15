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

DROP TRIGGER hourly_sam_c_num_trigger_part ON lte.hourly_sam_c_num;
DROP INDEX lte.ix02_hourly_sam_c_num;
DROP INDEX lte.ix01_hourly_sam_c_num;
DROP INDEX lte.hourly_sam_c_num_itmdt_ix;
DROP INDEX lte.hourly_sam_c_num_idx;
DROP TABLE lte.hourly_sam_c_num;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_c_num; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE hourly_sam_c_num (
    item_date date,
    lsm_name character varying(30),
    sw_release character varying(32),
    enodeb_id integer,
    hour integer,
    minute integer,
    c_num character varying(32),
    air_mac_byte_dl bigint,
    air_mac_byte_dl_cnt bigint,
    air_mac_byte_dl_current bigint,
    air_mac_byte_ul bigint,
    air_mac_byte_ul_cnt bigint,
    air_mac_byte_ul_current bigint,
    air_mac_dl_efctiv_thru real,
    air_mac_dl_thru real,
    air_mac_tti_dl bigint,
    air_mac_tti_ul bigint,
    air_mac_ul_efctiv_thru real,
    air_mac_ul_thru real,
    ecc_radio_link_failure bigint,
    pdcp_sdu_bitrate_dl real,
    pdcp_sdu_bitrate_dl_cnt bigint,
    pdcp_sdu_bitrate_dl_tot real,
    pdcp_sdu_bitrate_ul real,
    pdcp_sdu_bitrate_ul_cnt bigint,
    pdcp_sdu_bitrate_ul_tot real,
    avg_cell_thru_dl real,
    avg_cell_thru_ul real,
    cell_unavailable_time_down bigint,
    cell_unavailable_time_lock bigint,
    tot_prb_dl real,
    tot_prb_dl_cnt bigint,
    tot_prb_dl_max real,
    tot_prb_dl_tot real,
    tot_prb_ul real,
    tot_prb_ul_cnt bigint,
    tot_prb_ul_max real,
    tot_prb_ul_tot real,
    att_paging bigint,
    discarded_nbr bigint,
    interference_power real,
    interference_power_cnt bigint,
    interference_power_tot real,
    rssi_over_path real,
    rssi_over_path_cnt bigint,
    rssi_over_path_tot real,
    rachusage real,
    rachusage_cnt bigint,
    rachusage_tot real,
    conn_cnt bigint,
    conn_max real,
    conn_no real,
    conn_tot real,
    release_call_cnt bigint,
    release_call_holding_time real,
    release_call_holding_time_tot real,
    conn_reconfig_att bigint,
    conn_reconfig_succ bigint,
    cell_avail_pm_period_time bigint,
    eutran_cell_availability real,
    read_cell_unavailable_time bigint,
    tot_gbr_prb_dl real,
    tot_gbr_prb_dl_cnt bigint,
    tot_gbr_prb_dl_max real,
    tot_gbr_prb_dl_min real,
    tot_gbr_prb_dl_tot real,
    tot_gbr_prb_ul real,
    tot_gbr_prb_ul_cnt bigint,
    tot_gbr_prb_ul_max real,
    tot_gbr_prb_ul_min real,
    tot_gbr_prb_ul_tot real,
    tot_ngbr_prb_dl real,
    tot_ngbr_prb_dl_cnt bigint,
    tot_ngbr_prb_dl_max real,
    tot_ngbr_prb_dl_min real,
    tot_ngbr_prb_dl_tot real,
    tot_ngbr_prb_ul real,
    tot_ngbr_prb_ul_cnt bigint,
    tot_ngbr_prb_ul_max real,
    tot_ngbr_prb_ul_min real,
    tot_ngbr_prb_ul_tot real,
    tot_prb_dl_min real,
    tot_prb_ul_min real,
    session_time_ue real,
    session_time_ue_tot real,
    intra_freq_out_att bigint,
    intra_freq_out_succ bigint,
    high_speed_monitoring bigint,
    noof_high_speed bigint,
    avg_ue_thru_dl real,
    peak_cell_thru_dl real,
    peak_cell_thru_ul real,
    peak_ue_thru_dl real
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_lteindex;

--
-- Name: hourly_sam_c_num_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_idx ON hourly_sam_c_num USING btree (item_date, enodeb_id);


--
-- Name: hourly_sam_c_num_itmdt_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_itmdt_ix ON hourly_sam_c_num USING btree (item_date);


--
-- Name: ix01_hourly_sam_c_num; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX ix01_hourly_sam_c_num ON hourly_sam_c_num USING btree (lsm_name, item_date, hour, minute);


--
-- Name: ix02_hourly_sam_c_num; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX ix02_hourly_sam_c_num ON hourly_sam_c_num USING btree (enodeb_id);


--
-- Name: hourly_sam_c_num_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER hourly_sam_c_num_trigger_part
    BEFORE INSERT ON hourly_sam_c_num
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_c_num_part();


--
-- PostgreSQL database dump complete
--

