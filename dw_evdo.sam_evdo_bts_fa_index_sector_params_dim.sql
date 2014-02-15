--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw_evdo, pg_catalog;

DROP INDEX dw_evdo.sam_evdo_bts_fa_index_sector_params_dim_ux;
DROP INDEX dw_evdo.sam_evdo_bts_fa_index_sector_params_dim_i1;
ALTER TABLE ONLY dw_evdo.sam_evdo_bts_fa_index_sector_params_dim DROP CONSTRAINT sam_evdo_bts_fa_index_sector_params_dim_pk;
DROP TABLE dw_evdo.sam_evdo_bts_fa_index_sector_params_dim;
SET search_path = dw_evdo, pg_catalog;

SET default_tablespace = p2_dw_evdodata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_fa_index_sector_params_dim; Type: TABLE; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdodata
--

CREATE TABLE sam_evdo_bts_fa_index_sector_params_dim (
    sam_evdo_bts_fa_index_sector_params_dim_id integer DEFAULT nextval('sam_evdo_bts_fa_index_sector_params_dim_seq'::regclass) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    fa_index integer NOT NULL,
    sector integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
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


SET default_tablespace = p2_dw_evdoindex;

--
-- Name: sam_evdo_bts_fa_index_sector_params_dim_pk; Type: CONSTRAINT; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

ALTER TABLE ONLY sam_evdo_bts_fa_index_sector_params_dim
    ADD CONSTRAINT sam_evdo_bts_fa_index_sector_params_dim_pk PRIMARY KEY (sam_evdo_bts_fa_index_sector_params_dim_id);


--
-- Name: sam_evdo_bts_fa_index_sector_params_dim_i1; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE INDEX sam_evdo_bts_fa_index_sector_params_dim_i1 ON sam_evdo_bts_fa_index_sector_params_dim USING btree (shorter_bsm_name, bts, effective_begin, effective_end);


--
-- Name: sam_evdo_bts_fa_index_sector_params_dim_ux; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE UNIQUE INDEX sam_evdo_bts_fa_index_sector_params_dim_ux ON sam_evdo_bts_fa_index_sector_params_dim USING btree (shorter_bsm_name, bsc_name, bts, fa_index, sector, effective_begin);


--
-- PostgreSQL database dump complete
--

