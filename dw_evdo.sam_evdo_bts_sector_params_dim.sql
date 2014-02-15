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

DROP INDEX dw_evdo.sam_evdo_bts_sector_params_dim_ux;
DROP INDEX dw_evdo.sam_evdo_bts_sector_params_dim_i1;
ALTER TABLE ONLY dw_evdo.sam_evdo_bts_sector_params_dim DROP CONSTRAINT sam_evdo_bts_sector_params_dim_pk;
DROP TABLE dw_evdo.sam_evdo_bts_sector_params_dim;
SET search_path = dw_evdo, pg_catalog;

SET default_tablespace = p2_dw_evdodata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_sector_params_dim; Type: TABLE; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdodata
--

CREATE TABLE sam_evdo_bts_sector_params_dim (
    sam_evdo_bts_sector_params_dim_id integer DEFAULT nextval('sam_evdo_bts_sector_params_dim_seq'::regclass) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    sector integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    bts_evdo_qos_fwd_scheduler_admit_max_slot integer,
    bts_evdo_qos_fwd_scheduler_downgrade_period integer,
    bts_evdo_qos_fwd_scheduler_downgrade_threshold integer,
    bts_evdo_qos_fwd_scheduler_num_rlp_pkt_threshold integer,
    bts_evdo_qos_fwd_scheduler_qos_fail_threshold integer,
    bts_evdo_qos_fwd_scheduler_status integer,
    bts_evdo_qos_fwd_scheduler_t_drc integer,
    bts_evdo_qos_fwd_scheduler_t_hold_value integer,
    bts_evdo_qos_fwd_scheduler_t_sc integer,
    bts_evdo_qos_fwd_scheduler_tt_downgrade_value integer,
    bts_evdo_qos_fwd_scheduler_tt_upgrade_value integer,
    bts_evdo_qos_fwd_scheduler_up_downgrade_option integer,
    bts_evdo_qos_fwd_scheduler_upgrade_period integer,
    bts_evdo_qos_fwd_scheduler_upgrade_threshold integer,
    bts_evdo_qos_fwd_scheduler_virtual_downgrade_pri_option integer,
    bts_evdo_rvs_rate_limit_rate_limit_0 integer,
    bts_evdo_rvs_rate_limit_rate_limit_1 integer,
    bts_evdo_rvs_rate_limit_rate_limit_10 integer,
    bts_evdo_rvs_rate_limit_rate_limit_11 integer,
    bts_evdo_rvs_rate_limit_rate_limit_12 integer,
    bts_evdo_rvs_rate_limit_rate_limit_13 integer,
    bts_evdo_rvs_rate_limit_rate_limit_14 integer,
    bts_evdo_rvs_rate_limit_rate_limit_15 integer,
    bts_evdo_rvs_rate_limit_rate_limit_16 integer,
    bts_evdo_rvs_rate_limit_rate_limit_17 integer,
    bts_evdo_rvs_rate_limit_rate_limit_18 integer,
    bts_evdo_rvs_rate_limit_rate_limit_19 integer,
    bts_evdo_rvs_rate_limit_rate_limit_2 integer,
    bts_evdo_rvs_rate_limit_rate_limit_20 integer,
    bts_evdo_rvs_rate_limit_rate_limit_21 integer,
    bts_evdo_rvs_rate_limit_rate_limit_22 integer,
    bts_evdo_rvs_rate_limit_rate_limit_23 integer,
    bts_evdo_rvs_rate_limit_rate_limit_24 integer,
    bts_evdo_rvs_rate_limit_rate_limit_25 integer,
    bts_evdo_rvs_rate_limit_rate_limit_26 integer,
    bts_evdo_rvs_rate_limit_rate_limit_27 integer,
    bts_evdo_rvs_rate_limit_rate_limit_28 integer,
    bts_evdo_rvs_rate_limit_rate_limit_29 integer,
    bts_evdo_rvs_rate_limit_rate_limit_3 integer,
    bts_evdo_rvs_rate_limit_rate_limit_30 integer,
    bts_evdo_rvs_rate_limit_rate_limit_31 integer,
    bts_evdo_rvs_rate_limit_rate_limit_32 integer,
    bts_evdo_rvs_rate_limit_rate_limit_33 integer,
    bts_evdo_rvs_rate_limit_rate_limit_34 integer,
    bts_evdo_rvs_rate_limit_rate_limit_35 integer,
    bts_evdo_rvs_rate_limit_rate_limit_36 integer,
    bts_evdo_rvs_rate_limit_rate_limit_37 integer,
    bts_evdo_rvs_rate_limit_rate_limit_38 integer,
    bts_evdo_rvs_rate_limit_rate_limit_39 integer,
    bts_evdo_rvs_rate_limit_rate_limit_4 integer,
    bts_evdo_rvs_rate_limit_rate_limit_40 integer,
    bts_evdo_rvs_rate_limit_rate_limit_41 integer,
    bts_evdo_rvs_rate_limit_rate_limit_42 integer,
    bts_evdo_rvs_rate_limit_rate_limit_43 integer,
    bts_evdo_rvs_rate_limit_rate_limit_44 integer,
    bts_evdo_rvs_rate_limit_rate_limit_45 integer,
    bts_evdo_rvs_rate_limit_rate_limit_46 integer,
    bts_evdo_rvs_rate_limit_rate_limit_47 integer,
    bts_evdo_rvs_rate_limit_rate_limit_48 integer,
    bts_evdo_rvs_rate_limit_rate_limit_49 integer,
    bts_evdo_rvs_rate_limit_rate_limit_5 integer,
    bts_evdo_rvs_rate_limit_rate_limit_50 integer,
    bts_evdo_rvs_rate_limit_rate_limit_51 integer,
    bts_evdo_rvs_rate_limit_rate_limit_52 integer,
    bts_evdo_rvs_rate_limit_rate_limit_53 integer,
    bts_evdo_rvs_rate_limit_rate_limit_54 integer,
    bts_evdo_rvs_rate_limit_rate_limit_55 integer,
    bts_evdo_rvs_rate_limit_rate_limit_56 integer,
    bts_evdo_rvs_rate_limit_rate_limit_57 integer,
    bts_evdo_rvs_rate_limit_rate_limit_58 integer,
    bts_evdo_rvs_rate_limit_rate_limit_59 integer,
    bts_evdo_rvs_rate_limit_rate_limit_6 integer,
    bts_evdo_rvs_rate_limit_rate_limit_60 integer,
    bts_evdo_rvs_rate_limit_rate_limit_61 integer,
    bts_evdo_rvs_rate_limit_rate_limit_62 integer,
    bts_evdo_rvs_rate_limit_rate_limit_63 integer,
    bts_evdo_rvs_rate_limit_rate_limit_7 integer,
    bts_evdo_rvs_rate_limit_rate_limit_8 integer,
    bts_evdo_rvs_rate_limit_rate_limit_9 integer,
    bts_evdo_rvs_rate_limit_status integer
);


SET default_tablespace = p2_dw_evdoindex;

--
-- Name: sam_evdo_bts_sector_params_dim_pk; Type: CONSTRAINT; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

ALTER TABLE ONLY sam_evdo_bts_sector_params_dim
    ADD CONSTRAINT sam_evdo_bts_sector_params_dim_pk PRIMARY KEY (sam_evdo_bts_sector_params_dim_id);


--
-- Name: sam_evdo_bts_sector_params_dim_i1; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE INDEX sam_evdo_bts_sector_params_dim_i1 ON sam_evdo_bts_sector_params_dim USING btree (shorter_bsm_name, bts, effective_begin, effective_end);


--
-- Name: sam_evdo_bts_sector_params_dim_ux; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE UNIQUE INDEX sam_evdo_bts_sector_params_dim_ux ON sam_evdo_bts_sector_params_dim USING btree (shorter_bsm_name, bsc_name, bts, sector, effective_begin);


--
-- PostgreSQL database dump complete
--

