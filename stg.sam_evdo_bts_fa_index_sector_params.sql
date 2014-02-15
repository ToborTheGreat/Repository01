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

ALTER TABLE ONLY stg.sam_evdo_bts_fa_index_sector_params DROP CONSTRAINT sam_evdo_bts_fa_index_sector_params_pk;
DROP TABLE stg.sam_evdo_bts_fa_index_sector_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_fa_index_sector_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_evdo_bts_fa_index_sector_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    fa_index integer NOT NULL,
    sector integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    bts_evdo_ao_set_mgmt_diff_ch_add_intercept integer,
    bts_evdo_ao_set_mgmt_diff_ch_drop_intercept integer,
    bts_evdo_ao_set_mgmt_diff_ch_dynamic_thresholds integer,
    bts_evdo_ao_set_mgmt_diff_ch_nbr_max_age integer,
    bts_evdo_ao_set_mgmt_diff_ch_pilot_add integer,
    bts_evdo_ao_set_mgmt_diff_ch_pilot_compare integer,
    bts_evdo_ao_set_mgmt_diff_ch_pilot_drop integer,
    bts_evdo_ao_set_mgmt_diff_ch_pilot_drop_timer integer,
    bts_evdo_ao_set_mgmt_diff_ch_soft_slope integer,
    bts_evdo_ao_set_mgmt_diff_ch_status integer,
    bts_evdo_ao_set_mgmt_diff_ch_use_default integer,
    bts_evdo_ao_set_mgmt_same_ch_add_intercept integer,
    bts_evdo_ao_set_mgmt_same_ch_drop_intercept integer,
    bts_evdo_ao_set_mgmt_same_ch_dynamic_thresholds integer,
    bts_evdo_ao_set_mgmt_same_ch_nbr_max_age integer,
    bts_evdo_ao_set_mgmt_same_ch_pilot_add integer,
    bts_evdo_ao_set_mgmt_same_ch_pilot_compare integer,
    bts_evdo_ao_set_mgmt_same_ch_pilot_drop integer,
    bts_evdo_ao_set_mgmt_same_ch_pilot_drop_timer integer,
    bts_evdo_ao_set_mgmt_same_ch_soft_slope integer,
    bts_evdo_ao_set_mgmt_same_ch_status integer,
    bts_evdo_ao_set_mgmt_same_ch_use_default integer,
    bts_evdo_quick_msg_redirect integer,
    bts_evdo_quick_msg_status integer,
    bts_evdo_scheduler_first_initial_t_k integer,
    bts_evdo_scheduler_first_time_constant integer,
    bts_evdo_scheduler_initial_d_k integer,
    bts_evdo_scheduler_parameter_change_time integer,
    bts_evdo_scheduler_scheduler_algorithm_type integer,
    bts_evdo_scheduler_second_initial_t_k integer,
    bts_evdo_scheduler_second_time_constant integer,
    bts_evdo_scheduler_status integer,
    bts_evdo_scheduler_traffic_scheduler_type integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_evdo_bts_fa_index_sector_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_evdo_bts_fa_index_sector_params
    ADD CONSTRAINT sam_evdo_bts_fa_index_sector_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, bts, fa_index, sector, create_ts);


--
-- PostgreSQL database dump complete
--

