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

DROP INDEX dw_evdo.sam_evdo_bts_serv_type_params_dim_ux;
DROP INDEX dw_evdo.sam_evdo_bts_serv_type_params_dim_i1;
ALTER TABLE ONLY dw_evdo.sam_evdo_bts_serv_type_params_dim DROP CONSTRAINT sam_evdo_bts_serv_type_params_dim_pk;
DROP TABLE dw_evdo.sam_evdo_bts_serv_type_params_dim;
SET search_path = dw_evdo, pg_catalog;

SET default_tablespace = p2_dw_evdodata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_serv_type_params_dim; Type: TABLE; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdodata
--

CREATE TABLE sam_evdo_bts_serv_type_params_dim (
    sam_evdo_bts_serv_type_params_dim_id integer DEFAULT nextval('sam_evdo_bts_serv_type_params_dim_seq'::regclass) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    serv_type integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    bts_evdo_access_ch_access_window_size_0 integer,
    bts_evdo_access_ch_access_window_size_1 integer,
    bts_evdo_access_ch_access_window_size_2 integer,
    bts_evdo_access_ch_access_window_size_3 integer,
    bts_evdo_access_ch_access_window_size_4 integer,
    bts_evdo_access_ch_access_window_size_5 integer,
    bts_evdo_access_ch_capsule_length_max integer,
    bts_evdo_access_ch_min_access_cycle_duration_0 integer,
    bts_evdo_access_ch_min_access_cycle_duration_1 integer,
    bts_evdo_access_ch_min_access_cycle_duration_2 integer,
    bts_evdo_access_ch_min_access_cycle_duration_3 integer,
    bts_evdo_access_ch_min_access_cycle_duration_4 integer,
    bts_evdo_access_ch_min_access_cycle_duration_5 integer,
    bts_evdo_access_ch_preamble_length integer,
    bts_evdo_access_ch_preamble_length_slots integer,
    bts_evdo_access_ch_status integer
);


SET default_tablespace = p2_dw_evdoindex;

--
-- Name: sam_evdo_bts_serv_type_params_dim_pk; Type: CONSTRAINT; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

ALTER TABLE ONLY sam_evdo_bts_serv_type_params_dim
    ADD CONSTRAINT sam_evdo_bts_serv_type_params_dim_pk PRIMARY KEY (sam_evdo_bts_serv_type_params_dim_id);


--
-- Name: sam_evdo_bts_serv_type_params_dim_i1; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE INDEX sam_evdo_bts_serv_type_params_dim_i1 ON sam_evdo_bts_serv_type_params_dim USING btree (shorter_bsm_name, bts, effective_begin, effective_end);


--
-- Name: sam_evdo_bts_serv_type_params_dim_ux; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE UNIQUE INDEX sam_evdo_bts_serv_type_params_dim_ux ON sam_evdo_bts_serv_type_params_dim USING btree (shorter_bsm_name, bsc_name, bts, serv_type, effective_begin);


--
-- PostgreSQL database dump complete
--

