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

ALTER TABLE ONLY stg.adc_destination_host_drone_seen DROP CONSTRAINT fk_adc_destination_host_drone_seen_source_host;
ALTER TABLE ONLY stg.adc_destination_host_drone_seen DROP CONSTRAINT fk_adc_destination_host_drone_seen_drone;
DROP INDEX stg.adc_destination_host_drone_seen_idx2;
DROP INDEX stg.adc_destination_host_drone_seen_idx1;
DROP TABLE stg.adc_destination_host_drone_seen;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: adc_destination_host_drone_seen; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE adc_destination_host_drone_seen (
    destination_host_id smallint NOT NULL,
    drone_id smallint NOT NULL,
    drone_ip_address character varying(15) NOT NULL,
    seen_stamp character varying(19) NOT NULL
);


SET default_tablespace = p2_stageindex;

--
-- Name: adc_destination_host_drone_seen_idx1; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX adc_destination_host_drone_seen_idx1 ON adc_destination_host_drone_seen USING btree (destination_host_id, drone_id);


--
-- Name: adc_destination_host_drone_seen_idx2; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX adc_destination_host_drone_seen_idx2 ON adc_destination_host_drone_seen USING btree (drone_id);


--
-- Name: fk_adc_destination_host_drone_seen_drone; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_destination_host_drone_seen
    ADD CONSTRAINT fk_adc_destination_host_drone_seen_drone FOREIGN KEY (drone_id) REFERENCES adc_drone(drone_id) ON DELETE CASCADE;


--
-- Name: fk_adc_destination_host_drone_seen_source_host; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_destination_host_drone_seen
    ADD CONSTRAINT fk_adc_destination_host_drone_seen_source_host FOREIGN KEY (destination_host_id) REFERENCES adc_destination_host(destination_host_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

