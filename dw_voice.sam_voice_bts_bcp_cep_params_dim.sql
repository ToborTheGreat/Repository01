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

DROP INDEX dw_voice.sam_voice_bts_bcp_cep_params_dim_ux;
DROP INDEX dw_voice.sam_voice_bts_bcp_cep_params_dim_i1;
ALTER TABLE ONLY dw_voice.sam_voice_bts_bcp_cep_params_dim DROP CONSTRAINT sam_voice_bts_bcp_cep_params_dim_pk;
DROP TABLE dw_voice.sam_voice_bts_bcp_cep_params_dim;
SET search_path = dw_voice, pg_catalog;

SET default_tablespace = p2_dw_voicedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_bcp_cep_params_dim; Type: TABLE; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voicedata
--

CREATE TABLE sam_voice_bts_bcp_cep_params_dim (
    sam_voice_bts_bcp_cep_params_dim_id integer DEFAULT nextval('sam_voice_bts_bcp_cep_params_dim_seq'::regclass) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bcp integer NOT NULL,
    bts integer NOT NULL,
    cep integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    bts_cep_avail_fa_0 character varying,
    bts_cep_avail_fa_1 character varying,
    bts_cep_avail_fa_10 character varying,
    bts_cep_avail_fa_11 character varying,
    bts_cep_avail_fa_12 character varying,
    bts_cep_avail_fa_13 character varying,
    bts_cep_avail_fa_14 character varying,
    bts_cep_avail_fa_15 character varying,
    bts_cep_avail_fa_2 character varying,
    bts_cep_avail_fa_3 character varying,
    bts_cep_avail_fa_4 character varying,
    bts_cep_avail_fa_5 character varying,
    bts_cep_avail_fa_6 character varying,
    bts_cep_avail_fa_7 character varying,
    bts_cep_avail_fa_8 character varying,
    bts_cep_avail_fa_9 character varying,
    bts_cep_cep_type character varying,
    bts_cep_equip_cep_id integer,
    bts_cep_num_sch_ce_0 integer,
    bts_cep_num_sch_ce_1 integer,
    bts_cep_rx_diversity_for_modem_0 character varying,
    bts_cep_rx_diversity_for_modem_1 character varying,
    bts_cep_serv_type character varying,
    bts_cep_status character varying
);


SET default_tablespace = p2_dw_voiceindex;

--
-- Name: sam_voice_bts_bcp_cep_params_dim_pk; Type: CONSTRAINT; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

ALTER TABLE ONLY sam_voice_bts_bcp_cep_params_dim
    ADD CONSTRAINT sam_voice_bts_bcp_cep_params_dim_pk PRIMARY KEY (sam_voice_bts_bcp_cep_params_dim_id);


--
-- Name: sam_voice_bts_bcp_cep_params_dim_i1; Type: INDEX; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

CREATE INDEX sam_voice_bts_bcp_cep_params_dim_i1 ON sam_voice_bts_bcp_cep_params_dim USING btree (shorter_bsm_name, bts, effective_begin, effective_end);


--
-- Name: sam_voice_bts_bcp_cep_params_dim_ux; Type: INDEX; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

CREATE UNIQUE INDEX sam_voice_bts_bcp_cep_params_dim_ux ON sam_voice_bts_bcp_cep_params_dim USING btree (shorter_bsm_name, bsc_name, bcp, bts, cep, effective_begin);


--
-- PostgreSQL database dump complete
--

