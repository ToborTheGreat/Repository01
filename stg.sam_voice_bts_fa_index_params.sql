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

ALTER TABLE ONLY stg.sam_voice_bts_fa_index_params DROP CONSTRAINT sam_voice_bts_fa_index_params_pk;
DROP TABLE stg.sam_voice_bts_fa_index_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_fa_index_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_voice_bts_fa_index_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    fa_index integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    bts_fa_access_hashing_channel_mask integer,
    bts_fa_band_class_index character varying,
    bts_fa_bcp integer,
    bts_fa_clk_adv integer,
    bts_fa_data_bcp_id integer,
    bts_fa_data_cep_id integer,
    bts_fa_data_fa_flag integer,
    bts_fa_fa_id integer,
    bts_fa_fa_kind character varying,
    bts_fa_ho_ce_reserve_ratio integer,
    bts_fa_max_new_call_load integer,
    bts_fa_ota_nid integer,
    bts_fa_ota_sid integer,
    bts_fa_path character varying,
    bts_fa_pdch_flag character varying,
    bts_fa_rc_qpch_hash_ind character varying,
    bts_fa_ref_fa_index integer,
    bts_fa_rrh_port_group character varying,
    bts_fa_serv_type character varying,
    bts_fa_status character varying,
    bts_fa_tx_diversity character varying,
    bts_traffic_ch_acq_win_prd integer,
    bts_traffic_ch_combine_thresh0_2g integer,
    bts_traffic_ch_combine_thresh0_3g integer,
    bts_traffic_ch_combine_thresh1_2g integer,
    bts_traffic_ch_combine_thresh1_3g integer,
    bts_traffic_ch_combine_thresh2_2g integer,
    bts_traffic_ch_combine_thresh2_3g integer,
    bts_traffic_ch_combine_thresh3_2g integer,
    bts_traffic_ch_combine_thresh3_3g integer,
    bts_traffic_ch_correlation_length_2g integer,
    bts_traffic_ch_correlation_length_3g integer,
    bts_traffic_ch_demod_win_length integer,
    bts_traffic_ch_loss_thresh_2g integer,
    bts_traffic_ch_loss_thresh_3g integer,
    bts_traffic_ch_pctl_outer_loop_enable integer,
    bts_traffic_ch_replace_thresh0_2g integer,
    bts_traffic_ch_replace_thresh0_3g integer,
    bts_traffic_ch_replace_thresh1_2g integer,
    bts_traffic_ch_replace_thresh1_3g integer,
    bts_traffic_ch_srchr_detect_thresh_2g integer,
    bts_traffic_ch_srchr_detect_thresh_3g integer,
    bts_traffic_ch_srchr_discard_thresh_2g integer,
    bts_traffic_ch_srchr_discard_thresh_3g integer,
    bts_traffic_ch_srchr_max_acc_count integer,
    bts_traffic_ch_status integer,
    bts_traffic_ch_trachker_thresh0_2g integer,
    bts_traffic_ch_trachker_thresh0_3g integer,
    bts_traffic_ch_trachker_thresh1_2g integer,
    bts_traffic_ch_trachker_thresh1_3g integer,
    bts_traffic_ch_velocity_thresh0 integer,
    bts_traffic_ch_velocity_thresh1 integer,
    bts_traffic_ch_velocity_thresh2 integer,
    bts_traffic_ch_velocity_thresh3 integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_voice_bts_fa_index_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_voice_bts_fa_index_params
    ADD CONSTRAINT sam_voice_bts_fa_index_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, bts, fa_index, create_ts);


--
-- PostgreSQL database dump complete
--

