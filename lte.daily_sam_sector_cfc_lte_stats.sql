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

DROP TRIGGER lte_daily_sam_sector_cfc_lte_stats_trigger_part ON lte.daily_sam_sector_cfc_lte_stats;
DROP INDEX lte.daily_sam_sector_cfc_lte_stats_itmdt_ix;
DROP INDEX lte.daily_sam_sector_cfc_lte_stats_idx1;
DROP INDEX lte.daily_sam_sector_cfc_lte_stats_idx;
DROP TABLE lte.daily_sam_sector_cfc_lte_stats;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: daily_sam_sector_cfc_lte_stats; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE daily_sam_sector_cfc_lte_stats (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    cascade_id character varying(20) NOT NULL,
    lsm_name character varying(30) NOT NULL,
    enodeb_id integer NOT NULL,
    c_num character varying(20) NOT NULL,
    sector integer NOT NULL,
    x0fff_no_fault integer,
    x0100_s1ap_causeradionetwork_unspecified integer,
    x0101_s1ap_tx2relocoverall_expiry integer,
    x0102_s1ap_successful_handover integer,
    x0103_s1ap_release_due_to_eutran_generated_reason integer,
    x0104_s1ap_handover_cancelled integer,
    x0105_s1ap_partial_handover integer,
    x0106_s1ap_ho_failure_in_target_epc_enb_or_target_system integer,
    x0107_s1ap_ho_target_not_allowed integer,
    x0108_s1ap_ts1relocoverall_expiry integer,
    x0109_s1ap_ts1relocprep_expiry integer,
    x010a_s1ap_cell_not_available integer,
    x010b_s1ap_unknown_targetid integer,
    x010c_s1ap_no_radio_resources_available_in_target_cell integer,
    x010d_s1ap_unknown_mme_ue_s1ap_id integer,
    x010e_s1ap_unknown_enb_ue_s1ap_id integer,
    x010f_s1ap_unknown_pair_ue_s1ap_id integer,
    x0110_s1ap_handover_desirable_for_radio_reason integer,
    x0111_s1ap_time_critical_handover integer,
    x0112_s1ap_resource_optimisation_handover integer,
    x0113_s1ap_reduce_load_in_serving_cell integer,
    x0114_s1ap_user_inactivity integer,
    x0115_s1ap_radio_connection_with_ue_lost integer,
    x0116_s1ap_load_balancing_tau_required integer,
    x0117_s1ap_cs_fallback_triggered integer,
    x0118_s1ap_ue_not_available_for_ps_service integer,
    x0119_s1ap_radio_resources_not_available integer,
    x011a_s1ap_failure_in_radio_interface_procedure integer,
    x011b_s1ap_invalid_qos_combination integer,
    x011c_s1ap_interrat_redirection integer,
    x011d_s1ap_interaction_with_other_procedure integer,
    x011e_s1ap_unknown_e_rab_id integer,
    x011f_s1ap_multiple_e_rab_id_instances integer,
    x0120_s1ap_encryption_and_or_integ_prot_algos_not_supported integer,
    x0121_s1ap_s1_intra_system_handover_triggered integer,
    x0122_s1ap_s1_inter_system_handover_triggered integer,
    x0123_s1ap_x2_handover_triggered integer,
    x0124_s1ap_redirection_towards_1xrtt integer,
    x0125_s1ap_not_supported_qci_value integer,
    x0126_s1ap_invalid_csg_id integer,
    x0128_s1ap_transport_resource_unavailable integer,
    x0129_s1ap_causetransport_unspecified integer,
    x0132_s1ap_normal_release integer,
    x0133_s1ap_authentication_failure integer,
    x0134_s1ap_detach integer,
    x0135_s1ap_causenas_unspecified integer,
    x0136_s1ap_csg_subscription_expiry integer,
    x013c_s1ap_transfer_syntax_error integer,
    x013d_s1ap_abstract_syntax_error_reject integer,
    x013e_s1ap_abstract_syntax_error_ignore_and_notify integer,
    x013f_s1ap_message_not_compatible_with_receiver_state integer,
    x0140_s1ap_semantic_error integer,
    x0141_s1ap_abstract_syntax_error_falsely_constr_message integer,
    x0142_s1ap_causeprotocol_unspecified integer,
    x0146_s1ap_control_processing_overload integer,
    x0147_s1ap_not_enough_user_plane_processing_resources integer,
    x0148_s1ap_hardware_failure integer,
    x0149_s1ap_om_intervention integer,
    x014a_s1ap_causemisc_unspecified integer,
    x014b_s1ap_unknown_plmn integer,
    x0200_x2ap_handover_desirable_for_radio_reasons integer,
    x0201_x2ap_time_critical_handover integer,
    x0202_x2ap_resource_optimisation_handover integer,
    x0203_x2ap_reduce_load_in_serving_cell integer,
    x0204_x2ap_partial_handover integer,
    x0205_x2ap_unknown_new_enb_ue_x2ap_id integer,
    x0206_x2ap_unknown_old_enb_ue_x2ap_id integer,
    x0207_x2ap_unknown_pair_of_ue_x2ap_id integer,
    x0208_x2ap_ho_target_not_allowed integer,
    x0209_x2ap_tx2relocoverall_expiry integer,
    x020a_x2ap_trelocprep_expiry integer,
    x020b_x2ap_cell_not_available integer,
    x020c_x2ap_no_radio_resources_available_in_target_cell integer,
    x020d_x2ap_invalid_mme_groupid integer,
    x020e_x2ap_unknown_mme_code integer,
    x020f_x2ap_encryption_and_or_integ_prot_algos_not_supported integer,
    x0210_x2ap_reportcharacteristicsempty integer,
    x0211_x2ap_noreportperiodicity integer,
    x0212_x2ap_existingmeasurementid integer,
    x0213_x2ap_unknown_enb_measurement_id integer,
    x0214_x2ap_measurement_temporarily_not_available integer,
    x0215_x2ap_causeradionetwork_unspecified integer,
    x0216_x2ap_load_balancing integer,
    x0217_x2ap_handover_optimisation integer,
    x0218_x2ap_value_out_of_allowed_range integer,
    x0219_x2ap_multiple_e_rab_id_instances integer,
    x021a_x2ap_switch_off_ongoing integer,
    x021e_x2ap_transport_resource_unavailable integer,
    x021f_x2ap_causetransport_unspecified integer,
    x0228_x2ap_transfer_syntax_error integer,
    x0229_x2ap_abstract_syntax_error_reject integer,
    x022a_x2ap_abstract_syntax_error_ignore_and_notify integer,
    x022b_x2ap_message_not_compatible_with_receiver_state integer,
    x022c_x2ap_semantic_error integer,
    x022d_x2ap_causeprotocol_unspecified integer,
    x022e_x2ap_abstract_syntax_error_falsely_constr_message integer,
    x0232_x2ap_control_processing_overload integer,
    x0233_x2ap_hardware_failure integer,
    x0234_x2ap_om_intervention integer,
    x0235_x2ap_not_enough_user_plane_processing_resources integer,
    x0236_x2ap_causemisc_unspecified integer,
    x0300_ecc_tmout_rrcconnectionsetupcomplete integer,
    x0301_ecc_tmout_rrcconnectionreconfigcomplete integer,
    x0302_ecc_tmout_rrcconnectionreestablishcomplete integer,
    x0303_ecc_tmout_rrcsecuritymodecomplete integer,
    x0304_ecc_tmout_rrcuecapabilityinformation integer,
    x0306_ecc_tmout_rrchandoverpreparation integer,
    x0307_ecc_tmout_intra_handovercmdcomplete integer,
    x0308_ecc_tmout_inter_x2handovercmdcomplete integer,
    x0309_ecc_tmout_inter_s1handovercmdcomplete integer,
    x0313_ecc_tmout_s1initialcontextsetuprequest integer,
    x0316_ecc_tmout_s1pathswitchack integer,
    x0317_ecc_tmout_s1handoverpreparation integer,
    x0318_ecc_tmout_s1relocoverall integer,
    x031a_ecc_tmout_s1mmestatustransfer integer,
    x0324_ecc_tmout_x2relocoverall integer,
    x0325_ecc_tmout_x2snstatustransfer integer,
    x0330_ecc_tmout_internalresourcesetup integer,
    x0332_ecc_tmout_internalsecuritycontrol integer,
    x0334_ecc_tmout_internalforwardingpathsetup integer,
    x0335_ecc_tmout_internalreestablishcontrol integer,
    x0336_ecc_tmout_internalbufferflush integer,
    x0337_ecc_tmout_internaldatatransferstart integer,
    x0341_ecc_user_inactivity integer,
    x0342_ecc_arq_max_re_transmission integer,
    x0343_ecc_radio_link_failure integer,
    x0344_ecc_ue_context_not_found integer,
    x0345_ecc_s1ap_sn_status_not_received integer,
    x0346_ecc_reest_fail_invalid_state integer,
    x0347_ecc_cdma_handover_preparation_failure integer,
    x0348_ecc_rcv_s1_uectxtreleasecmd_abnormal_state integer,
    x0349_ecc_rcv_reset_request_from_ecmb integer,
    x034a_ecc_rcv_s1_reset_from_mme integer,
    x034b_ecc_rcv_x2_resetrequest integer,
    x034c_ecc_s1_sctp_out_of_service integer,
    x034d_ecc_rcv_cell_release_ind_from_ecmb integer,
    x034e_ecc_dsp_audit_rlc_call_release integer,
    x034f_ecc_dsp_audit_mac_call_release integer,
    x0350_ecc_dsp_audit_rlc_mac_call_release integer,
    x0351_ecc_sec_algorithms_combination_invalid integer,
    x0352_ecc_x2_sctp_out_of_service integer,
    x0353_ecc_release_due_to_enb_generated_reason integer,
    x0365_rrm_fail integer,
    x0366_rrm_cell_barred integer,
    x0367_rrm_max_call_count_over integer,
    x0368_rrm_max_drb_count_over integer,
    x0369_rrm_qoscac_fail integer,
    x036a_rrm_preemption_fail integer,
    x036b_rrm_callrsc_fail integer,
    x036c_rrm_bhcac_fail integer,
    x036d_rrm_srsrsc_fail integer,
    x036e_rrm_cqirsc_fail integer,
    x036f_rrm_spsrsc_fail integer,
    x0370_rrm_n1pucchrsc_fail integer,
    x0371_rrm_srrsc_fail integer,
    x0372_rrm_tpcrsc_fail integer,
    x0373_rrm_all_mme_not_service integer,
    x0374_rrm_mme_overload integer,
    x0375_rrm_not_exist_mme integer,
    x0376_rrm_available_mme_not_exist integer,
    x0377_rrm_ue_stmsi_duplicate integer,
    x0600_gtp_setip_fail integer,
    x0601_gtp_release_fail integer,
    x0602_gtp_modify_fail integer,
    x0603_gtp_reset_fail integer,
    x0604_gtp_path_fail integer,
    x0605_gtp_not_support_eh integer,
    x0606_gtp_rcv_error_ind_from_gw integer,
    x0700_pdcp_invalid_callid integer,
    x0701_pdcp_invalid_rbid integer,
    x0702_pdcp_invalid_numofrb integer,
    x0703_pdcp_invalid_rlcmode integer,
    x0704_pdcp_invalid_setuptype integer,
    x0705_pdcp_invalid_cntltype integer,
    x0706_pdcp_invalid_pdcpsntype integer,
    x0707_pdcp_invalid_lochtype integer,
    x0708_pdcp_rohc_setup_fail integer,
    x0709_pdcp_inactivate_rbid integer,
    x070a_pdcp_srb_integ_fail integer,
    x0846_rlc_invalid_parameter integer,
    x0847_rlc_no_more_resource integer,
    x0848_rlc_cell_is_idle integer,
    x0849_rlc_call_is_not_active integer,
    x0880_rlc_error_empty_msg integer,
    x0881_rlc_error_unknown_msg_id integer,
    x0882_rlc_error_invalid_data_len integer,
    x0883_rlc_error_no_rsp_from_dl integer,
    x0884_rlc_error_no_rsp_from_ul integer,
    x0885_rlc_error_no_rsp_from_dlul integer,
    x0886_rlc_error_rx_before_rlc_ready integer,
    x0887_rlc_error_invalid_rlc_transaction_id integer,
    x0888_rlc_error_invalid_context integer,
    x0889_rlc_error_rlc_context_full integer,
    x0900_mac_invalid_msgid integer,
    x0901_mac_invalid_setuptype integer,
    x0902_mac_invalid_call_cellid integer,
    x0903_mac_invalid_parameter integer,
    x0904_mac_insufficient_resource integer,
    x0905_mac_not_assigned_rb integer,
    x0906_mac_not_assigned_ue integer,
    x0908_mac_not_assign_srb1 integer,
    x0909_mac_invalid_rb_config integer,
    x090a_mac_invalid_cell_id integer
)
WITH (autovacuum_enabled=true);
ALTER TABLE ONLY daily_sam_sector_cfc_lte_stats ALTER COLUMN enodeb_id SET STATISTICS 1000;


SET default_tablespace = p2_lteindex;

--
-- Name: daily_sam_sector_cfc_lte_stats_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX daily_sam_sector_cfc_lte_stats_idx ON daily_sam_sector_cfc_lte_stats USING btree (item_date, market);


--
-- Name: daily_sam_sector_cfc_lte_stats_idx1; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX daily_sam_sector_cfc_lte_stats_idx1 ON daily_sam_sector_cfc_lte_stats USING btree (cascade_id);


--
-- Name: daily_sam_sector_cfc_lte_stats_itmdt_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX daily_sam_sector_cfc_lte_stats_itmdt_ix ON daily_sam_sector_cfc_lte_stats USING btree (item_date);


--
-- Name: lte_daily_sam_sector_cfc_lte_stats_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER lte_daily_sam_sector_cfc_lte_stats_trigger_part
    BEFORE INSERT ON daily_sam_sector_cfc_lte_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_sam_sector_cfc_lte_stats_part();


--
-- PostgreSQL database dump complete
--

