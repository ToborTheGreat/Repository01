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

ALTER TABLE ONLY stg.adc_data_type DROP CONSTRAINT fk_adc_data_type_destination_host;
ALTER TABLE ONLY stg.adc_data_type DROP CONSTRAINT pk_adc_data_type;
DROP TABLE stg.adc_data_type;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: adc_data_type; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE adc_data_type (
    data_type_id smallint NOT NULL,
    description character varying(255) NOT NULL,
    destination_host_id smallint NOT NULL,
    destination_directory character varying(511) NOT NULL,
    file_name_template character varying(255) NOT NULL,
    bundle_name_template character varying(255) NOT NULL,
    job_time_period smallint NOT NULL,
    job_duration_maximum smallint NOT NULL,
    job_tries_maximum smallint NOT NULL,
    job_retry_delay smallint NOT NULL,
    enabled character(1) DEFAULT 'Y'::bpchar NOT NULL,
    technology_type character varying(16) DEFAULT '4G'::character varying NOT NULL
);


SET default_tablespace = p2_stageindex;

--
-- Name: pk_adc_data_type; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY adc_data_type
    ADD CONSTRAINT pk_adc_data_type PRIMARY KEY (data_type_id);


--
-- Name: fk_adc_data_type_destination_host; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_data_type
    ADD CONSTRAINT fk_adc_data_type_destination_host FOREIGN KEY (destination_host_id) REFERENCES adc_destination_host(destination_host_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

