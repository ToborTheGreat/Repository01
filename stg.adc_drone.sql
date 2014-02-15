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

ALTER TABLE ONLY stg.adc_drone DROP CONSTRAINT pk_adc_drone;
DROP TABLE stg.adc_drone;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: adc_drone; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE adc_drone (
    drone_id smallint NOT NULL,
    description character varying(255) NOT NULL,
    vpn_ip_address character varying(15) NOT NULL,
    vpn_user_id character varying(30) NOT NULL,
    vpn_password character varying(30) NOT NULL,
    vpn_password_reset_date character varying(10) NOT NULL,
    enabled character(1) DEFAULT 'Y'::bpchar NOT NULL
);


SET default_tablespace = p2_stageindex;

--
-- Name: pk_adc_drone; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY adc_drone
    ADD CONSTRAINT pk_adc_drone PRIMARY KEY (drone_id);


--
-- PostgreSQL database dump complete
--

