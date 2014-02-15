--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw_evdo, pg_catalog;

DROP INDEX dw_evdo.sam_evdo_bts_cc_type_params_dim_ux;
DROP INDEX dw_evdo.sam_evdo_bts_cc_type_params_dim_i1;
ALTER TABLE ONLY dw_evdo.sam_evdo_bts_cc_type_params_dim DROP CONSTRAINT sam_evdo_bts_cc_type_params_dim_pk;
DROP TABLE dw_evdo.sam_evdo_bts_cc_type_params_dim;
SET search_path = dw_evdo, pg_catalog;

SET default_tablespace = p2_dw_evdodata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_cc_type_params_dim; Type: TABLE; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdodata
--

CREATE TABLE sam_evdo_bts_cc_type_params_dim (
    sam_evdo_bts_cc_type_params_dim_id integer DEFAULT nextval('sam_evdo_bts_cc_type_params_dim_seq'::regclass) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    cc_type integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    bts_evdo_ctrl_ch_access_parameters_cycle_period integer,
    bts_evdo_ctrl_ch_control_channel_rate_0 integer,
    bts_evdo_ctrl_ch_control_channel_rate_1 integer,
    bts_evdo_ctrl_ch_control_channel_rate_2 integer,
    bts_evdo_ctrl_ch_control_channel_rate_3 integer,
    bts_evdo_ctrl_ch_control_channel_rate_4 integer,
    bts_evdo_ctrl_ch_control_channel_rate_5 integer,
    bts_evdo_ctrl_ch_min_sub_sync_capsule_slot_cycle integer,
    bts_evdo_ctrl_ch_quick_pi_per_group_count_0 integer,
    bts_evdo_ctrl_ch_quick_pi_per_group_count_1 integer,
    bts_evdo_ctrl_ch_quick_pi_per_group_count_2 integer,
    bts_evdo_ctrl_ch_quick_pi_per_group_count_3 integer,
    bts_evdo_ctrl_ch_quick_pi_per_group_count_4 integer,
    bts_evdo_ctrl_ch_quick_pi_per_group_count_5 integer,
    bts_evdo_ctrl_ch_reverse_rate_limit_cycle_period integer,
    bts_evdo_ctrl_ch_rpc_count integer,
    bts_evdo_ctrl_ch_rpc_count_127_to_64 integer,
    bts_evdo_ctrl_ch_rpc_count_127_to_64_included integer,
    bts_evdo_ctrl_ch_sector_parameters_cycle_period integer,
    bts_evdo_ctrl_ch_status integer,
    bts_evdo_ctrl_ch_sync_capsule_offset_0 integer,
    bts_evdo_ctrl_ch_sync_capsule_offset_1 integer,
    bts_evdo_ctrl_ch_sync_capsule_offset_2 integer,
    bts_evdo_ctrl_ch_sync_capsule_offset_3 integer,
    bts_evdo_ctrl_ch_sync_capsule_offset_4 integer,
    bts_evdo_ctrl_ch_sync_capsule_offset_5 integer,
    bts_evdo_ctrl_ch_sync_cycle_period integer,
    bts_evdo_dec_deskew_buffer_active_flag integer,
    bts_evdo_dec_deskew_buffer_time integer,
    bts_evdo_dec_dsc_target_byte_alpha_dup integer,
    bts_evdo_dec_flow_control_frames_per_indication integer,
    bts_evdo_dec_flow_control_watchdog_time integer,
    bts_evdo_dec_idle_slot_gain_in_eighthdb integer,
    bts_evdo_dec_inter_rat_hoff_rpc_delta integer,
    bts_evdo_dec_inter_rat_tx_cycle integer,
    bts_evdo_dec_quick_page_send_enabled integer,
    bts_evdo_dec_sector_delay_0 integer,
    bts_evdo_dec_sector_delay_1 integer,
    bts_evdo_dec_sector_delay_2 integer,
    bts_evdo_dec_sector_delay_3 integer,
    bts_evdo_dec_sector_delay_4 integer,
    bts_evdo_dec_sector_delay_5 integer,
    bts_evdo_dec_status integer,
    bts_evdo_dec_timing_advance integer,
    bts_evdo_rab_cac_threshold_0 integer,
    bts_evdo_rab_cac_threshold_1 integer,
    bts_evdo_rab_cac_threshold_2 integer,
    bts_evdo_rab_cac_threshold_3 integer,
    bts_evdo_rab_cac_threshold_4 integer,
    bts_evdo_rab_cac_threshold_5 integer,
    bts_evdo_rab_ra_channel_gain_0 integer,
    bts_evdo_rab_ra_channel_gain_1 integer,
    bts_evdo_rab_ra_channel_gain_2 integer,
    bts_evdo_rab_ra_channel_gain_3 integer,
    bts_evdo_rab_ra_channel_gain_4 integer,
    bts_evdo_rab_ra_channel_gain_5 integer,
    bts_evdo_rab_rab_length integer,
    bts_evdo_rab_rab_offset_0 integer,
    bts_evdo_rab_rab_offset_1 integer,
    bts_evdo_rab_rab_offset_2 integer,
    bts_evdo_rab_rab_offset_3 integer,
    bts_evdo_rab_rab_offset_4 integer,
    bts_evdo_rab_rab_offset_5 integer,
    bts_evdo_rab_rlmac_rot_minwindow integer,
    bts_evdo_rab_rlmac_thermal_method integer,
    bts_evdo_rab_rlmac_timeconstant_rot integer,
    bts_evdo_rab_rlmac_timeconstant_thermal integer,
    bts_evdo_rab_rot_threshold_0 integer,
    bts_evdo_rab_rot_threshold_1 integer,
    bts_evdo_rab_rot_threshold_2 integer,
    bts_evdo_rab_rot_threshold_3 integer,
    bts_evdo_rab_rot_threshold_4 integer,
    bts_evdo_rab_rot_threshold_5 integer,
    bts_evdo_rab_status integer,
    bts_evdo_rab_thermal_noise_thr_a integer,
    bts_evdo_rab_thermal_noise_thr_b integer
);


SET default_tablespace = p2_dw_evdoindex;

--
-- Name: sam_evdo_bts_cc_type_params_dim_pk; Type: CONSTRAINT; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

ALTER TABLE ONLY sam_evdo_bts_cc_type_params_dim
    ADD CONSTRAINT sam_evdo_bts_cc_type_params_dim_pk PRIMARY KEY (sam_evdo_bts_cc_type_params_dim_id);


--
-- Name: sam_evdo_bts_cc_type_params_dim_i1; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE INDEX sam_evdo_bts_cc_type_params_dim_i1 ON sam_evdo_bts_cc_type_params_dim USING btree (shorter_bsm_name, bts, effective_begin, effective_end);


--
-- Name: sam_evdo_bts_cc_type_params_dim_ux; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE UNIQUE INDEX sam_evdo_bts_cc_type_params_dim_ux ON sam_evdo_bts_cc_type_params_dim USING btree (shorter_bsm_name, bsc_name, bts, cc_type, effective_begin);


--
-- PostgreSQL database dump complete
--

