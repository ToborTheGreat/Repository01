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

ALTER TABLE ONLY stg.adc_destination_host_sync DROP CONSTRAINT fk_adc_destination_host_drone_seen_source_host;
DROP INDEX stg.adc_destination_host_sync_idx1;
DROP TABLE stg.adc_destination_host_sync;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: adc_destination_host_sync; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE adc_destination_host_sync (
    destination_host_id smallint NOT NULL,
    sync_stamp character varying(19) NOT NULL,
    sync_state character varying(30) NOT NULL
);


SET default_tablespace = p2_stageindex;

--
-- Name: adc_destination_host_sync_idx1; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX adc_destination_host_sync_idx1 ON adc_destination_host_sync USING btree (destination_host_id);


--
-- Name: fk_adc_destination_host_drone_seen_source_host; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_destination_host_sync
    ADD CONSTRAINT fk_adc_destination_host_drone_seen_source_host FOREIGN KEY (destination_host_id) REFERENCES adc_destination_host(destination_host_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

