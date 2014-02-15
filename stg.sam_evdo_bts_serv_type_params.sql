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

ALTER TABLE ONLY stg.sam_evdo_bts_serv_type_params DROP CONSTRAINT sam_evdo_bts_serv_type_params_pk;
DROP TABLE stg.sam_evdo_bts_serv_type_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_serv_type_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_evdo_bts_serv_type_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    serv_type integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
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


SET default_tablespace = p2_stageindex;

--
-- Name: sam_evdo_bts_serv_type_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_evdo_bts_serv_type_params
    ADD CONSTRAINT sam_evdo_bts_serv_type_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, bts, serv_type, create_ts);


--
-- PostgreSQL database dump complete
--

