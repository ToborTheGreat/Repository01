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

ALTER TABLE ONLY stg.sam_voice_bts_fa_index_sector_params DROP CONSTRAINT sam_voice_bts_fa_index_sector_params_pk;
DROP TABLE stg.sam_voice_bts_fa_index_sector_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_fa_index_sector_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_voice_bts_fa_index_sector_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    fa_index integer NOT NULL,
    sector integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    bts_brc_access_escam_rev_dur_time integer,
    bts_brc_access_f_fd_p_hand_gp_ratio integer,
    bts_brc_access_f_fd_p_new_gp_ratio integer,
    bts_brc_access_f_fd_v_hand_gp_ratio integer,
    bts_brc_access_f_fd_v_new_gp_ratio integer,
    bts_brc_access_f_p_allowed_limit integer,
    bts_brc_access_f_s_p_hand_gp_ratio integer,
    bts_brc_access_f_s_p_new_gp_ratio integer,
    bts_brc_access_f_sch_max_num integer,
    bts_brc_access_f_v_allowed_limit integer,
    bts_brc_access_gnlm_act integer,
    bts_brc_access_gsrdm_act integer,
    bts_brc_access_link_factor integer,
    bts_brc_access_mig_band_class integer,
    bts_brc_access_mig_chan_0 integer,
    bts_brc_access_mig_chan_1 integer,
    bts_brc_access_mig_chan_10 integer,
    bts_brc_access_mig_chan_2 integer,
    bts_brc_access_mig_chan_3 integer,
    bts_brc_access_mig_chan_4 integer,
    bts_brc_access_mig_chan_5 integer,
    bts_brc_access_mig_chan_6 integer,
    bts_brc_access_mig_chan_7 integer,
    bts_brc_access_mig_chan_8 integer,
    bts_brc_access_mig_chan_9 integer,
    bts_brc_access_mig_exp_nid integer,
    bts_brc_access_mig_exp_sid integer,
    bts_brc_access_mig_ind integer,
    bts_brc_access_mig_max_ce integer,
    bts_brc_access_mig_num_chan integer,
    bts_brc_access_mig_pwr_thr integer,
    bts_brc_access_mig_ret_fail integer,
    bts_brc_access_ndss_threshold integer,
    bts_brc_access_queue_factor integer,
    bts_brc_access_r_fd_p_hand_gp_ratio integer,
    bts_brc_access_r_fd_p_new_gp_ratio integer,
    bts_brc_access_r_fd_v_hand_gp_ratio integer,
    bts_brc_access_r_fd_v_new_gp_ratio integer,
    bts_brc_access_r_init_ic_to_oc_ratio integer,
    bts_brc_access_r_max_ic_to_oc_ratio integer,
    bts_brc_access_r_max_oc_load integer,
    bts_brc_access_r_min_ic_to_oc_ratio integer,
    bts_brc_access_r_min_oc_load integer,
    bts_brc_access_r_oc_adapt_up integer,
    bts_brc_access_r_oc_feasible_up integer,
    bts_brc_access_r_p_allowed_limit integer,
    bts_brc_access_r_real_est_interval integer,
    bts_brc_access_r_s_dtx_duration integer,
    bts_brc_access_r_s_p_hand_gp_ratio integer,
    bts_brc_access_r_s_p_new_gp_ratio integer,
    bts_brc_access_r_total_load_max_thr integer,
    bts_brc_access_r_total_load_min_thr integer,
    bts_brc_access_r_total_load_thr integer,
    bts_brc_access_r_total_p_thr integer,
    bts_brc_access_r_v_allowed_limit integer,
    bts_brc_access_srdm_ctrl character varying,
    bts_brc_access_starvation_factor integer,
    bts_brc_access_starvation_threshold_per_level integer,
    bts_brc_access_status integer,
    bts_brc_walsh_status integer,
    bts_brc_walsh_walsh_reserve integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_115200_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_14400_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_153600_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_153600_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_19200_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_19200_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_230400_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_28800_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_307200_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_38400_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_38400_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_57600_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_76800_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_76800_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_9600_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_init_gain_9600_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_115200_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_14400_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_153600_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_153600_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_19200_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_19200_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_230400_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_28800_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_307200_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_38400_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_38400_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_57600_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_76800_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_76800_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_9600_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_max_gain_9600_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_115200_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_14400_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_153600_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_153600_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_19200_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_19200_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_230400_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_28800_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_307200_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_38400_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_38400_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_57600_rc5 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_76800_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_76800_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_9600_rc3 integer,
    bts_forsch_conv_nontd_pwr_ctrl_sch_min_gain_9600_rc4 integer,
    bts_forsch_conv_nontd_pwr_ctrl_status integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_115200_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_14400_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_153600_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_153600_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_19200_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_19200_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_230400_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_28800_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_307200_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_38400_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_38400_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_57600_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_76800_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_76800_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_9600_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_init_gain_9600_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_115200_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_14400_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_153600_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_153600_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_19200_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_19200_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_230400_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_28800_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_307200_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_38400_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_38400_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_57600_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_76800_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_76800_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_9600_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_max_gain_9600_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_115200_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_14400_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_153600_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_153600_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_19200_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_19200_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_230400_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_28800_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_307200_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_38400_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_38400_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_57600_rc5 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_76800_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_76800_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_9600_rc3 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_sch_min_gain_9600_rc4 integer,
    bts_forsch_turbo_nontd_pwr_ctrl_status integer,
    bts_ms_access_acc_timeout integer,
    bts_ms_access_backoff integer,
    bts_ms_access_initial_pwr integer,
    bts_ms_access_max_req_seq integer,
    bts_ms_access_max_rsp_seq integer,
    bts_ms_access_msg_psist integer,
    bts_ms_access_nom_pwr_ext integer,
    bts_ms_access_norminal_pwr integer,
    bts_ms_access_num_step integer,
    bts_ms_access_probe_backoff integer,
    bts_ms_access_probe_pn_random integer,
    bts_ms_access_psist_0_9 integer,
    bts_ms_access_psist_10 integer,
    bts_ms_access_psist_11 integer,
    bts_ms_access_psist_12 integer,
    bts_ms_access_psist_13 integer,
    bts_ms_access_psist_14 integer,
    bts_ms_access_psist_15 integer,
    bts_ms_access_pwr_step integer,
    bts_ms_access_rand integer,
    bts_ms_access_reg_psist integer,
    bts_ms_access_status integer,
    bts_ovhd_ch_cfg_comb_th0 integer,
    bts_ovhd_ch_cfg_comb_th1 integer,
    bts_ovhd_ch_cfg_comb_th2 integer,
    bts_ovhd_ch_cfg_comb_th3 integer,
    bts_ovhd_ch_cfg_correlation_length integer,
    bts_ovhd_ch_cfg_loss_th integer,
    bts_ovhd_ch_cfg_max_cap_size integer,
    bts_ovhd_ch_cfg_paging_gain integer,
    bts_ovhd_ch_cfg_pch_gain_delta integer,
    bts_ovhd_ch_cfg_pilot_gain integer,
    bts_ovhd_ch_cfg_preamble_pn_offset integer,
    bts_ovhd_ch_cfg_preamble_size integer,
    bts_ovhd_ch_cfg_preamble_win_length integer,
    bts_ovhd_ch_cfg_qpaging_gain integer,
    bts_ovhd_ch_cfg_repl_th0 integer,
    bts_ovhd_ch_cfg_repl_th1 integer,
    bts_ovhd_ch_cfg_srchr_detect_th integer,
    bts_ovhd_ch_cfg_srchr_discard_th integer,
    bts_ovhd_ch_cfg_srchr_max_acc_cnt integer,
    bts_ovhd_ch_cfg_status integer,
    bts_ovhd_ch_cfg_sync_gain integer,
    bts_ovhd_ch_cfg_trck_th0 integer,
    bts_ovhd_ch_cfg_trck_th1 integer,
    bts_ovhd_ch_num_num_ach integer,
    bts_ovhd_ch_num_num_pch integer,
    bts_ovhd_ch_num_num_qpch integer,
    bts_ovhd_ch_num_status character varying,
    bts_pwr_ctrl_bs_pwr_cntl_step integer,
    bts_pwr_ctrl_fdch_init_gain_rc1 integer,
    bts_pwr_ctrl_fdch_init_gain_rc11 integer,
    bts_pwr_ctrl_fdch_init_gain_rc2 integer,
    bts_pwr_ctrl_fdch_init_gain_rc3_nontd integer,
    bts_pwr_ctrl_fdch_init_gain_rc3_td integer,
    bts_pwr_ctrl_fdch_init_gain_rc4_nontd integer,
    bts_pwr_ctrl_fdch_init_gain_rc4_td integer,
    bts_pwr_ctrl_fdch_init_gain_rc5_nontd integer,
    bts_pwr_ctrl_fdch_init_gain_rc5_td integer,
    bts_pwr_ctrl_fdch_max_gain_rc1 integer,
    bts_pwr_ctrl_fdch_max_gain_rc11 integer,
    bts_pwr_ctrl_fdch_max_gain_rc2 integer,
    bts_pwr_ctrl_fdch_max_gain_rc3_nontd integer,
    bts_pwr_ctrl_fdch_max_gain_rc3_td integer,
    bts_pwr_ctrl_fdch_max_gain_rc4_nontd integer,
    bts_pwr_ctrl_fdch_max_gain_rc4_td integer,
    bts_pwr_ctrl_fdch_max_gain_rc5_nontd integer,
    bts_pwr_ctrl_fdch_max_gain_rc5_td integer,
    bts_pwr_ctrl_fdch_min_gain_rc1 integer,
    bts_pwr_ctrl_fdch_min_gain_rc11 integer,
    bts_pwr_ctrl_fdch_min_gain_rc2 integer,
    bts_pwr_ctrl_fdch_min_gain_rc3_nontd integer,
    bts_pwr_ctrl_fdch_min_gain_rc3_td integer,
    bts_pwr_ctrl_fdch_min_gain_rc4_nontd integer,
    bts_pwr_ctrl_fdch_min_gain_rc4_td integer,
    bts_pwr_ctrl_fdch_min_gain_rc5_nontd integer,
    bts_pwr_ctrl_fdch_min_gain_rc5_td integer,
    bts_pwr_ctrl_fdch_min_gain_t_ho_rc11 integer,
    bts_pwr_ctrl_fdch_min_gain_t_ho_rc3 integer,
    bts_pwr_ctrl_fdch_min_gain_t_ho_rc4 integer,
    bts_pwr_ctrl_fdch_min_gain_t_ho_rc5 integer,
    bts_pwr_ctrl_rlgain_traffic_pilot integer,
    bts_pwr_ctrl_rssi_threshold_2g integer,
    bts_pwr_ctrl_rssi_threshold_3g integer,
    bts_pwr_ctrl_sch_fer integer,
    bts_pwr_ctrl_signal_delta_gain integer,
    bts_pwr_ctrl_status integer,
    bts_subcell_para_conv_fa_id integer,
    bts_subcell_para_each_rate_supported integer,
    bts_subcell_para_ec_io_thresh integer,
    bts_subcell_para_ec_thresh integer,
    bts_subcell_para_fa_mode character varying,
    bts_subcell_para_fccch_code_rate integer,
    bts_subcell_para_fccch_rate integer,
    bts_subcell_para_handdown_band_class integer,
    bts_subcell_para_handdown_fa_hi integer,
    bts_subcell_para_handdown_fa_lo bigint,
    bts_subcell_para_hard_handoff_type character varying,
    bts_subcell_para_min_p_rev integer,
    bts_subcell_para_nom_pwr_ext integer,
    bts_subcell_para_norminal_pwr integer,
    bts_subcell_para_otd_power_level integer,
    bts_subcell_para_otd_supported character varying,
    bts_subcell_para_p_rev integer,
    bts_subcell_para_page_msg_type integer,
    bts_subcell_para_psmm_request_period integer,
    bts_subcell_para_pwr_period_enable character varying,
    bts_subcell_para_pwr_rept_delay integer,
    bts_subcell_para_pwr_rept_frame integer,
    bts_subcell_para_pwr_rept_thresh integer,
    bts_subcell_para_pwr_thresh_enable character varying,
    bts_subcell_para_qpch_bi_supported integer,
    bts_subcell_para_qpch_cci_supported integer,
    bts_subcell_para_qpch_power_level_bcast integer,
    bts_subcell_para_qpch_power_level_config integer,
    bts_subcell_para_qpch_power_level_page integer,
    bts_subcell_para_qpch_rate integer,
    bts_subcell_para_reselected_included integer,
    bts_subcell_para_scnd_bcp_id integer,
    bts_subcell_para_scnd_bsc_id integer,
    bts_subcell_para_scnd_nid integer,
    bts_subcell_para_scnd_sector_id character varying,
    bts_subcell_para_scnd_sid integer,
    bts_subcell_para_sector_delay integer,
    bts_subcell_para_smv_mode integer,
    bts_subcell_para_srch_win_a integer,
    bts_subcell_para_srch_win_n integer,
    bts_subcell_para_srch_win_r integer,
    bts_subcell_para_status integer,
    bts_subcell_para_t_add integer,
    bts_subcell_para_t_comp integer,
    bts_subcell_para_t_down integer,
    bts_subcell_para_t_drop integer,
    bts_subcell_para_t_tdown integer,
    bts_subcell_para_t_tdrop integer,
    bts_subcell_status character varying,
    bts_txatt_status integer,
    bts_txatt_tx_atten integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_voice_bts_fa_index_sector_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_voice_bts_fa_index_sector_params
    ADD CONSTRAINT sam_voice_bts_fa_index_sector_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, bts, fa_index, sector, create_ts);


--
-- PostgreSQL database dump complete
--

