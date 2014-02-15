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

ALTER TABLE ONLY stg.adc_source_host_drone DROP CONSTRAINT fk_adc_source_host_drone_source_host;
ALTER TABLE ONLY stg.adc_source_host_drone DROP CONSTRAINT fk_adc_source_host_drone_drone;
ALTER TABLE ONLY stg.adc_source_host_drone DROP CONSTRAINT pk_adc_source_host_drone;
DROP TABLE stg.adc_source_host_drone;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: adc_source_host_drone; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE adc_source_host_drone (
    source_host_id smallint NOT NULL,
    drone_id smallint NOT NULL,
    host_user_id character varying(30) NOT NULL,
    host_password character varying(30) NOT NULL,
    host_password_reset_date character varying(10) NOT NULL
);


SET default_tablespace = p2_stageindex;

--
-- Name: pk_adc_source_host_drone; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY adc_source_host_drone
    ADD CONSTRAINT pk_adc_source_host_drone PRIMARY KEY (source_host_id, drone_id);


--
-- Name: fk_adc_source_host_drone_drone; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_source_host_drone
    ADD CONSTRAINT fk_adc_source_host_drone_drone FOREIGN KEY (drone_id) REFERENCES adc_drone(drone_id) ON DELETE CASCADE;


--
-- Name: fk_adc_source_host_drone_source_host; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_source_host_drone
    ADD CONSTRAINT fk_adc_source_host_drone_source_host FOREIGN KEY (source_host_id) REFERENCES adc_source_host(source_host_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

