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

ALTER TABLE ONLY stg.sam_evdo_bts_sector_band_class_index_params DROP CONSTRAINT sam_evdo_bts_sector_band_class_index_params_pk;
DROP TABLE stg.sam_evdo_bts_sector_band_class_index_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_sector_band_class_index_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_evdo_bts_sector_band_class_index_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    band_class_index integer NOT NULL,
    bts integer NOT NULL,
    sector integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    bts_evdo_access_msg_access_offset integer,
    bts_evdo_access_msg_apersistence_0 integer,
    bts_evdo_access_msg_apersistence_1 integer,
    bts_evdo_access_msg_apersistence_2 integer,
    bts_evdo_access_msg_apersistence_3 integer,
    bts_evdo_access_msg_enhanced_access_parameters_included integer,
    bts_evdo_access_msg_max_pn_rand_delay integer,
    bts_evdo_access_msg_max_pn_rand_delay_included integer,
    bts_evdo_access_msg_open_loop_adjust integer,
    bts_evdo_access_msg_pilot_strength_correction_max integer,
    bts_evdo_access_msg_pilot_strength_correction_min integer,
    bts_evdo_access_msg_pilot_strength_nominal integer,
    bts_evdo_access_msg_power_step integer,
    bts_evdo_access_msg_probe_initial_adjust integer,
    bts_evdo_access_msg_probe_num_step integer,
    bts_evdo_access_msg_probe_time_out_adjust integer,
    bts_evdo_access_msg_sector_access_max_rate integer,
    bts_evdo_access_msg_status integer,
    bts_evdo_carr_ovld_ctrl_minimum_dormancy_timer integer,
    bts_evdo_carr_ovld_ctrl_overload_threshold integer,
    bts_evdo_carr_ovld_ctrl_status integer,
    bts_evdo_handoff_offset_reset_report_timer integer,
    bts_evdo_handoff_offset_same_bc_diff_system_offset integer,
    bts_evdo_handoff_offset_same_bc_same_system_offset integer,
    bts_evdo_handoff_offset_status integer,
    bts_evdo_handoff_offset_used_flag integer,
    bts_evdo_multi_carr_thrsh_status integer,
    bts_evdo_multi_carr_thrsh_threshold_2x integer,
    bts_evdo_multi_carr_thrsh_threshold_3x integer,
    bts_evdo_nbr_color_code_0 integer,
    bts_evdo_nbr_color_code_1 integer,
    bts_evdo_nbr_color_code_10 integer,
    bts_evdo_nbr_color_code_11 integer,
    bts_evdo_nbr_color_code_12 integer,
    bts_evdo_nbr_color_code_13 integer,
    bts_evdo_nbr_color_code_14 integer,
    bts_evdo_nbr_color_code_15 integer,
    bts_evdo_nbr_color_code_16 integer,
    bts_evdo_nbr_color_code_17 integer,
    bts_evdo_nbr_color_code_18 integer,
    bts_evdo_nbr_color_code_19 integer,
    bts_evdo_nbr_color_code_2 integer,
    bts_evdo_nbr_color_code_20 integer,
    bts_evdo_nbr_color_code_21 integer,
    bts_evdo_nbr_color_code_22 integer,
    bts_evdo_nbr_color_code_23 integer,
    bts_evdo_nbr_color_code_24 integer,
    bts_evdo_nbr_color_code_25 integer,
    bts_evdo_nbr_color_code_26 integer,
    bts_evdo_nbr_color_code_27 integer,
    bts_evdo_nbr_color_code_28 integer,
    bts_evdo_nbr_color_code_29 integer,
    bts_evdo_nbr_color_code_3 integer,
    bts_evdo_nbr_color_code_30 integer,
    bts_evdo_nbr_color_code_4 integer,
    bts_evdo_nbr_color_code_5 integer,
    bts_evdo_nbr_color_code_6 integer,
    bts_evdo_nbr_color_code_7 integer,
    bts_evdo_nbr_color_code_8 integer,
    bts_evdo_nbr_color_code_9 integer,
    bts_evdo_nbr_status integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_evdo_bts_sector_band_class_index_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_evdo_bts_sector_band_class_index_params
    ADD CONSTRAINT sam_evdo_bts_sector_band_class_index_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, band_class_index, bts, sector, create_ts);


--
-- PostgreSQL database dump complete
--

