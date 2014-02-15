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

ALTER TABLE ONLY stg.adc_destination_host DROP CONSTRAINT pk_adc_destination_host;
DROP TABLE stg.adc_destination_host;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: adc_destination_host; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE adc_destination_host (
    destination_host_id smallint NOT NULL,
    description character varying(255) NOT NULL,
    ip_address character varying(15) NOT NULL,
    ssh_user_id character varying(30) NOT NULL,
    ssh_password character varying(30) NOT NULL,
    base_directory character varying(255) NOT NULL,
    enabled character(1) DEFAULT 'Y'::bpchar NOT NULL
);


SET default_tablespace = p2_stageindex;

--
-- Name: pk_adc_destination_host; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY adc_destination_host
    ADD CONSTRAINT pk_adc_destination_host PRIMARY KEY (destination_host_id);


--
-- PostgreSQL database dump complete
--

