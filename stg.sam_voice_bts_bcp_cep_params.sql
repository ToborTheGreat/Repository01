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

ALTER TABLE ONLY stg.sam_voice_bts_bcp_cep_params DROP CONSTRAINT sam_voice_bts_bcp_cep_params_pk;
DROP TABLE stg.sam_voice_bts_bcp_cep_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_bcp_cep_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_voice_bts_bcp_cep_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bcp integer NOT NULL,
    bts integer NOT NULL,
    cep integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
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


SET default_tablespace = p2_stageindex;

--
-- Name: sam_voice_bts_bcp_cep_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_voice_bts_bcp_cep_params
    ADD CONSTRAINT sam_voice_bts_bcp_cep_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, bcp, bts, cep, create_ts);


--
-- PostgreSQL database dump complete
--

