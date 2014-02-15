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

DROP INDEX stg.sam_neid_cellnum_params_ix1;
ALTER TABLE ONLY stg.sam_neid_cellnum_params DROP CONSTRAINT sam_neid_cellnum_params_pkey;
DROP TABLE stg.sam_neid_cellnum_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_neid_cellnum_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_neid_cellnum_params (
    item_date date NOT NULL,
    lsm_name character varying NOT NULL,
    neid integer NOT NULL,
    cellnum integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    cdma_overlay_colorcode integer,
    cdma_overlay_bsmid integer,
    cdma_overlay_bscid integer,
    cdma_overlay_dpssid integer,
    cdma_overlay_btsid integer,
    cdma_overlay_sectorid integer,
    cdma_overlay_treselectionhrpd integer,
    cdma_overlay_treselectionsfusagehrpd integer,
    cdma_overlay_treselectionsfmediumhrpd integer,
    cdma_overlay_treselectionsfhighhrpd integer,
    cell_cac_cellcountcacusage integer,
    cell_cac_maxcallcount integer,
    cell_cac_callcacthreshfornormal integer,
    cell_cac_callcacthreshforemerho integer,
    cell_cac_drbcountcacusage integer,
    cell_cac_maxdrbcount integer,
    cell_cac_drbcacthreshfornormal integer,
    cell_cac_drbcacthreshforemerho integer,
    cell_cac_qoscacoption integer,
    cell_cac_qospolicyoption integer,
    cell_cac_prbreportperiod integer,
    cell_cac_estimationopt integer,
    cell_cac_preemptionflag integer,
    cell_cac_bhbwcacusage integer,
    cell_cac_bhbwcacoption integer,
    cell_conf_status integer,
    cell_conf_administrativestate integer,
    cell_conf_sectorid integer,
    cell_conf_faid integer,
    cell_conf_bandclass integer,
    cell_conf_mrpid integer,
    cell_conf_ccid integer,
    cell_conf_dspid integer,
    cell_conf_dlmaxtxpower integer,
    cell_conf_airiftype integer,
    cell_reselect_qhyst integer,
    cell_reselect_qhystsfmedium integer,
    cell_reselect_qhystsfhigh integer,
    cell_sel_qrxlevmin integer,
    cell_sel_qrxlevminoffsetusage integer,
    cell_sel_qrxlevminoffset integer,
    cell_sel_pmaxusage integer,
    cell_sel_pmax integer,
    cell_sel_rel9selinfousage integer,
    cell_sel_qqualmin integer,
    cell_sel_qqualminoffsetusage integer,
    cell_sel_qqualminoffset integer,
    clock_ctrl_clockadvance integer,
    clock_ctrl_clockretard integer,
    dphy_sr_dsrtransmax integer,
    eutran_cell_cellsize integer,
    eutran_cell_hnbname character varying,
    eutran_cell_mcc0 character varying,
    eutran_cell_mnc0 character varying,
    eutran_cell_cellreservedopuse0 integer,
    eutran_cell_mcc1 character varying,
    eutran_cell_mnc1 character varying,
    eutran_cell_cellreservedopuse1 integer,
    eutran_cell_mcc2 character varying,
    eutran_cell_mnc2 character varying,
    eutran_cell_cellreservedopuse2 integer,
    eutran_cell_mcc3 character varying,
    eutran_cell_mnc3 character varying,
    eutran_cell_cellreservedopuse3 integer,
    eutran_cell_mcc4 character varying,
    eutran_cell_mnc4 character varying,
    eutran_cell_cellreservedopuse4 integer,
    eutran_cell_mcc5 character varying,
    eutran_cell_mnc5 character varying,
    eutran_cell_cellreservedopuse5 integer,
    eutran_cell_addspectrumemission integer,
    eutran_cell_trackingareacode integer,
    eutran_cell_imsemergencysupport integer,
    eutran_cell_fdd_cellidentity integer,
    eutran_cell_fdd_phycellid integer,
    eutran_cell_fdd_celltype integer,
    eutran_cell_fdd_duplextype integer,
    eutran_cell_fdd_dlantcount integer,
    eutran_cell_fdd_ulantcount integer,
    eutran_cell_fdd_earfcndl integer,
    eutran_cell_fdd_earfcnul integer,
    eutran_cell_fdd_dlbandwidth integer,
    eutran_cell_fdd_ulbandwidth integer,
    eutran_cell_fdd_frequencybandindicator integer,
    eutran_cell_fdd_groupid integer,
    eutran_cell_fdd_subframeassignment integer,
    eutran_cell_fdd_specialsubframepatterns integer,
    eutran_cell_fdd_forcedmode integer,
    position_autogpssetflag integer,
    position_latitude character varying,
    position_longitude character varying,
    position_height character varying,
    position_uncertaintysemimajor integer,
    position_uncertaintysemiminor integer,
    position_orientationofmajoraxis integer,
    position_uncertaintyaltitude integer,
    position_confidence integer,
    position_measurementinterval integer,
    position_prsconfigindex integer,
    position_numofdlframe integer,
    position_prsmutingconfigsize integer,
    position_prsmutingconfigvalue integer,
    prach_conf_logic_prachconfigindex integer,
    prach_conf_logic_highspeedflag integer,
    prach_conf_logic_zerocorrelzoneconfig integer,
    prach_conf_logic_rootsequenceindex integer,
    prach_conf_logic_prachposition integer,
    pucch_conf_idle_forcedmode integer,
    pusch_conf_idle_cyclicshift integer,
    pusch_conf_idle_forcedmode integer,
    pusch_conf_logic_nsb integer,
    pusch_conf_logic_hoppingmode integer,
    pusch_conf_logic_enablesixfourqam integer,
    pusch_conf_logic_grouphoppingenabled integer,
    pusch_conf_logic_groupassignmentpusch integer,
    pusch_conf_logic_sequencehoppingenabled integer,
    qos_stat_gbrunsatisfytputmargin integer,
    qos_stat_gbrunsatisfybomargin integer,
    rach_conf_numberofrapreambles integer,
    rach_conf_sizeofrapreamblesgroupa integer,
    rach_conf_messagesizegroupa integer,
    rach_conf_messagepoweroffsetgroupb integer,
    rach_conf_powerrampingstep integer,
    rach_conf_preambleinitrcvtargetpower integer,
    rach_conf_preambletransmax integer,
    rach_conf_contentionresolutiontimer integer,
    rach_conf_backoffindicatorsetup integer,
    rach_conf_backoffindicator integer,
    rach_conf_maxharqmsg3tx integer,
    sib_schd_sib2period integer,
    sib_schd_sib3period integer,
    sib_schd_sib4period integer,
    sib_schd_sib5period integer,
    sib_schd_sib6period integer,
    sib_schd_sib7period integer,
    sib_schd_sib8period integer,
    sib_schd_sib9period integer,
    sib_schd_sib10period integer,
    sib_schd_sib11period integer,
    sib_schd_sib12period integer,
    sib_schd_siwindow integer,
    son_dll_cic_dlicictype integer,
    son_func_cell_ctl_anrenable integer,
    son_func_cell_ctl_interratanrenable1xrtt integer,
    son_func_cell_ctl_interratanrenablehrpd integer,
    son_func_cell_ctl_interratanrenableutran integer,
    son_func_cell_ctl_energysavingsenable integer,
    son_func_cell_ctl_mobilityrobustnessenable integer,
    son_func_cell_ctl_mobilityloadbalanceenable integer,
    son_func_cell_ctl_blankingloadbalanceenable integer,
    son_func_cell_ctl_rachoptenable integer,
    son_func_cell_ctl_picosubbandblankingenable integer,
    son_func_cell_ctl_idlemodeloadbalanceenable integer,
    son_func_cell_ctl_sonsrsfuncenable integer,
    son_ul_icic_func_ulicictype integer,
    trch_info_func_maxharqtx integer,
    trch_info_func_ttibundling integer,
    trch_info_func_ttibundlingband integer,
    trch_info_func_periodicphrtimer integer,
    trch_info_func_dlpathlosschange integer,
    trch_info_func_maxharqtxbundling integer,
    ue_timer_const_info_logic_t300 integer,
    ue_timer_const_info_logic_t301 integer,
    ue_timer_const_info_logic_t302 integer,
    ue_timer_const_info_logic_t304 integer,
    ue_timer_const_info_logic_ccot304 integer,
    ue_timer_const_info_logic_t310 integer,
    ue_timer_const_info_logic_t311 integer,
    ue_timer_const_info_logic_t320 integer,
    ue_timer_const_info_logic_n310 integer,
    ue_timer_const_info_logic_n311 integer,
    ul_pwr_ctl_param_logic_p0nominalpusch integer,
    ul_pwr_ctl_param_logic_alpha integer,
    ul_pwr_ctl_param_logic_p0nominalpucch integer,
    ul_pwr_ctl_param_logic_deltafpucchformat1 integer,
    ul_pwr_ctl_param_logic_deltafpucchformat1b integer,
    ul_pwr_ctl_param_logic_deltafpucchformat2 integer,
    ul_pwr_ctl_param_logic_deltafpucchformat2a integer,
    ul_pwr_ctl_param_logic_deltafpucchformat2b integer,
    ul_pwr_ctl_param_logic_deltapreamblemsg3 integer,
    ul_pwr_ctl_param_logic_ultargetiot integer,
    ul_pwr_ctl_param_logic_ulioithresholdstep integer,
    utra_resel_info_logic_treselection integer,
    utra_resel_info_logic_sfusage integer,
    utra_resel_info_logic_treselectionsfmedium integer,
    utra_resel_info_logic_treselectionsfhigh integer,
    bcch_conf_logic_modificationperiodcoeff integer,
    cdma_rttmobility_params_auth integer,
    cdma_rttmobility_params_fpcfchincluded integer,
    cdma_rttmobility_params_fpcfchinitsetptrc3 integer,
    cdma_rttmobility_params_fpcfchinitsetptrc4 integer,
    cdma_rttmobility_params_fpcfchinitsetptrc5 integer,
    cdma_rttmobility_params_gcsnal2acktimer integer,
    cdma_rttmobility_params_gcsnaseqcontexttimer integer,
    cdma_rttmobility_params_imsi1112 integer,
    cdma_rttmobility_params_imsitsupported integer,
    cdma_rttmobility_params_lpsec integer,
    cdma_rttmobility_params_maxnumaltso integer,
    cdma_rttmobility_params_mcc integer,
    cdma_rttmobility_params_minprev integer,
    cdma_rttmobility_params_pilotinc integer,
    cdma_rttmobility_params_powerdownreg integer,
    cdma_rttmobility_params_prefmsidtype integer,
    cdma_rttmobility_params_prev integer,
    cdma_rttoverlayinfo_params_cellid integer,
    cdma_rttoverlayinfo_params_mscid integer,
    cdma_rttoverlayinfo_params_sectorid integer,
    cdma_rttoverlayinfo_params_treselection1xrtt integer,
    cdma_rttoverlayinfo_params_treselectionsfhigh1xrtt integer,
    cdma_rttoverlayinfo_params_treselectionsfmedium1xrtt integer,
    cdma_rttoverlayinfo_params_treselectionsfusage1xrtt integer,
    cdma_rttoverlayinfo_params_usagelongcodestate1xrtt integer,
    cdma_rttpreregist_params_csfbpreregusage integer,
    cdma_rttpreregist_params_foreignnidreg integer,
    cdma_rttpreregist_params_foreignsidreg integer,
    cdma_rttpreregist_params_homereg integer,
    cdma_rttpreregist_params_multiplenid integer,
    cdma_rttpreregist_params_multiplesid integer,
    cdma_rttpreregist_params_nid integer,
    cdma_rttpreregist_params_parameterreg integer,
    cdma_rttpreregist_params_powerdownregind integer,
    cdma_rttpreregist_params_powerupreg integer,
    cdma_rttpreregist_params_registrationperiod integer,
    cdma_rttpreregist_params_registrationzone integer,
    cdma_rttpreregist_params_sid integer,
    cdma_rttpreregist_params_totalzone integer,
    cdma_rttpreregist_params_zonetimer integer,
    dphy_ulpwr_ctrl_func_accumulationenabled integer,
    dphy_ulpwr_ctrl_func_deltamcsenabled integer,
    dphy_ulpwr_ctrl_func_filtercoefficient integer,
    dphy_ulpwr_ctrl_func_p0uepucch integer,
    dphy_ulpwr_ctrl_func_p0uepusch integer,
    dphy_ulpwr_ctrl_func_psrsoffset integer,
    mac_di_sched_func_alpha integer,
    mac_di_sched_func_beta integer,
    mac_di_sched_func_dlmimomode integer,
    mac_di_sched_func_gamma integer,
    measurement_info_func_sfusage integer,
    measurement_info_func_smeasure integer,
    measurement_info_func_timetotriggersfhigh integer,
    measurement_info_func_timetotriggersfmedium integer,
    mobility_stat_info_logic_ncellchangehigh integer,
    mobility_stat_info_logic_ncellchangemedium integer,
    mobility_stat_info_logic_speedstaereselparsusage integer,
    mobility_stat_info_logic_tevalulation integer,
    mobility_stat_info_logic_thystnormal integer,
    pdsch_conf_udle_dlpoweroption integer,
    pdsch_conf_udle_forcedmode integer,
    qty_conf_eutra_rsrpfiltercoefficient integer,
    qty_conf_eutra_rsrqfiltercoefficient integer,
    rach_conf_idle_forcedmode integer,
    rach_conf_idle_raresponsewindowsize integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_neid_cellnum_params_pkey; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_neid_cellnum_params
    ADD CONSTRAINT sam_neid_cellnum_params_pkey PRIMARY KEY (item_date, lsm_name, neid, cellnum, create_ts);


--
-- Name: sam_neid_cellnum_params_ix1; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX sam_neid_cellnum_params_ix1 ON sam_neid_cellnum_params USING btree (item_date, lsm_name);

ALTER TABLE sam_neid_cellnum_params CLUSTER ON sam_neid_cellnum_params_ix1;


--
-- PostgreSQL database dump complete
--

