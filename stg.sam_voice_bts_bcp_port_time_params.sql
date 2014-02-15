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

ALTER TABLE ONLY stg.sam_voice_bts_bcp_port_time_params DROP CONSTRAINT sam_voice_bts_bcp_port_time_params_pk;
DROP TABLE stg.sam_voice_bts_bcp_port_time_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_bcp_port_time_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_voice_bts_bcp_port_time_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    bcp integer NOT NULL,
    port integer NOT NULL,
    "time" integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    bts_es_threshold_status integer,
    bts_es_threshold_threshold_0_bias_voltage integer,
    bts_es_threshold_threshold_0_peak_power integer,
    bts_es_threshold_threshold_1 integer,
    bts_es_threshold_threshold_1_bias_voltage integer,
    bts_es_threshold_threshold_1_peak_power integer,
    bts_es_threshold_threshold_2 integer,
    bts_es_threshold_threshold_2_bias_voltage integer,
    bts_es_threshold_threshold_2_peak_power integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_voice_bts_bcp_port_time_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_voice_bts_bcp_port_time_params
    ADD CONSTRAINT sam_voice_bts_bcp_port_time_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, bts, bcp, port, "time", create_ts);


--
-- PostgreSQL database dump complete
--

