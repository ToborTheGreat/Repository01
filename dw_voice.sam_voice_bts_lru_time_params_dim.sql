--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw_voice, pg_catalog;

DROP INDEX dw_voice.sam_voice_bts_lru_time_params_dim_ux;
DROP INDEX dw_voice.sam_voice_bts_lru_time_params_dim_i1;
ALTER TABLE ONLY dw_voice.sam_voice_bts_lru_time_params_dim DROP CONSTRAINT sam_voice_bts_lru_time_params_dim_pk;
DROP TABLE dw_voice.sam_voice_bts_lru_time_params_dim;
SET search_path = dw_voice, pg_catalog;

SET default_tablespace = p2_dw_voicedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_lru_time_params_dim; Type: TABLE; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voicedata
--

CREATE TABLE sam_voice_bts_lru_time_params_dim (
    sam_voice_bts_lru_time_params_dim_id integer DEFAULT nextval('sam_voice_bts_lru_time_params_dim_seq'::regclass) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    lru integer NOT NULL,
    "time" integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    bts_es_threshold_status integer,
    bts_es_threshold_threshold_0_bias_voltage integer,
    bts_es_threshold_threshold_0_peak_power integer,
    bts_es_threshold_threshold_1 integer,
    bts_es_threshold_threshold_1_bias_voltage integer,
    bts_es_threshold_threshold_1_peak_power integer,
    bts_es_threshold_threshold_2 integer,
    bts_es_threshold_threshold_2_bias_voltage integer,
    bts_es_threshold_threshold_2_peak_power integer
);


SET default_tablespace = p2_dw_voiceindex;

--
-- Name: sam_voice_bts_lru_time_params_dim_pk; Type: CONSTRAINT; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

ALTER TABLE ONLY sam_voice_bts_lru_time_params_dim
    ADD CONSTRAINT sam_voice_bts_lru_time_params_dim_pk PRIMARY KEY (sam_voice_bts_lru_time_params_dim_id);


--
-- Name: sam_voice_bts_lru_time_params_dim_i1; Type: INDEX; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

CREATE INDEX sam_voice_bts_lru_time_params_dim_i1 ON sam_voice_bts_lru_time_params_dim USING btree (shorter_bsm_name, bts, effective_begin, effective_end);


--
-- Name: sam_voice_bts_lru_time_params_dim_ux; Type: INDEX; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

CREATE UNIQUE INDEX sam_voice_bts_lru_time_params_dim_ux ON sam_voice_bts_lru_time_params_dim USING btree (shorter_bsm_name, bsc_name, bts, lru, "time", effective_begin);


--
-- PostgreSQL database dump complete
--

