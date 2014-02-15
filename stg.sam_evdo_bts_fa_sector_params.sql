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

ALTER TABLE ONLY stg.sam_evdo_bts_fa_sector_params DROP CONSTRAINT sam_evdo_bts_fa_sector_params_pk;
DROP TABLE stg.sam_evdo_bts_fa_sector_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_fa_sector_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_evdo_bts_fa_sector_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    fa integer NOT NULL,
    sector integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    bts_evdo_intra_band_carr_sel_intra_band_carr_sel_mode integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_0 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_1 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_10 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_11 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_12 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_13 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_14 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_15 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_2 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_3 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_4 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_5 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_6 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_7 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_8 integer,
    bts_evdo_intra_band_carr_sel_intra_band_target_fa_9 integer,
    bts_evdo_intra_band_carr_sel_status integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_evdo_bts_fa_sector_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_evdo_bts_fa_sector_params
    ADD CONSTRAINT sam_evdo_bts_fa_sector_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, bts, fa, sector, create_ts);


--
-- PostgreSQL database dump complete
--

