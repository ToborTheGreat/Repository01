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

ALTER TABLE ONLY stg.sam_voice_bts_cascade_bcp_port_params DROP CONSTRAINT sam_voice_bts_cascade_bcp_port_params_pk;
DROP TABLE stg.sam_voice_bts_cascade_bcp_port_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_cascade_bcp_port_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_voice_bts_cascade_bcp_port_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bcp integer NOT NULL,
    bts integer NOT NULL,
    cascade integer NOT NULL,
    port integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    bts_rrh_data_digital_gain_high_thr_0 integer,
    bts_rrh_data_digital_gain_high_thr_1 integer,
    bts_rrh_data_digital_gain_high_thr_10 integer,
    bts_rrh_data_digital_gain_high_thr_11 integer,
    bts_rrh_data_digital_gain_high_thr_12 integer,
    bts_rrh_data_digital_gain_high_thr_13 integer,
    bts_rrh_data_digital_gain_high_thr_14 integer,
    bts_rrh_data_digital_gain_high_thr_15 integer,
    bts_rrh_data_digital_gain_high_thr_2 integer,
    bts_rrh_data_digital_gain_high_thr_3 integer,
    bts_rrh_data_digital_gain_high_thr_4 integer,
    bts_rrh_data_digital_gain_high_thr_5 integer,
    bts_rrh_data_digital_gain_high_thr_6 integer,
    bts_rrh_data_digital_gain_high_thr_7 integer,
    bts_rrh_data_digital_gain_high_thr_8 integer,
    bts_rrh_data_digital_gain_high_thr_9 integer,
    bts_rrh_data_digital_gain_low_thr_0 integer,
    bts_rrh_data_digital_gain_low_thr_1 integer,
    bts_rrh_data_digital_gain_low_thr_10 integer,
    bts_rrh_data_digital_gain_low_thr_11 integer,
    bts_rrh_data_digital_gain_low_thr_12 integer,
    bts_rrh_data_digital_gain_low_thr_13 integer,
    bts_rrh_data_digital_gain_low_thr_14 integer,
    bts_rrh_data_digital_gain_low_thr_15 integer,
    bts_rrh_data_digital_gain_low_thr_2 integer,
    bts_rrh_data_digital_gain_low_thr_3 integer,
    bts_rrh_data_digital_gain_low_thr_4 integer,
    bts_rrh_data_digital_gain_low_thr_5 integer,
    bts_rrh_data_digital_gain_low_thr_6 integer,
    bts_rrh_data_digital_gain_low_thr_7 integer,
    bts_rrh_data_digital_gain_low_thr_8 integer,
    bts_rrh_data_digital_gain_low_thr_9 integer,
    bts_rrh_data_hpb_atten integer,
    bts_rrh_data_hpb_ch_num_0 integer,
    bts_rrh_data_hpb_ch_num_1 integer,
    bts_rrh_data_hpb_ch_num_10 integer,
    bts_rrh_data_hpb_ch_num_11 integer,
    bts_rrh_data_hpb_ch_num_12 integer,
    bts_rrh_data_hpb_ch_num_13 integer,
    bts_rrh_data_hpb_ch_num_14 integer,
    bts_rrh_data_hpb_ch_num_15 integer,
    bts_rrh_data_hpb_ch_num_2 integer,
    bts_rrh_data_hpb_ch_num_3 integer,
    bts_rrh_data_hpb_ch_num_4 integer,
    bts_rrh_data_hpb_ch_num_5 integer,
    bts_rrh_data_hpb_ch_num_6 integer,
    bts_rrh_data_hpb_ch_num_7 integer,
    bts_rrh_data_hpb_ch_num_8 integer,
    bts_rrh_data_hpb_ch_num_9 integer,
    bts_rrh_data_hpb_duration integer,
    bts_rrh_data_hpb_gain integer,
    bts_rrh_data_hpb_offset integer,
    bts_rrh_data_hpb_path_0 character varying,
    bts_rrh_data_hpb_path_1 character varying,
    bts_rrh_data_hpb_path_10 character varying,
    bts_rrh_data_hpb_path_11 character varying,
    bts_rrh_data_hpb_path_12 character varying,
    bts_rrh_data_hpb_path_13 character varying,
    bts_rrh_data_hpb_path_14 character varying,
    bts_rrh_data_hpb_path_15 character varying,
    bts_rrh_data_hpb_path_2 character varying,
    bts_rrh_data_hpb_path_3 character varying,
    bts_rrh_data_hpb_path_4 character varying,
    bts_rrh_data_hpb_path_5 character varying,
    bts_rrh_data_hpb_path_6 character varying,
    bts_rrh_data_hpb_path_7 character varying,
    bts_rrh_data_hpb_path_8 character varying,
    bts_rrh_data_hpb_path_9 character varying,
    bts_rrh_data_hpb_period integer,
    bts_rrh_data_rx_a_high_pwr_thr integer,
    bts_rrh_data_rx_a_low_pwr_thr integer,
    bts_rrh_data_rx_b_high_pwr_thr integer,
    bts_rrh_data_rx_b_low_pwr_thr integer,
    bts_rrh_data_rx_c_high_pwr_thr integer,
    bts_rrh_data_rx_c_low_pwr_thr integer,
    bts_rrh_data_rx_d_high_pwr_thr integer,
    bts_rrh_data_rx_d_low_pwr_thr integer,
    bts_rrh_data_status character varying,
    bts_rrh_data_vswr_thr integer,
    bts_rrh_high_power_mode character varying,
    bts_rrh_hw_board_type character varying,
    bts_rrh_status character varying
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_voice_bts_cascade_bcp_port_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_voice_bts_cascade_bcp_port_params
    ADD CONSTRAINT sam_voice_bts_cascade_bcp_port_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, bcp, bts, cascade, port, create_ts);


--
-- PostgreSQL database dump complete
--

