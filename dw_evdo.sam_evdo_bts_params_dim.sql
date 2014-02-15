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

DROP INDEX dw_evdo.sam_evdo_bts_params_dim_ux;
DROP INDEX dw_evdo.sam_evdo_bts_params_dim_i1;
ALTER TABLE ONLY dw_evdo.sam_evdo_bts_params_dim DROP CONSTRAINT sam_evdo_bts_params_dim_pk;
DROP TABLE dw_evdo.sam_evdo_bts_params_dim;
SET search_path = dw_evdo, pg_catalog;

SET default_tablespace = p2_dw_evdodata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_params_dim; Type: TABLE; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdodata
--

CREATE TABLE sam_evdo_bts_params_dim (
    sam_evdo_bts_params_dim_id integer DEFAULT nextval('sam_evdo_bts_params_dim_seq'::regclass) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    bts_evdo_ac_pac_correct_flag integer,
    bts_evdo_ac_pac_dhkey_flag integer,
    bts_evdo_ac_pac_status integer,
    bts_evdo_call_access_primary_bsc_id integer,
    bts_evdo_call_access_primary_bsc_rack_id integer,
    bts_evdo_call_access_primary_cmp_ip_v4 character varying,
    bts_evdo_call_access_primary_cmp_ip_v6 character varying,
    bts_evdo_call_access_primary_cmp_ip_ver character varying,
    bts_evdo_call_access_secondary_bsc_id integer,
    bts_evdo_call_access_secondary_bsc_rack_id integer,
    bts_evdo_call_access_secondary_cmp_ip_v4 character varying,
    bts_evdo_call_access_secondary_cmp_ip_v6 character varying,
    bts_evdo_call_access_secondary_cmp_ip_ver character varying,
    bts_evdo_call_access_secondary_used_flag character varying,
    bts_evdo_call_access_status integer,
    bts_evdo_dec_ovld_ctrl_overload_ctrl_enabled integer,
    bts_evdo_dec_ovld_ctrl_overload_ctrl_min_dormancy_timer integer,
    bts_evdo_dec_ovld_ctrl_overload_ctrl_user_thrsh_127_to_0 integer,
    bts_evdo_dec_ovld_ctrl_overload_ctrl_user_thrsh_63_to_0 integer,
    bts_evdo_dec_ovld_ctrl_status integer,
    bts_evdo_drc_lock_drc_filter_locked_threshold integer,
    bts_evdo_drc_lock_drc_filter_time_constant integer,
    bts_evdo_drc_lock_drc_filter_unlocked_threshold integer,
    bts_evdo_drc_lock_drc_lock_locked_threshold integer,
    bts_evdo_drc_lock_drc_lock_time_constant integer,
    bts_evdo_drc_lock_drc_lock_unlocked_threshold integer,
    bts_evdo_drc_lock_status integer,
    bts_evdo_drh_crm_ka_lperiod integer,
    bts_evdo_drh_crm_ka_rcount integer,
    bts_evdo_drh_crm_ka_speriod integer,
    bts_evdo_drh_crm_sts_ind_tout integer,
    bts_evdo_drh_inter_band_fa_select character varying,
    bts_evdo_drh_status integer,
    bts_evdo_enhanced_flow_control_d_max integer,
    bts_evdo_enhanced_flow_control_d_min integer,
    bts_evdo_enhanced_flow_control_filttp_tc integer,
    bts_evdo_enhanced_flow_control_k integer,
    bts_evdo_enhanced_flow_control_min_target_q_bts integer,
    bts_evdo_enhanced_flow_control_q_bts_threshold integer,
    bts_evdo_enhanced_flow_control_status integer,
    bts_evdo_enhanced_flow_control_target_q_dec_const integer,
    bts_evdo_enhanced_flow_control_target_q_inc_fact integer,
    bts_evdo_enhanced_flow_control_watchdog_time integer,
    bts_evdo_load_threshold_apersist_downdelta integer,
    bts_evdo_load_threshold_apersist_downwait integer,
    bts_evdo_load_threshold_apersist_updelta integer,
    bts_evdo_load_threshold_apersist_upwait integer,
    bts_evdo_load_threshold_control_mode integer,
    bts_evdo_load_threshold_convergence_point integer,
    bts_evdo_load_threshold_critical_max integer,
    bts_evdo_load_threshold_critical_psist_0 integer,
    bts_evdo_load_threshold_critical_psist_1 integer,
    bts_evdo_load_threshold_critical_psist_2 integer,
    bts_evdo_load_threshold_critical_psist_3 integer,
    bts_evdo_load_threshold_downgrade_wait integer,
    bts_evdo_load_threshold_init_psist_0 integer,
    bts_evdo_load_threshold_init_psist_1 integer,
    bts_evdo_load_threshold_init_psist_2 integer,
    bts_evdo_load_threshold_init_psist_3 integer,
    bts_evdo_load_threshold_major_max integer,
    bts_evdo_load_threshold_major_psist_0 integer,
    bts_evdo_load_threshold_major_psist_1 integer,
    bts_evdo_load_threshold_major_psist_2 integer,
    bts_evdo_load_threshold_major_psist_3 integer,
    bts_evdo_load_threshold_max_psist_0 integer,
    bts_evdo_load_threshold_max_psist_1 integer,
    bts_evdo_load_threshold_max_psist_2 integer,
    bts_evdo_load_threshold_max_psist_3 integer,
    bts_evdo_load_threshold_minor_max integer,
    bts_evdo_load_threshold_minor_psist_0 integer,
    bts_evdo_load_threshold_minor_psist_1 integer,
    bts_evdo_load_threshold_minor_psist_2 integer,
    bts_evdo_load_threshold_minor_psist_3 integer,
    bts_evdo_load_threshold_sec_rack_sel_th integer,
    bts_evdo_load_threshold_status integer,
    bts_evdo_load_threshold_upgrade_wait integer,
    bts_evdo_pic_pic_alarm_threshold integer,
    bts_evdo_pic_pic_used_flag integer,
    bts_evdo_pic_status integer,
    bts_evdo_pilot_group_id_band_class_cell_pilot_group_id integer,
    bts_evdo_pilot_group_id_band_class_pcs_pilot_group_id integer,
    bts_evdo_pilot_group_id_status integer,
    bts_evdo_qc_drc_rtch_acquisition_window_size_in_8chip integer,
    bts_evdo_qc_drc_rtch_data_window_size_in_8chip integer,
    bts_evdo_qc_drc_rtch_drc_eras_map_max_muser_packet_size integer,
    bts_evdo_qc_drc_rtch_drc_eras_map_softer_mcast_enabled character varying,
    bts_evdo_qc_drc_rtch_drc_filter_locked_threshold integer,
    bts_evdo_qc_drc_rtch_drc_filter_time_constant integer,
    bts_evdo_qc_drc_rtch_drc_filter_unlocked_threshold integer,
    bts_evdo_qc_drc_rtch_drc_lock_locked_threshold integer,
    bts_evdo_qc_drc_rtch_drc_lock_time_constant integer,
    bts_evdo_qc_drc_rtch_drc_lock_unlocked_threshold integer,
    bts_evdo_qc_drc_rtch_eras_threshold_length_in_slots integer,
    bts_evdo_qc_drc_rtch_mt_acquired_locked_slot_count integer,
    bts_evdo_qc_drc_rtch_mt_acquired_slot_cycle_count integer,
    bts_evdo_qc_drc_rtch_mt_acquired_unlocked_slot_count integer,
    bts_evdo_qc_drc_rtch_reverse_link__silence_duration integer,
    bts_evdo_qc_drc_rtch_reverse_link__silence_period integer,
    bts_evdo_qc_drc_rtch_status integer,
    bts_evdo_qos_link_be_min_bandwidth integer,
    bts_evdo_qos_link_daisy_alloc_bandwidth integer,
    bts_evdo_qos_link_link_alloc_option integer,
    bts_evdo_qos_link_link_congestion_option integer,
    bts_evdo_qos_link_status integer,
    bts_evdo_qos_rvs_scheduler_autonomous_mode_flag integer,
    bts_evdo_qos_rvs_scheduler_be_cac_onoff integer,
    bts_evdo_qos_rvs_scheduler_downgrade_period integer,
    bts_evdo_qos_rvs_scheduler_downgrade_release integer,
    bts_evdo_qos_rvs_scheduler_downgrade_rot_threshold_0 integer,
    bts_evdo_qos_rvs_scheduler_downgrade_rot_threshold_1 integer,
    bts_evdo_qos_rvs_scheduler_downgrade_rot_threshold_2 integer,
    bts_evdo_qos_rvs_scheduler_hold_duration integer,
    bts_evdo_qos_rvs_scheduler_max_interference_factor_0 integer,
    bts_evdo_qos_rvs_scheduler_max_interference_factor_1 integer,
    bts_evdo_qos_rvs_scheduler_max_interference_factor_2 integer,
    bts_evdo_qos_rvs_scheduler_min_sector_load_threshold_0 integer,
    bts_evdo_qos_rvs_scheduler_min_sector_load_threshold_1 integer,
    bts_evdo_qos_rvs_scheduler_min_sector_load_threshold_2 integer,
    bts_evdo_qos_rvs_scheduler_monitor_time_constant integer,
    bts_evdo_qos_rvs_scheduler_nitial_interference_factor_0 integer,
    bts_evdo_qos_rvs_scheduler_nitial_interference_factor_1 integer,
    bts_evdo_qos_rvs_scheduler_nitial_interference_factor_2 integer,
    bts_evdo_qos_rvs_scheduler_nominal_ecpnt integer,
    bts_evdo_qos_rvs_scheduler_st1_nonqos_rri_threshold integer,
    bts_evdo_qos_rvs_scheduler_st2_nonqos_min_t2p integer,
    bts_evdo_qos_rvs_scheduler_st2_nonqos_rri_threshold integer,
    bts_evdo_qos_rvs_scheduler_st3_nonqos_min_t2p_0 integer,
    bts_evdo_qos_rvs_scheduler_st3_nonqos_min_t2p_1 integer,
    bts_evdo_qos_rvs_scheduler_st3_nonqos_min_t2p_2 integer,
    bts_evdo_qos_rvs_scheduler_st3_nonqos_min_t2p_3 integer,
    bts_evdo_qos_rvs_scheduler_st3_nonqos_rri_threshold_0 integer,
    bts_evdo_qos_rvs_scheduler_st3_nonqos_rri_threshold_1 integer,
    bts_evdo_qos_rvs_scheduler_st3_nonqos_rri_threshold_2 integer,
    bts_evdo_qos_rvs_scheduler_st3_nonqos_rri_threshold_3 integer,
    bts_evdo_qos_rvs_scheduler_status integer,
    bts_evdo_qos_rvs_scheduler_tt_downgrade integer,
    bts_evdo_qos_rvs_scheduler_tt_upgrade integer,
    bts_evdo_qos_rvs_scheduler_upgrade_period integer,
    bts_evdo_qos_rvs_scheduler_upgrade_rot_threshold_0 integer,
    bts_evdo_qos_rvs_scheduler_upgrade_rot_threshold_1 integer,
    bts_evdo_qos_rvs_scheduler_upgrade_rot_threshold_2 integer,
    bts_evdo_rpc_pwr_alloc_delta_soft_softer integer,
    bts_evdo_rpc_pwr_alloc_erased_drc_target_sinr integer,
    bts_evdo_rpc_pwr_alloc_null_drc_delta integer,
    bts_evdo_rpc_pwr_alloc_rab_power_fraction integer,
    bts_evdo_rpc_pwr_alloc_sinr_filter_time_constant integer,
    bts_evdo_rpc_pwr_alloc_softer_handoff_delta integer,
    bts_evdo_rpc_pwr_alloc_status integer,
    bts_evdo_rpc_pwr_alloc_target_rpc_ebno_in_db integer,
    bts_evdo_rpc_pwr_alloc_three_plusway_soft_handoff_delta integer,
    bts_evdo_rpc_pwr_alloc_two_way_soft_handoff_delta integer,
    bts_evdo_rvs_silence_reverse_link__silence_duration integer,
    bts_evdo_rvs_silence_reverse_link__silence_period integer,
    bts_evdo_rvs_silence_status integer,
    bts_evdo_rvs_tch_acquisition_window_size_0 integer,
    bts_evdo_rvs_tch_acquisition_window_size_1 integer,
    bts_evdo_rvs_tch_acquisition_window_size_2 integer,
    bts_evdo_rvs_tch_acquisition_window_size_3 integer,
    bts_evdo_rvs_tch_acquisition_window_size_4 integer,
    bts_evdo_rvs_tch_acquisition_window_size_5 integer,
    bts_evdo_rvs_tch_data_window_size_0 integer,
    bts_evdo_rvs_tch_data_window_size_1 integer,
    bts_evdo_rvs_tch_data_window_size_2 integer,
    bts_evdo_rvs_tch_data_window_size_3 integer,
    bts_evdo_rvs_tch_data_window_size_4 integer,
    bts_evdo_rvs_tch_data_window_size_5 integer,
    bts_evdo_rvs_tch_mt_acquired_locked_slot_count integer,
    bts_evdo_rvs_tch_mt_acquired_slot_cycle_count integer,
    bts_evdo_rvs_tch_mt_acquired_unlocked_slot_count integer,
    bts_evdo_rvs_tch_pc_eras_delta integer,
    bts_evdo_rvs_tch_pc_setpoint integer,
    bts_evdo_rvs_tch_status integer,
    bts_evdo_sync_msg_maximum_revision integer,
    bts_evdo_sync_msg_minimum_revision integer,
    bts_evdo_sync_msg_status integer
);


SET default_tablespace = p2_dw_evdoindex;

--
-- Name: sam_evdo_bts_params_dim_pk; Type: CONSTRAINT; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

ALTER TABLE ONLY sam_evdo_bts_params_dim
    ADD CONSTRAINT sam_evdo_bts_params_dim_pk PRIMARY KEY (sam_evdo_bts_params_dim_id);


--
-- Name: sam_evdo_bts_params_dim_i1; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE INDEX sam_evdo_bts_params_dim_i1 ON sam_evdo_bts_params_dim USING btree (shorter_bsm_name, bts, effective_begin, effective_end);


--
-- Name: sam_evdo_bts_params_dim_ux; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE UNIQUE INDEX sam_evdo_bts_params_dim_ux ON sam_evdo_bts_params_dim USING btree (shorter_bsm_name, bsc_name, bts, effective_begin);


--
-- PostgreSQL database dump complete
--

