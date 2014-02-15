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

ALTER TABLE ONLY stg.adc_source_host DROP CONSTRAINT pk_adc_source_host;
DROP TABLE stg.adc_source_host;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: adc_source_host; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE adc_source_host (
    source_host_id smallint NOT NULL,
    description character varying(255) NOT NULL,
    ip_address character varying(15) NOT NULL,
    local_hour_offset smallint DEFAULT 0 NOT NULL,
    enabled character(1) DEFAULT 'Y'::bpchar NOT NULL
);


SET default_tablespace = p2_stageindex;

--
-- Name: pk_adc_source_host; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY adc_source_host
    ADD CONSTRAINT pk_adc_source_host PRIMARY KEY (source_host_id);


--
-- PostgreSQL database dump complete
--

