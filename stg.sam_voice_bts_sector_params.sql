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

ALTER TABLE ONLY stg.sam_voice_bts_sector_params DROP CONSTRAINT sam_voice_bts_sector_params_pk;
DROP TABLE stg.sam_voice_bts_sector_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_sector_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_voice_bts_sector_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    sector integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    bts_general_nbr_cf_nghbr_srch_mode integer,
    bts_general_nbr_freq_fields_incl integer,
    bts_general_nbr_global_timing_incl integer,
    bts_general_nbr_global_tx_duration integer,
    bts_general_nbr_global_tx_period integer,
    bts_general_nbr_nghbr_config_pn_incl integer,
    bts_general_nbr_nghbr_srch_mode integer,
    bts_general_nbr_num_analog_nghbr integer,
    bts_general_nbr_srch_offset_incl integer,
    bts_general_nbr_status integer,
    bts_general_nbr_use_timing integer,
    bts_ripoff_margin_forward_ripoff_margin integer,
    bts_ripoff_margin_reverse_ripoff_margin integer,
    bts_ripoff_margin_status character varying,
    bts_sector_acquisition_window_length integer,
    bts_sector_demodulation_window_length integer,
    bts_sector_latitude character varying,
    bts_sector_longitude character varying,
    bts_sector_pilot_offset integer,
    bts_sector_rtd_threshold integer,
    bts_sector_rx_coarse_adj integer,
    bts_sector_rx_fine_adj integer,
    bts_sector_status character varying,
    bts_sector_system_delay integer,
    bts_sector_tx_coarse_adj integer,
    bts_sector_tx_fine_adj integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_voice_bts_sector_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_voice_bts_sector_params
    ADD CONSTRAINT sam_voice_bts_sector_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, bts, sector, create_ts);


--
-- PostgreSQL database dump complete
--

