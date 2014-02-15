--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw_voice, pg_catalog;

DROP INDEX dw_voice.sam_voice_bts_fa_index_params_dim_ux;
DROP INDEX dw_voice.sam_voice_bts_fa_index_params_dim_i1;
ALTER TABLE ONLY dw_voice.sam_voice_bts_fa_index_params_dim DROP CONSTRAINT sam_voice_bts_fa_index_params_dim_pk;
DROP TABLE dw_voice.sam_voice_bts_fa_index_params_dim;
SET search_path = dw_voice, pg_catalog;

SET default_tablespace = p2_dw_voicedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_fa_index_params_dim; Type: TABLE; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voicedata
--

CREATE TABLE sam_voice_bts_fa_index_params_dim (
    sam_voice_bts_fa_index_params_dim_id integer DEFAULT nextval('sam_voice_bts_fa_index_params_dim_seq'::regclass) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    fa_index integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
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


SET default_tablespace = p2_dw_voiceindex;

--
-- Name: sam_voice_bts_fa_index_params_dim_pk; Type: CONSTRAINT; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

ALTER TABLE ONLY sam_voice_bts_fa_index_params_dim
    ADD CONSTRAINT sam_voice_bts_fa_index_params_dim_pk PRIMARY KEY (sam_voice_bts_fa_index_params_dim_id);


--
-- Name: sam_voice_bts_fa_index_params_dim_i1; Type: INDEX; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

CREATE INDEX sam_voice_bts_fa_index_params_dim_i1 ON sam_voice_bts_fa_index_params_dim USING btree (shorter_bsm_name, bts, effective_begin, effective_end);


--
-- Name: sam_voice_bts_fa_index_params_dim_ux; Type: INDEX; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

CREATE UNIQUE INDEX sam_voice_bts_fa_index_params_dim_ux ON sam_voice_bts_fa_index_params_dim USING btree (shorter_bsm_name, bsc_name, bts, fa_index, effective_begin);


--
-- PostgreSQL database dump complete
--

