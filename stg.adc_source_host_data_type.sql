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

ALTER TABLE ONLY stg.adc_source_host_data_type DROP CONSTRAINT fk_adc_source_host_data_type_source_host;
ALTER TABLE ONLY stg.adc_source_host_data_type DROP CONSTRAINT fk_adc_source_host_data_type_data_type;
ALTER TABLE ONLY stg.adc_source_host_data_type DROP CONSTRAINT pk_adc_source_host_data_type;
DROP TABLE stg.adc_source_host_data_type;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: adc_source_host_data_type; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE adc_source_host_data_type (
    source_host_id integer NOT NULL,
    data_type_id integer NOT NULL,
    source_directory character varying(511) NOT NULL,
    enabled character(1) DEFAULT 'Y'::bpchar NOT NULL
);


SET default_tablespace = p2_stageindex;

--
-- Name: pk_adc_source_host_data_type; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY adc_source_host_data_type
    ADD CONSTRAINT pk_adc_source_host_data_type PRIMARY KEY (source_host_id, data_type_id);


--
-- Name: fk_adc_source_host_data_type_data_type; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_source_host_data_type
    ADD CONSTRAINT fk_adc_source_host_data_type_data_type FOREIGN KEY (data_type_id) REFERENCES adc_data_type(data_type_id) ON DELETE CASCADE;


--
-- Name: fk_adc_source_host_data_type_source_host; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_source_host_data_type
    ADD CONSTRAINT fk_adc_source_host_data_type_source_host FOREIGN KEY (source_host_id) REFERENCES adc_source_host(source_host_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

