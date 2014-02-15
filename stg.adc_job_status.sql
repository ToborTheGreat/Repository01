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

ALTER TABLE ONLY stg.adc_job_status DROP CONSTRAINT fk_adc_job_status_job_detail_destination_host;
ALTER TABLE ONLY stg.adc_job_status DROP CONSTRAINT fk_adc_job_status_job;
ALTER TABLE ONLY stg.adc_job_status DROP CONSTRAINT fk_adc_job_status_destination_host;
ALTER TABLE ONLY stg.adc_job_status DROP CONSTRAINT pk_adc_job_status;
DROP TABLE stg.adc_job_status;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: adc_job_status; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE adc_job_status (
    job_id integer NOT NULL,
    job_retries_available smallint NOT NULL,
    job_available_stamp character varying(19) NOT NULL,
    job_state character varying(30) NOT NULL,
    job_detail_id integer,
    destination_host_id smallint NOT NULL,
    change_stamp character varying(19) NOT NULL,
    change_state character varying(30) NOT NULL
);


SET default_tablespace = p2_stageindex;

--
-- Name: pk_adc_job_status; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY adc_job_status
    ADD CONSTRAINT pk_adc_job_status PRIMARY KEY (job_id);


--
-- Name: fk_adc_job_status_destination_host; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_job_status
    ADD CONSTRAINT fk_adc_job_status_destination_host FOREIGN KEY (destination_host_id) REFERENCES adc_destination_host(destination_host_id) ON DELETE CASCADE;


--
-- Name: fk_adc_job_status_job; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_job_status
    ADD CONSTRAINT fk_adc_job_status_job FOREIGN KEY (job_id) REFERENCES adc_job(job_id) ON DELETE CASCADE;


--
-- Name: fk_adc_job_status_job_detail_destination_host; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_job_status
    ADD CONSTRAINT fk_adc_job_status_job_detail_destination_host FOREIGN KEY (job_detail_id, destination_host_id) REFERENCES adc_job_detail(job_detail_id, destination_host_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

