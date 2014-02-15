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

DROP INDEX dw_voice.sam_voice_bts_lru_params_dim_ux;
DROP INDEX dw_voice.sam_voice_bts_lru_params_dim_i1;
ALTER TABLE ONLY dw_voice.sam_voice_bts_lru_params_dim DROP CONSTRAINT sam_voice_bts_lru_params_dim_pk;
DROP TABLE dw_voice.sam_voice_bts_lru_params_dim;
SET search_path = dw_voice, pg_catalog;

SET default_tablespace = p2_dw_voicedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_lru_params_dim; Type: TABLE; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voicedata
--

CREATE TABLE sam_voice_bts_lru_params_dim (
    sam_voice_bts_lru_params_dim_id integer DEFAULT nextval('sam_voice_bts_lru_params_dim_seq'::regclass) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    lru integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    bts_lru_data_digital_gain_high_thr_0 integer,
    bts_lru_data_digital_gain_high_thr_1 integer,
    bts_lru_data_digital_gain_high_thr_10 integer,
    bts_lru_data_digital_gain_high_thr_11 integer,
    bts_lru_data_digital_gain_high_thr_12 integer,
    bts_lru_data_digital_gain_high_thr_13 integer,
    bts_lru_data_digital_gain_high_thr_14 integer,
    bts_lru_data_digital_gain_high_thr_15 integer,
    bts_lru_data_digital_gain_high_thr_2 integer,
    bts_lru_data_digital_gain_high_thr_3 integer,
    bts_lru_data_digital_gain_high_thr_4 integer,
    bts_lru_data_digital_gain_high_thr_5 integer,
    bts_lru_data_digital_gain_high_thr_6 integer,
    bts_lru_data_digital_gain_high_thr_7 integer,
    bts_lru_data_digital_gain_high_thr_8 integer,
    bts_lru_data_digital_gain_high_thr_9 integer,
    bts_lru_data_digital_gain_low_thr_0 integer,
    bts_lru_data_digital_gain_low_thr_1 integer,
    bts_lru_data_digital_gain_low_thr_10 integer,
    bts_lru_data_digital_gain_low_thr_11 integer,
    bts_lru_data_digital_gain_low_thr_12 integer,
    bts_lru_data_digital_gain_low_thr_13 integer,
    bts_lru_data_digital_gain_low_thr_14 integer,
    bts_lru_data_digital_gain_low_thr_15 integer,
    bts_lru_data_digital_gain_low_thr_2 integer,
    bts_lru_data_digital_gain_low_thr_3 integer,
    bts_lru_data_digital_gain_low_thr_4 integer,
    bts_lru_data_digital_gain_low_thr_5 integer,
    bts_lru_data_digital_gain_low_thr_6 integer,
    bts_lru_data_digital_gain_low_thr_7 integer,
    bts_lru_data_digital_gain_low_thr_8 integer,
    bts_lru_data_digital_gain_low_thr_9 integer,
    bts_lru_data_hpb_atten integer,
    bts_lru_data_hpb_ch_num_0 integer,
    bts_lru_data_hpb_ch_num_1 integer,
    bts_lru_data_hpb_ch_num_10 integer,
    bts_lru_data_hpb_ch_num_11 integer,
    bts_lru_data_hpb_ch_num_12 integer,
    bts_lru_data_hpb_ch_num_13 integer,
    bts_lru_data_hpb_ch_num_14 integer,
    bts_lru_data_hpb_ch_num_15 integer,
    bts_lru_data_hpb_ch_num_2 integer,
    bts_lru_data_hpb_ch_num_3 integer,
    bts_lru_data_hpb_ch_num_4 integer,
    bts_lru_data_hpb_ch_num_5 integer,
    bts_lru_data_hpb_ch_num_6 integer,
    bts_lru_data_hpb_ch_num_7 integer,
    bts_lru_data_hpb_ch_num_8 integer,
    bts_lru_data_hpb_ch_num_9 integer,
    bts_lru_data_hpb_duration integer,
    bts_lru_data_hpb_gain integer,
    bts_lru_data_hpb_offset integer,
    bts_lru_data_hpb_period integer,
    bts_lru_data_rx_a_high_pwr_thr integer,
    bts_lru_data_rx_a_low_pwr_thr integer,
    bts_lru_data_rx_b_high_pwr_thr integer,
    bts_lru_data_rx_b_low_pwr_thr integer
);


SET default_tablespace = p2_dw_voiceindex;

--
-- Name: sam_voice_bts_lru_params_dim_pk; Type: CONSTRAINT; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

ALTER TABLE ONLY sam_voice_bts_lru_params_dim
    ADD CONSTRAINT sam_voice_bts_lru_params_dim_pk PRIMARY KEY (sam_voice_bts_lru_params_dim_id);


--
-- Name: sam_voice_bts_lru_params_dim_i1; Type: INDEX; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

CREATE INDEX sam_voice_bts_lru_params_dim_i1 ON sam_voice_bts_lru_params_dim USING btree (shorter_bsm_name, bts, effective_begin, effective_end);


--
-- Name: sam_voice_bts_lru_params_dim_ux; Type: INDEX; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

CREATE UNIQUE INDEX sam_voice_bts_lru_params_dim_ux ON sam_voice_bts_lru_params_dim USING btree (shorter_bsm_name, bsc_name, bts, lru, effective_begin);


--
-- PostgreSQL database dump complete
--

