--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = stg, pg_catalog;

ALTER TABLE ONLY stg.sam_voice_bts_params DROP CONSTRAINT sam_voice_bts_params_pk;
DROP TABLE stg.sam_voice_bts_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_voice_bts_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    bts_1x_advanced_ack_power_gain_delta1 integer,
    bts_1x_advanced_ack_power_gain_delta2 integer,
    bts_1x_advanced_ack_power_gain_delta3 integer,
    bts_1x_advanced_ack_power_gain_delta4 integer,
    bts_1x_advanced_status integer,
    bts_1x_fe_bandwidth_packet_bandwidth integer,
    bts_1x_fe_bandwidth_seq_num integer,
    bts_1x_fe_bandwidth_status integer,
    bts_1x_fe_bandwidth_voice_bandwidth integer,
    bts_acd_function_acd_state character varying,
    bts_acd_function_status character varying,
    bts_ant_diversity_type integer,
    bts_band_class_type character varying,
    bts_battery_reserved integer,
    bts_battery_status character varying,
    bts_battery_test_status integer,
    bts_battery_test_test_flag character varying,
    bts_battery_test_test_period integer,
    bts_battery_test_test_start_day integer,
    bts_battery_test_test_start_hour integer,
    bts_battery_test_test_start_min integer,
    bts_battery_test_test_start_month integer,
    bts_battery_test_test_start_year integer,
    bts_bcp_call_ctrl_data2_base_class integer,
    bts_bcp_call_ctrl_data2_cdma_freq_0 integer,
    bts_bcp_call_ctrl_data2_cdma_freq_1 integer,
    bts_bcp_call_ctrl_data2_cdma_freq_10 integer,
    bts_bcp_call_ctrl_data2_cdma_freq_2 integer,
    bts_bcp_call_ctrl_data2_cdma_freq_3 integer,
    bts_bcp_call_ctrl_data2_cdma_freq_4 integer,
    bts_bcp_call_ctrl_data2_cdma_freq_5 integer,
    bts_bcp_call_ctrl_data2_cdma_freq_6 integer,
    bts_bcp_call_ctrl_data2_cdma_freq_7 integer,
    bts_bcp_call_ctrl_data2_cdma_freq_8 integer,
    bts_bcp_call_ctrl_data2_cdma_freq_9 integer,
    bts_bcp_call_ctrl_data2_chg_sid integer,
    bts_bcp_call_ctrl_data2_ext_cdma_freq_0 integer,
    bts_bcp_call_ctrl_data2_ext_cdma_freq_1 integer,
    bts_bcp_call_ctrl_data2_ext_cdma_freq_10 integer,
    bts_bcp_call_ctrl_data2_ext_cdma_freq_2 integer,
    bts_bcp_call_ctrl_data2_ext_cdma_freq_3 integer,
    bts_bcp_call_ctrl_data2_ext_cdma_freq_4 integer,
    bts_bcp_call_ctrl_data2_ext_cdma_freq_5 integer,
    bts_bcp_call_ctrl_data2_ext_cdma_freq_6 integer,
    bts_bcp_call_ctrl_data2_ext_cdma_freq_7 integer,
    bts_bcp_call_ctrl_data2_ext_cdma_freq_8 integer,
    bts_bcp_call_ctrl_data2_ext_cdma_freq_9 integer,
    bts_bcp_call_ctrl_data2_plus_base_id integer,
    bts_bcp_call_ctrl_data2_plus_packet_zone_id integer,
    bts_bcp_call_ctrl_data2_status integer,
    bts_bcp_call_ctrl_data2_sup_cdma_chan integer,
    bts_bd_type character varying,
    bts_brc_access_conv_nontd_f_sch_delta_p_margin_max integer,
    bts_brc_access_conv_nontd_f_sch_delta_p_margin_min integer,
    bts_brc_access_conv_nontd_f_sch_ebnt_rc3 integer,
    bts_brc_access_conv_nontd_f_sch_ebnt_rc4 integer,
    bts_brc_access_conv_nontd_f_sch_ebnt_rc5 integer,
    bts_brc_access_conv_nontd_f_sch_offset_115200 integer,
    bts_brc_access_conv_nontd_f_sch_offset_14400 integer,
    bts_brc_access_conv_nontd_f_sch_offset_153600_rc3 integer,
    bts_brc_access_conv_nontd_f_sch_offset_153600_rc4 integer,
    bts_brc_access_conv_nontd_f_sch_offset_19200_rc3 integer,
    bts_brc_access_conv_nontd_f_sch_offset_19200_rc4 integer,
    bts_brc_access_conv_nontd_f_sch_offset_230400 integer,
    bts_brc_access_conv_nontd_f_sch_offset_28800 integer,
    bts_brc_access_conv_nontd_f_sch_offset_307200_rc3 integer,
    bts_brc_access_conv_nontd_f_sch_offset_307200_rc4 integer,
    bts_brc_access_conv_nontd_f_sch_offset_38400_rc3 integer,
    bts_brc_access_conv_nontd_f_sch_offset_38400_rc4 integer,
    bts_brc_access_conv_nontd_f_sch_offset_57600 integer,
    bts_brc_access_conv_nontd_f_sch_offset_76800_rc3 integer,
    bts_brc_access_conv_nontd_f_sch_offset_76800_rc4 integer,
    bts_brc_access_conv_nontd_f_sch_offset_9600_rc3 integer,
    bts_brc_access_conv_nontd_f_sch_offset_9600_rc4 integer,
    bts_brc_access_conv_nontd_f_sch_offset_nonras_rc3 integer,
    bts_brc_access_conv_nontd_f_sch_offset_nonras_rc4 integer,
    bts_brc_access_conv_nontd_f_sch_offset_nonras_rc5 integer,
    bts_brc_access_conv_nontd_f_sch_offset_rc3 integer,
    bts_brc_access_conv_nontd_f_sch_offset_rc3_to_rc4 integer,
    bts_brc_access_conv_nontd_f_sch_offset_rc3_to_rc5 integer,
    bts_brc_access_conv_nontd_f_sch_offset_rc4 integer,
    bts_brc_access_conv_nontd_f_sch_offset_rc4_to_rc3 integer,
    bts_brc_access_conv_nontd_f_sch_offset_rc4_to_rc5 integer,
    bts_brc_access_conv_nontd_f_sch_offset_rc5 integer,
    bts_brc_access_conv_nontd_f_sch_offset_rc5_to_rc3 integer,
    bts_brc_access_conv_nontd_f_sch_offset_rc5_to_rc4 integer,
    bts_brc_access_conv_nontd_f_sch_p_margin_dec_step integer,
    bts_brc_access_conv_nontd_f_sch_p_margin_dec_threshold integer,
    bts_brc_access_conv_nontd_f_sch_p_margin_inc_step integer,
    bts_brc_access_conv_nontd_f_sch_p_margin_inc_threshold integer,
    bts_brc_access_conv_nontd_f_sch_p_margin_max integer,
    bts_brc_access_conv_nontd_f_sch_p_margin_min integer,
    bts_brc_access_conv_nontd_status integer,
    bts_brc_access_turbo_nontd_f_sch_delta_p_margin_max integer,
    bts_brc_access_turbo_nontd_f_sch_delta_p_margin_min integer,
    bts_brc_access_turbo_nontd_f_sch_ebnt_rc3 integer,
    bts_brc_access_turbo_nontd_f_sch_ebnt_rc4 integer,
    bts_brc_access_turbo_nontd_f_sch_ebnt_rc5 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_115200 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_14400 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_153600_rc3 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_153600_rc4 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_19200_rc3 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_19200_rc4 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_230400 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_28800 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_307200_rc3 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_307200_rc4 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_38400_rc3 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_38400_rc4 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_57600 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_76800_rc3 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_76800_rc4 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_9600_rc3 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_9600_rc4 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_nonras_rc3 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_nonras_rc4 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_nonras_rc5 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_rc3 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_rc3_to_rc4 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_rc3_to_rc5 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_rc4 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_rc4_to_rc3 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_rc4_to_rc5 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_rc5 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_rc5_to_rc3 integer,
    bts_brc_access_turbo_nontd_f_sch_offset_rc5_to_rc4 integer,
    bts_brc_access_turbo_nontd_f_sch_p_margin_dec_step integer,
    bts_brc_access_turbo_nontd_f_sch_p_margin_dec_threshold integer,
    bts_brc_access_turbo_nontd_f_sch_p_margin_inc_step integer,
    bts_brc_access_turbo_nontd_f_sch_p_margin_inc_threshold integer,
    bts_brc_access_turbo_nontd_f_sch_p_margin_max integer,
    bts_brc_access_turbo_nontd_f_sch_p_margin_min integer,
    bts_brc_access_turbo_nontd_status integer,
    bts_bss_control_bss_control_para0 integer,
    bts_bss_control_bss_control_para1 integer,
    bts_bss_control_bss_control_para2 integer,
    bts_bss_control_bss_control_para3 integer,
    bts_bss_control_bss_control_para4 integer,
    bts_bss_control_bss_control_para5 integer,
    bts_bss_control_bss_control_para6 integer,
    bts_bss_control_bss_control_para7 integer,
    bts_bss_control_bss_control_para8 integer,
    bts_bss_control_bss_control_para9 integer,
    bts_bss_control_cam_retry_support integer,
    bts_bss_control_cs_supported integer,
    bts_bss_control_status integer,
    bts_bts_class integer,
    bts_bts_name character varying,
    bts_bts_placement_type character varying,
    bts_bts_type character varying,
    bts_call_access_call_access_control_1 integer,
    bts_call_access_call_access_control_2 integer,
    bts_call_access_call_access_control_3 integer,
    bts_call_access_call_access_control_4 integer,
    bts_call_access_call_access_control_5 integer,
    bts_call_access_call_access_control_6 integer,
    bts_call_access_call_access_control_7 integer,
    bts_call_access_call_access_control_8 integer,
    bts_call_access_primary_bsc_id integer,
    bts_call_access_primary_bsc_rack_id integer,
    bts_call_access_primary_cmp_ip_v4 character varying,
    bts_call_access_primary_cmp_ip_v6 character varying,
    bts_call_access_primary_cmp_ip_ver character varying,
    bts_call_access_secondary_bsc_id integer,
    bts_call_access_secondary_bsc_rack_id integer,
    bts_call_access_secondary_cmp_ip_v4 character varying,
    bts_call_access_secondary_cmp_ip_v6 character varying,
    bts_call_access_secondary_cmp_ip_ver character varying,
    bts_call_access_secondary_used_flag character varying,
    bts_call_access_status integer,
    bts_cdma_redirect_band_class integer,
    bts_cdma_redirect_cdma_chan_0 integer,
    bts_cdma_redirect_cdma_chan_1 integer,
    bts_cdma_redirect_cdma_chan_10 integer,
    bts_cdma_redirect_cdma_chan_11 integer,
    bts_cdma_redirect_cdma_chan_12 integer,
    bts_cdma_redirect_cdma_chan_13 integer,
    bts_cdma_redirect_cdma_chan_14 integer,
    bts_cdma_redirect_cdma_chan_15 integer,
    bts_cdma_redirect_cdma_chan_2 integer,
    bts_cdma_redirect_cdma_chan_3 integer,
    bts_cdma_redirect_cdma_chan_4 integer,
    bts_cdma_redirect_cdma_chan_5 integer,
    bts_cdma_redirect_cdma_chan_6 integer,
    bts_cdma_redirect_cdma_chan_7 integer,
    bts_cdma_redirect_cdma_chan_8 integer,
    bts_cdma_redirect_cdma_chan_9 integer,
    bts_cdma_redirect_excl_p_rev_ms integer,
    bts_cdma_redirect_expected_nid integer,
    bts_cdma_redirect_expected_sid integer,
    bts_cdma_redirect_ignore_cdma integer,
    bts_cdma_redirect_max_redirect_delay integer,
    bts_cdma_redirect_num_chan integer,
    bts_cdma_redirect_redirect_accolc integer,
    bts_cdma_redirect_redirect_p_max integer,
    bts_cdma_redirect_redirect_p_min integer,
    bts_cdma_redirect_redirect_rec_type integer,
    bts_cdma_redirect_return_if_fail integer,
    bts_cdma_redirect_status integer,
    bts_cdma_redirect_sys_ordering integer,
    bts_ce_license_allocation_ce_license_count_1x integer,
    bts_ce_license_allocation_ce_license_count_do integer,
    bts_ce_license_allocation_status character varying,
    bts_cell_type character varying,
    bts_cfm_system_ais_suppress_ais_suppress_conf character varying,
    bts_cfm_system_ais_suppress_status character varying,
    bts_clock_sync_clock_sync character varying,
    bts_clock_sync_status integer,
    bts_clock_sync_sync_interval integer,
    bts_control_ach_provision character varying,
    bts_control_auth integer,
    bts_control_band_0_load_thr integer,
    bts_control_band_1_load_thr integer,
    bts_control_band_class_change integer,
    bts_control_bts_control_para14 integer,
    bts_control_bts_control_para15 integer,
    bts_control_bts_control_para16 integer,
    bts_control_bts_control_para17 integer,
    bts_control_bts_control_para18 integer,
    bts_control_bts_control_para19 integer,
    bts_control_bts_control_para2 integer,
    bts_control_bts_control_para20 integer,
    bts_control_bts_control_para21 integer,
    bts_control_bts_control_para22 integer,
    bts_control_bts_control_para4 integer,
    bts_control_bts_control_para7 integer,
    bts_control_bts_control_para8 integer,
    bts_control_bts_control_para9 integer,
    bts_control_cam_ctrl_flag integer,
    bts_control_jcs_log_interval integer,
    bts_control_mic_support integer,
    bts_control_page_seq_check character varying,
    bts_control_pwr_average_duration integer,
    bts_control_rand_change_period integer,
    bts_control_sch_duration_variable integer,
    bts_control_status integer,
    bts_description character varying,
    bts_diversity_rx_diversity_0 character varying,
    bts_diversity_rx_diversity_1 character varying,
    bts_diversity_status character varying,
    bts_diversity_tx_diversity_0 character varying,
    bts_diversity_tx_diversity_1 character varying,
    bts_dynamic_rc_para_dynamic_call_cnt integer,
    bts_dynamic_rc_para_dynamic_etc1 integer,
    bts_dynamic_rc_para_dynamic_etc2 integer,
    bts_dynamic_rc_para_dynamic_pwr_thr integer,
    bts_dynamic_rc_para_status integer,
    bts_efm_discovery_cycle integer,
    bts_efm_efm_dte_mode character varying,
    bts_efm_efm_local_lb_mode character varying,
    bts_efm_efm_status character varying,
    bts_efm_error_frame_threshold integer,
    bts_efm_error_frame_window integer,
    bts_efm_force_lb_rel_timer integer,
    bts_efm_keepalive_cycle integer,
    bts_efm_keepalive_retry integer,
    bts_efm_monitor_cycle integer,
    bts_efm_status character varying,
    bts_es_mode_end_time integer,
    bts_es_mode_es_mode character varying,
    bts_es_mode_interval integer,
    bts_es_mode_start_time integer,
    bts_es_mode_status integer,
    bts_evdo_advanced_scm_blocking_overload_state_for_casho integer,
    bts_evdo_advanced_scm_dormancy_time_for_high_load integer,
    bts_evdo_advanced_scm_dormancy_time_for_low_load integer,
    bts_evdo_advanced_scm_dormancy_time_for_med_load integer,
    bts_evdo_advanced_scm_mac_index_threshold_for_high_load integer,
    bts_evdo_advanced_scm_mac_index_threshold_for_low_load integer,
    bts_evdo_advanced_scm_mac_index_threshold_for_med_load integer,
    bts_evdo_advanced_scm_rab_threshold_for_high_load integer,
    bts_evdo_advanced_scm_rab_threshold_for_low_load integer,
    bts_evdo_advanced_scm_rab_threshold_for_med_load integer,
    bts_ext_cdma_freq integer,
    bts_ext_system_acc_ent_ho_order integer,
    bts_ext_system_acc_ho_list_upd integer,
    bts_ext_system_acc_probe_ho_other_msg integer,
    bts_ext_system_access_ho integer,
    bts_ext_system_access_ho_msg_rsp integer,
    bts_ext_system_access_probe_ho integer,
    bts_ext_system_add_intercept integer,
    bts_ext_system_auto_msg_interval integer,
    bts_ext_system_auto_msg_supported integer,
    bts_ext_system_bcast_index integer,
    bts_ext_system_bcch_supported integer,
    bts_ext_system_broadcast_qps_asst integer,
    bts_ext_system_cch_info_include integer,
    bts_ext_system_delete_for_tmsi integer,
    bts_ext_system_drop_intercept integer,
    bts_ext_system_enc_supported integer,
    bts_ext_system_ext_global_redirect integer,
    bts_ext_system_imsi_11_12_0 integer,
    bts_ext_system_imsi_11_12_1 integer,
    bts_ext_system_imsi_11_12_2 integer,
    bts_ext_system_imsi_t_supported integer,
    bts_ext_system_max_num_alt_so integer,
    bts_ext_system_max_num_probe_ho integer,
    bts_ext_system_mcc_0 integer,
    bts_ext_system_mcc_1 integer,
    bts_ext_system_mcc_2 integer,
    bts_ext_system_mcc_3 integer,
    bts_ext_system_mob_qos integer,
    bts_ext_system_ms_init_pos_loc_sup_ind integer,
    bts_ext_system_nghbr_set_access_info integer,
    bts_ext_system_nghbr_set_entry_info integer,
    bts_ext_system_nghbr_set_size integer,
    bts_ext_system_other_info_include integer,
    bts_ext_system_pilot_info_req_supported integer,
    bts_ext_system_pilot_report integer,
    bts_ext_system_pref_msid_type integer,
    bts_ext_system_rev_pwr_cntl_delay integer,
    bts_ext_system_rev_pwr_cntl_delay_incl integer,
    bts_ext_system_send_rand integer,
    bts_ext_system_sig_encrypt_sup integer,
    bts_ext_system_soft_slope integer,
    bts_ext_system_status integer,
    bts_ext_system_tmsi_zone integer,
    bts_ext_system_tmsi_zone_len integer,
    bts_ext_system_ui_encrypt_sup integer,
    bts_ext_system_use_sync_id integer,
    bts_ext_system_use_tmsi integer,
    bts_extbh_poll_cycle integer,
    bts_extbh_poll_duration integer,
    bts_extbh_poll_status character varying,
    bts_force_tx_ctrl character varying,
    bts_ho_ce_reserve_ho_ce_reserve_cnt integer,
    bts_ho_ce_reserve_max_sch_ce_cnt integer,
    bts_ho_ce_reserve_status integer,
    bts_hpb_attenuator_0 integer,
    bts_hpb_attenuator_1 integer,
    bts_hpb_attenuator_2 integer,
    bts_hpb_attenuator_3 integer,
    bts_hpb_attenuator_4 integer,
    bts_hpb_attenuator_5 integer,
    bts_hpb_delay_0 integer,
    bts_hpb_delay_1 integer,
    bts_hpb_delay_2 integer,
    bts_hpb_delay_3 integer,
    bts_hpb_delay_4 integer,
    bts_hpb_delay_5 integer,
    bts_hpb_fa_id_0_0 integer,
    bts_hpb_fa_id_0_1 integer,
    bts_hpb_fa_id_0_2 integer,
    bts_hpb_fa_id_0_3 integer,
    bts_hpb_fa_id_0_4 integer,
    bts_hpb_fa_id_0_5 integer,
    bts_hpb_fa_id_0_6 integer,
    bts_hpb_fa_id_0_7 integer,
    bts_hpb_fa_id_0_8 integer,
    bts_hpb_fa_id_0_9 integer,
    bts_hpb_fa_id_10_0 integer,
    bts_hpb_fa_id_10_1 integer,
    bts_hpb_fa_id_10_2 integer,
    bts_hpb_fa_id_10_3 integer,
    bts_hpb_fa_id_10_4 integer,
    bts_hpb_fa_id_10_5 integer,
    bts_hpb_fa_id_10_6 integer,
    bts_hpb_fa_id_10_7 integer,
    bts_hpb_fa_id_10_8 integer,
    bts_hpb_fa_id_10_9 integer,
    bts_hpb_fa_id_11_0 integer,
    bts_hpb_fa_id_11_1 integer,
    bts_hpb_fa_id_11_2 integer,
    bts_hpb_fa_id_11_3 integer,
    bts_hpb_fa_id_11_4 integer,
    bts_hpb_fa_id_11_5 integer,
    bts_hpb_fa_id_11_6 integer,
    bts_hpb_fa_id_11_7 integer,
    bts_hpb_fa_id_11_8 integer,
    bts_hpb_fa_id_11_9 integer,
    bts_hpb_fa_id_12_0 integer,
    bts_hpb_fa_id_12_1 integer,
    bts_hpb_fa_id_12_2 integer,
    bts_hpb_fa_id_12_3 integer,
    bts_hpb_fa_id_12_4 integer,
    bts_hpb_fa_id_12_5 integer,
    bts_hpb_fa_id_12_6 integer,
    bts_hpb_fa_id_12_7 integer,
    bts_hpb_fa_id_12_8 integer,
    bts_hpb_fa_id_12_9 integer,
    bts_hpb_fa_id_13_0 integer,
    bts_hpb_fa_id_13_1 integer,
    bts_hpb_fa_id_13_2 integer,
    bts_hpb_fa_id_13_3 integer,
    bts_hpb_fa_id_13_4 integer,
    bts_hpb_fa_id_13_5 integer,
    bts_hpb_fa_id_13_6 integer,
    bts_hpb_fa_id_13_7 integer,
    bts_hpb_fa_id_13_8 integer,
    bts_hpb_fa_id_13_9 integer,
    bts_hpb_fa_id_14_0 integer,
    bts_hpb_fa_id_14_1 integer,
    bts_hpb_fa_id_14_2 integer,
    bts_hpb_fa_id_14_3 integer,
    bts_hpb_fa_id_14_4 integer,
    bts_hpb_fa_id_14_5 integer,
    bts_hpb_fa_id_14_6 integer,
    bts_hpb_fa_id_14_7 integer,
    bts_hpb_fa_id_14_8 integer,
    bts_hpb_fa_id_14_9 integer,
    bts_hpb_fa_id_15_0 integer,
    bts_hpb_fa_id_15_1 integer,
    bts_hpb_fa_id_15_2 integer,
    bts_hpb_fa_id_15_3 integer,
    bts_hpb_fa_id_15_4 integer,
    bts_hpb_fa_id_15_5 integer,
    bts_hpb_fa_id_15_6 integer,
    bts_hpb_fa_id_15_7 integer,
    bts_hpb_fa_id_15_8 integer,
    bts_hpb_fa_id_15_9 integer,
    bts_hpb_fa_id_1_0 integer,
    bts_hpb_fa_id_1_1 integer,
    bts_hpb_fa_id_1_2 integer,
    bts_hpb_fa_id_1_3 integer,
    bts_hpb_fa_id_1_4 integer,
    bts_hpb_fa_id_1_5 integer,
    bts_hpb_fa_id_1_6 integer,
    bts_hpb_fa_id_1_7 integer,
    bts_hpb_fa_id_1_8 integer,
    bts_hpb_fa_id_1_9 integer,
    bts_hpb_fa_id_2_0 integer,
    bts_hpb_fa_id_2_1 integer,
    bts_hpb_fa_id_2_2 integer,
    bts_hpb_fa_id_2_3 integer,
    bts_hpb_fa_id_2_4 integer,
    bts_hpb_fa_id_2_5 integer,
    bts_hpb_fa_id_2_6 integer,
    bts_hpb_fa_id_2_7 integer,
    bts_hpb_fa_id_2_8 integer,
    bts_hpb_fa_id_2_9 integer,
    bts_hpb_fa_id_3_0 integer,
    bts_hpb_fa_id_3_1 integer,
    bts_hpb_fa_id_3_2 integer,
    bts_hpb_fa_id_3_3 integer,
    bts_hpb_fa_id_3_4 integer,
    bts_hpb_fa_id_3_5 integer,
    bts_hpb_fa_id_3_6 integer,
    bts_hpb_fa_id_3_7 integer,
    bts_hpb_fa_id_3_8 integer,
    bts_hpb_fa_id_3_9 integer,
    bts_hpb_fa_id_4_0 integer,
    bts_hpb_fa_id_4_1 integer,
    bts_hpb_fa_id_4_2 integer,
    bts_hpb_fa_id_4_3 integer,
    bts_hpb_fa_id_4_4 integer,
    bts_hpb_fa_id_4_5 integer,
    bts_hpb_fa_id_4_6 integer,
    bts_hpb_fa_id_4_7 integer,
    bts_hpb_fa_id_4_8 integer,
    bts_hpb_fa_id_4_9 integer,
    bts_hpb_fa_id_5_0 integer,
    bts_hpb_fa_id_5_1 integer,
    bts_hpb_fa_id_5_2 integer,
    bts_hpb_fa_id_5_3 integer,
    bts_hpb_fa_id_5_4 integer,
    bts_hpb_fa_id_5_5 integer,
    bts_hpb_fa_id_5_6 integer,
    bts_hpb_fa_id_5_7 integer,
    bts_hpb_fa_id_5_8 integer,
    bts_hpb_fa_id_5_9 integer,
    bts_hpb_fa_id_6_0 integer,
    bts_hpb_fa_id_6_1 integer,
    bts_hpb_fa_id_6_2 integer,
    bts_hpb_fa_id_6_3 integer,
    bts_hpb_fa_id_6_4 integer,
    bts_hpb_fa_id_6_5 integer,
    bts_hpb_fa_id_6_6 integer,
    bts_hpb_fa_id_6_7 integer,
    bts_hpb_fa_id_6_8 integer,
    bts_hpb_fa_id_6_9 integer,
    bts_hpb_fa_id_7_0 integer,
    bts_hpb_fa_id_7_1 integer,
    bts_hpb_fa_id_7_2 integer,
    bts_hpb_fa_id_7_3 integer,
    bts_hpb_fa_id_7_4 integer,
    bts_hpb_fa_id_7_5 integer,
    bts_hpb_fa_id_7_6 integer,
    bts_hpb_fa_id_7_7 integer,
    bts_hpb_fa_id_7_8 integer,
    bts_hpb_fa_id_7_9 integer,
    bts_hpb_fa_id_8_0 integer,
    bts_hpb_fa_id_8_1 integer,
    bts_hpb_fa_id_8_2 integer,
    bts_hpb_fa_id_8_3 integer,
    bts_hpb_fa_id_8_4 integer,
    bts_hpb_fa_id_8_5 integer,
    bts_hpb_fa_id_8_6 integer,
    bts_hpb_fa_id_8_7 integer,
    bts_hpb_fa_id_8_8 integer,
    bts_hpb_fa_id_8_9 integer,
    bts_hpb_fa_id_9_0 integer,
    bts_hpb_fa_id_9_1 integer,
    bts_hpb_fa_id_9_2 integer,
    bts_hpb_fa_id_9_3 integer,
    bts_hpb_fa_id_9_4 integer,
    bts_hpb_fa_id_9_5 integer,
    bts_hpb_fa_id_9_6 integer,
    bts_hpb_fa_id_9_7 integer,
    bts_hpb_fa_id_9_8 integer,
    bts_hpb_fa_id_9_9 integer,
    bts_hpb_mode integer,
    bts_hpb_nghbr_tx_offset integer,
    bts_hpb_period integer,
    bts_hpb_status integer,
    bts_hpb_sync_mode integer,
    bts_hpb_trans_time integer,
    bts_io_monitor_io_monitor_count integer,
    bts_io_monitor_status character varying,
    bts_ip_congestion_cong_detection character varying,
    bts_ip_congestion_high_threshold integer,
    bts_ip_congestion_low_threshold integer,
    bts_ip_congestion_mid_threshold integer,
    bts_ip_congestion_pq0_threshold integer,
    bts_ip_congestion_pq1_threshold integer,
    bts_ip_congestion_pq2_threshold integer,
    bts_ip_congestion_pq3_threshold integer,
    bts_ip_congestion_pq4_threshold integer,
    bts_ip_congestion_pq5_threshold integer,
    bts_ip_congestion_pq6_threshold integer,
    bts_ip_congestion_pq7_threshold integer,
    bts_ip_congestion_status integer,
    bts_lag_link_lag_mode character varying,
    bts_lag_link_lag_type character varying,
    bts_lag_link_status character varying,
    bts_load_threshold_call_control_type character varying,
    bts_load_threshold_call_per_unit_sec_in_critical integer,
    bts_load_threshold_call_per_unit_sec_in_major integer,
    bts_load_threshold_call_per_unit_sec_in_manual integer,
    bts_load_threshold_call_per_unit_sec_in_minor integer,
    bts_load_threshold_call_per_unit_sec_in_normal integer,
    bts_load_threshold_critical_psist integer,
    bts_load_threshold_major_psist integer,
    bts_load_threshold_minor_psist integer,
    bts_load_threshold_page_control_type character varying,
    bts_load_threshold_page_per_unit_sec_in_critical integer,
    bts_load_threshold_page_per_unit_sec_in_major integer,
    bts_load_threshold_page_per_unit_sec_in_manual integer,
    bts_load_threshold_page_per_unit_sec_in_minor integer,
    bts_load_threshold_page_per_unit_sec_in_normal integer,
    bts_load_threshold_regi_control_type character varying,
    bts_load_threshold_regi_per_unit_sec_in_critical integer,
    bts_load_threshold_regi_per_unit_sec_in_major integer,
    bts_load_threshold_regi_per_unit_sec_in_manual integer,
    bts_load_threshold_regi_per_unit_sec_in_minor integer,
    bts_load_threshold_regi_per_unit_sec_in_normal integer,
    bts_load_threshold_status integer,
    bts_load_threshold_threshold_0 integer,
    bts_load_threshold_threshold_1 integer,
    bts_load_threshold_threshold_2 integer,
    bts_load_threshold_threshold_time integer,
    bts_load_threshold_unit_second_interval integer,
    bts_loading_msg_ctrl_msg_mode character varying,
    bts_loading_msg_ctrl_status character varying,
    bts_net_type character varying,
    bts_ota_system_base_lat character varying,
    bts_ota_system_base_long character varying,
    bts_ota_system_ext_chan_list character varying,
    bts_ota_system_ext_global_redirect character varying,
    bts_ota_system_ext_nghbr_list character varying,
    bts_ota_system_ext_sys_parameter character varying,
    bts_ota_system_for_nid_reg character varying,
    bts_ota_system_for_sid_reg character varying,
    bts_ota_system_gen_nghbr_list character varying,
    bts_ota_system_global_redirect character varying,
    bts_ota_system_home_reg integer,
    bts_ota_system_mult_nids integer,
    bts_ota_system_mult_sids integer,
    bts_ota_system_parameter_reg character varying,
    bts_ota_system_power_down_reg character varying,
    bts_ota_system_power_up_reg character varying,
    bts_ota_system_pri_nghbr_list character varying,
    bts_ota_system_rc_bitmap_capability_ext_allowed character varying,
    bts_ota_system_reg_distance integer,
    bts_ota_system_reg_period integer,
    bts_ota_system_rescan character varying,
    bts_ota_system_status integer,
    bts_ota_system_total_zones integer,
    bts_ota_system_user_zone_id character varying,
    bts_ota_system_zone_timer integer,
    bts_para_day_lt integer,
    bts_para_encrypt_mode integer,
    bts_para_frame_offset_mode character varying,
    bts_para_ltm_off integer,
    bts_para_max_access_msg_cnt integer,
    bts_para_max_paging_msg_cnt integer,
    bts_para_max_slot_cycle_index integer,
    bts_para_nghbr_max_age integer,
    bts_para_packet_zone_id integer,
    bts_para_pilot_inc integer,
    bts_para_prat integer,
    bts_para_reg_zone integer,
    bts_para_roaming_control_mode character varying,
    bts_para_status integer,
    bts_pau_tx_ctrl character varying,
    bts_pwr_manage_fdch_offset_max_limit integer,
    bts_pwr_manage_fdch_offset_step integer,
    bts_pwr_manage_ifda_gain_scaling integer,
    bts_pwr_manage_overload_ctrl_mode integer,
    bts_pwr_manage_overload_thresh1 integer,
    bts_pwr_manage_overload_thresh2 integer,
    bts_pwr_manage_sch_margin_long integer,
    bts_pwr_manage_sch_margin_short integer,
    bts_pwr_manage_status integer,
    bts_rc_dcch_frame_size integer,
    bts_rc_f_p_load_balancing_threshold integer,
    bts_rc_f_v_load_balancing_threshold integer,
    bts_rc_fch_frame_size integer,
    bts_rc_for_40_max_rate integer,
    bts_rc_for_80_max_rate integer,
    bts_rc_for_frame_40_used integer,
    bts_rc_for_frame_80_used integer,
    bts_rc_for_max_rate_rc3 character varying,
    bts_rc_for_max_rate_rc4 character varying,
    bts_rc_for_max_rate_rc5 character varying,
    bts_rc_for_multi_frame_offset integer,
    bts_rc_gated_rev_pilot character varying,
    bts_rc_paca_queue_depth integer,
    bts_rc_paca_timeout integer,
    bts_rc_pilot_gating_rate integer,
    bts_rc_rev_40_max_rate integer,
    bts_rc_rev_80_max_rate integer,
    bts_rc_rev_frame_40_used integer,
    bts_rc_rev_frame_80_used integer,
    bts_rc_rev_max_rate_rc3 character varying,
    bts_rc_rev_max_rate_rc4 character varying,
    bts_rc_rev_multi_frame_offset integer,
    bts_rc_sdb_supported character varying,
    bts_rc_status integer,
    bts_rc_use_qof integer,
    bts_rrh_delay_delay_cica character varying,
    bts_rrh_delay_delay_cima character varying,
    bts_rrh_delay_delay_cpri integer,
    bts_rrh_delay_rrh_rx_delay_cell_kmw character varying,
    bts_rrh_delay_rrh_rx_delay_cell_pw character varying,
    bts_rrh_delay_rrh_rx_delay_pcs_sec character varying,
    bts_rrh_delay_rrh_rx_delay_pcs_sec_ve character varying,
    bts_rrh_delay_status character varying,
    bts_rrh_delay_toffset_cell_kmw character varying,
    bts_rrh_delay_toffset_cell_pw integer,
    bts_rrh_delay_toffset_pcs_sec character varying,
    bts_rrh_delay_toffset_pcs_sec_ve character varying,
    bts_rrh_path_delay_path_delay_cell_0 integer,
    bts_rrh_path_delay_path_delay_cell_1 integer,
    bts_rrh_path_delay_path_delay_pcs_0 integer,
    bts_rrh_path_delay_path_delay_pcs_1 integer,
    bts_rrh_path_delay_path_delay_pcs_2 integer,
    bts_rrh_path_delay_path_delay_pcs_3 integer,
    bts_rrh_path_delay_status character varying,
    bts_rrh_sharing_master_rrh_du_id integer,
    bts_rrh_sharing_rrh_sharing_usage character varying,
    bts_rrh_sharing_status character varying,
    bts_sector_type character varying,
    bts_status character varying,
    bts_summer_time_end_day character varying,
    bts_summer_time_end_hour integer,
    bts_summer_time_end_min integer,
    bts_summer_time_end_month integer,
    bts_summer_time_end_week integer,
    bts_summer_time_start_day character varying,
    bts_summer_time_start_hour integer,
    bts_summer_time_start_min integer,
    bts_summer_time_start_month integer,
    bts_summer_time_start_week integer,
    bts_summer_time_status integer,
    bts_summer_time_summer_time_status character varying,
    bts_system_info_gan_kind integer,
    bts_system_info_max_bts_per_bsc integer,
    bts_system_info_serv_type integer,
    bts_system_info_status integer,
    bts_system_reverse_delay integer,
    bts_timer_bcc_t1 integer,
    bts_timer_bcc_t2 integer,
    bts_timer_bcc_t3 integer,
    bts_timer_brc_lcm_chg_t1 integer,
    bts_timer_brc_svd_t1 integer,
    bts_timer_brc_svd_t2 integer,
    bts_timer_brc_t1 integer,
    bts_timer_brc_t2 integer,
    bts_timer_brc_t3 integer,
    bts_timer_brc_t4 integer,
    bts_timer_bts_t4 integer,
    bts_timer_bts_t5 integer,
    bts_timer_cec_t1 integer,
    bts_timer_cec_t2 integer,
    bts_timer_dvbrc_t1 integer,
    bts_timer_dvbrc_t2 integer,
    bts_timer_dvbrc_t3 integer,
    bts_timer_dvbrc_t4 integer,
    bts_timer_fsch_assign_timer integer,
    bts_timer_fsch_svc_timer integer,
    bts_timer_status integer,
    bts_v5_lvds_mode integer,
    bts_wps_para_public_denominator_n integer,
    bts_wps_para_queue_num_0 integer,
    bts_wps_para_queue_num_1 integer,
    bts_wps_para_queue_num_2 integer,
    bts_wps_para_queue_num_3 integer,
    bts_wps_para_queue_num_4 integer,
    bts_wps_para_queue_num_5 integer,
    bts_wps_para_status integer,
    bts_wps_para_wps_etc1 integer,
    bts_wps_para_wps_etc2 integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_voice_bts_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_voice_bts_params
    ADD CONSTRAINT sam_voice_bts_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, bts, create_ts);


--
-- PostgreSQL database dump complete
--

