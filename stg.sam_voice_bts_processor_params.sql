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

ALTER TABLE ONLY stg.sam_voice_bts_processor_params DROP CONSTRAINT sam_voice_bts_processor_params_pk;
DROP TABLE stg.sam_voice_bts_processor_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_processor_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_voice_bts_processor_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    processor integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    bts_ovld_threshold_batt_temp_high integer,
    bts_ovld_threshold_batt_temp_high_release integer,
    bts_ovld_threshold_batt_temp_low integer,
    bts_ovld_threshold_batt_temp_low_release integer,
    bts_ovld_threshold_battery_quality_low integer,
    bts_ovld_threshold_bd_temp_high integer,
    bts_ovld_threshold_cpu_measure_interval integer,
    bts_ovld_threshold_cpu_ovld_critical integer,
    bts_ovld_threshold_cpu_ovld_major integer,
    bts_ovld_threshold_cpu_ovld_minor integer,
    bts_ovld_threshold_mem_measure_interval integer,
    bts_ovld_threshold_mem_usage integer,
    bts_ovld_threshold_status integer,
    bts_ovld_threshold_temp_high integer,
    bts_ovld_threshold_temp_high_high integer,
    bts_ovld_threshold_temp_high_high_release integer,
    bts_ovld_threshold_temp_high_release integer,
    bts_ovld_threshold_temp_low integer,
    bts_ovld_threshold_temp_low_release integer,
    bts_ovld_threshold_temp_shutdown integer,
    bts_ovld_threshold_temp_shutdown_release integer,
    bts_ovld_threshold_volt_high integer,
    bts_ovld_threshold_volt_high_release integer,
    bts_ovld_threshold_volt_low integer,
    bts_ovld_threshold_volt_low_low integer,
    bts_ovld_threshold_volt_low_low_release integer,
    bts_ovld_threshold_volt_low_release integer,
    bts_ovld_threshold_volt_shutdown integer,
    bts_ovld_threshold_volt_shutdown_release integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_voice_bts_processor_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_voice_bts_processor_params
    ADD CONSTRAINT sam_voice_bts_processor_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, bts, processor, create_ts);


--
-- PostgreSQL database dump complete
--

