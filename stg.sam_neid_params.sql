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

DROP INDEX stg.sam_neid_params_ix1;
ALTER TABLE ONLY stg.sam_neid_params DROP CONSTRAINT sam_neid_params_pkey;
DROP TABLE stg.sam_neid_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_neid_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_neid_params (
    item_date date NOT NULL,
    lsm_name character varying NOT NULL,
    neid integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    son_lb_func_dbindex integer,
    son_lb_func_numlbcandidate integer,
    son_lb_func_numlbtarget integer,
    son_lb_func_numlbmaxue integer,
    son_lb_func_capacitylbalphafactor real,
    son_lb_func_capacitylbbetafactor real,
    son_lb_func_golduefactor real,
    son_lb_func_silveruefactor real,
    son_lb_func_multicaloadgapthreshold real,
    son_lb_func_intragrouplbtriggerthreshold real,
    son_lb_func_overloadthresholdprb real,
    son_lb_func_overloadthresholdtarget real,
    son_lb_func_cputhreshold real,
    son_lb_func_minbackhaulcapacity real,
    son_lb_func_tloaddecisionlb integer,
    son_lb_func_tresourcestatusreporting integer,
    son_lb_func_tmeasurementcollectionlb integer,
    son_lb_func_tmeasurementreportintervallb integer,
    son_mro_func_dbindex integer,
    son_mro_func_tperiod integer,
    son_mro_func_tperiodtemp integer,
    son_mro_func_handoversuccesskpi real,
    son_mro_func_nhandoverthresh integer,
    son_mro_func_offsetmax integer,
    son_mro_func_offsetmin integer,
    son_mro_func_toolatehandoversizestep integer,
    son_mro_func_tooearlyhandoversizestep integer,
    son_mro_func_pingpongcontrol integer,
    son_mro_func_pingpongsizestep integer,
    son_mro_func_handoversuccessmargin real,
    son_mro_func_pingponghandoverkpi real,
    son_mro_func_pingponghandovertimer real,
    son_mro_func_tttcontrol integer,
    son_mro_func_varrhosuccessthresh real,
    son_mro_func_varrpphothresh real,
    son_mro_func_tttmax integer,
    son_mro_func_tttmin integer,
    son_mro_func_pingponghandovermargin real,
    son_ro_func_dbindex integer,
    son_ro_func_tperiod integer,
    son_ro_func_tperiodtemp integer,
    son_ro_func_rachfilteringcoeff real,
    son_ro_func_dedicatedincrease integer,
    son_ro_func_dedicateddecrease integer,
    son_ro_func_probdedicatedincrease integer,
    son_ro_func_probdedicateddecrease integer,
    son_ro_func_dedicatedmax integer,
    son_ro_func_dedicatedmin integer,
    son_ro_func_powerincrease integer,
    son_ro_func_powerdecrease integer,
    son_ro_func_powerincreaseded integer,
    son_ro_func_powerdecreaseded integer,
    son_ro_func_probpowerincrease integer,
    son_ro_func_probpowerdecrease integer,
    son_ro_func_preambleinitialreceivedtargetpowermax integer,
    son_ro_func_preambleinitialreceivedtargetpowermin integer,
    son_ro_func_powerrampingstepmax integer,
    son_ro_func_powerrampingstepmin integer,
    son_ro_func_contentionincrease integer,
    son_ro_func_contentiondecrease integer,
    son_ro_func_probcontentionincrease integer,
    son_ro_func_probcontentiondecrease integer,
    son_ro_func_timechancemax integer,
    son_ro_func_timechancemin integer,
    timer_info_dbindex integer,
    timer_info_rrcconnectionsetup integer,
    timer_info_rrcconnectionreconfig integer,
    timer_info_rrcconnectionreestablish integer,
    timer_info_rrcsecuritymodecommand integer,
    timer_info_rrcuecapabilityenquiry integer,
    timer_info_rrcconnectionrelease integer,
    timer_info_rrchandoverpreparation integer,
    timer_info_rrcueinformationrequest integer,
    timer_info_s1setup integer,
    timer_info_s1update integer,
    timer_info_s1updateretrycount integer,
    timer_info_s1updatetimetowait integer,
    timer_info_s1initialcontextsetup integer,
    timer_info_s1erabreleaseindication integer,
    timer_info_s1uecontextrelease integer,
    timer_info_s1pathswitch integer,
    timer_info_s1handoverpreparation integer,
    timer_info_s1relocoverall integer,
    timer_info_s1handovercancel integer,
    timer_info_x2setup integer,
    timer_info_x2setuptimetowait integer,
    timer_info_x2update integer,
    timer_info_x2updateretrycount integer,
    timer_info_x2updatetimetowait integer,
    timer_info_x2handoverpreparation integer,
    timer_info_x2relocoverall integer,
    timer_info_x2storeuecontext integer,
    timer_info_internalresourcesetup integer,
    timer_info_internalresourcerelease integer,
    timer_info_internalsecuritycontrol integer,
    timer_info_internalrrcdatatransfer integer,
    timer_info_internalforwardingpathsetup integer,
    timer_info_internalreestalishcontrol integer,
    timer_info_internalbufferflush integer,
    timer_info_internaldatatransferstart integer,
    timer_info_internaldataforwardendind integer,
    timer_info_internalreestablshtimetowait integer,
    timer_info_internaluserinactivity integer,
    timer_info_internalunassigned integer,
    timer_info_internalnowaitretry integer,
    timer_info_internalrrcreset integer,
    timer_info_internalenbreset integer,
    timer_info_internalsolicitmeasurementreport integer,
    timer_info_internalrtdinforeq integer,
    timer_info_rimrir integer,
    timer_info_rimriae integer,
    timer_info_internalsubcellchange integer,
    timer_info_internalsubcellpdcpcontrol integer,
    fileformatversion character varying,
    cdma_2000_conf_dbindex integer,
    cdma_2000_conf_cdmaeutrasynchronisation integer,
    cdma_2000_conf_searchwindowsize integer,
    cdma_2000_conf_csfbsupportdualrxue integer,
    enb_cac_info_func_dbindex integer,
    enb_cac_info_func_callcountcacusage integer,
    enb_cac_info_func_maxenbcallcount integer,
    enb_cac_info_func_callcacthreshfornormal integer,
    enb_cac_info_func_callcacthreshforemerho integer,
    enb_cac_info_func_checkueidusage integer,
    ho_optn_info_func_dbindex integer,
    ho_optn_info_func_erabinteraction integer,
    ho_optn_info_func_usednbrlist integer,
    ho_optn_info_func_uplinkforward integer,
    ho_optn_info_func_numofenb integer,
    ho_optn_info_func_interfreqredirection integer,
    ho_optn_info_func_interratpsredirection integer,
    ho_optn_info_func_interratcsredirection integer,
    ho_optn_info_func_rimenable integer,
    pcch_conf_logic_dbindex integer,
    pcch_conf_logic_defaultpagingcycle integer,
    pcch_conf_logic_nb integer,
    security_info_func_dbindex integer,
    security_info_func_integrityeaprior integer,
    security_info_func_ciphereaprior integer,
    son_anr_func_dbindex integer,
    son_anr_func_defaultperiod integer,
    son_anr_func_defaultweight real,
    son_anr_func_hoattemptweight real,
    son_anr_func_hosuccessweight real,
    son_anr_func_lowerhoattemptrate real,
    son_anr_func_lowerhosuccesstokpi real,
    son_anr_func_lsmusageflag integer,
    son_anr_func_maxnrtsize integer,
    son_anr_func_upperhotoblackrate real,
    son_func_enb_ctl_dbindex integer,
    son_func_enb_ctl_delaycompensationenable integer,
    son_func_enb_ctl_pcidenable integer,
    son_func_enb_ctl_rptdelaycompensationenable integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_neid_params_pkey; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_neid_params
    ADD CONSTRAINT sam_neid_params_pkey PRIMARY KEY (item_date, lsm_name, neid, create_ts);


--
-- Name: sam_neid_params_ix1; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX sam_neid_params_ix1 ON sam_neid_params USING btree (item_date, lsm_name);

ALTER TABLE sam_neid_params CLUSTER ON sam_neid_params_ix1;


--
-- PostgreSQL database dump complete
--

