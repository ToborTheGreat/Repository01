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

ALTER TABLE ONLY stg.adc_job_detail DROP CONSTRAINT fk_adc_job_detail_job;
ALTER TABLE ONLY stg.adc_job_detail DROP CONSTRAINT fk_adc_job_detail_drone;
ALTER TABLE ONLY stg.adc_job_detail DROP CONSTRAINT fk_adc_job_detail_destination_host;
ALTER TABLE ONLY stg.adc_job_detail DROP CONSTRAINT pk_adc_job_detail;
DROP TABLE stg.adc_job_detail;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: adc_job_detail; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE adc_job_detail (
    job_detail_id integer NOT NULL,
    destination_host_id smallint NOT NULL,
    job_id integer NOT NULL,
    drone_id smallint NOT NULL,
    job_detail_stamp character varying(19) NOT NULL,
    job_event_state character varying(30) NOT NULL,
    job_event_message character varying(255),
    job_start_stamp character varying(19) NOT NULL,
    job_end_stamp character varying(19),
    vpn_start_stamp character varying(19),
    vpn_end_stamp character varying(19),
    upload_script_start_stamp character varying(19),
    upload_script_end_stamp character varying(19),
    execute_script_start_stamp character varying(19),
    execute_script_end_stamp character varying(19),
    bundle_download_start_stamp character varying(19),
    bundle_download_end_stamp character varying(19),
    bundle_upload_start_stamp character varying(19),
    bundle_upload_end_stamp character varying(19),
    bundle_size bigint,
    drone_ip_address character varying(15)
);


SET default_tablespace = p2_stageindex;

--
-- Name: pk_adc_job_detail; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY adc_job_detail
    ADD CONSTRAINT pk_adc_job_detail PRIMARY KEY (job_detail_id, destination_host_id);


--
-- Name: fk_adc_job_detail_destination_host; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_job_detail
    ADD CONSTRAINT fk_adc_job_detail_destination_host FOREIGN KEY (destination_host_id) REFERENCES adc_destination_host(destination_host_id) ON DELETE CASCADE;


--
-- Name: fk_adc_job_detail_drone; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_job_detail
    ADD CONSTRAINT fk_adc_job_detail_drone FOREIGN KEY (drone_id) REFERENCES adc_drone(drone_id) ON DELETE CASCADE;


--
-- Name: fk_adc_job_detail_job; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_job_detail
    ADD CONSTRAINT fk_adc_job_detail_job FOREIGN KEY (job_id) REFERENCES adc_job(job_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

