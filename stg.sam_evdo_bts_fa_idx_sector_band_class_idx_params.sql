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

ALTER TABLE ONLY stg.sam_evdo_bts_fa_idx_sector_band_class_idx_params DROP CONSTRAINT sam_evdo_bts_fa_idx_sector_band_class_idx_params_pk;
DROP TABLE stg.sam_evdo_bts_fa_idx_sector_band_class_idx_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_fa_idx_sector_band_class_idx_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_evdo_bts_fa_idx_sector_band_class_idx_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    band_class_index integer NOT NULL,
    bts integer NOT NULL,
    fa_index integer NOT NULL,
    sector integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    bts_evdo_eutran_nbr_earfcn_0 integer,
    bts_evdo_eutran_nbr_earfcn_1 integer,
    bts_evdo_eutran_nbr_earfcn_2 integer,
    bts_evdo_eutran_nbr_earfcn_3 integer,
    bts_evdo_eutran_nbr_earfcn_pri_0 integer,
    bts_evdo_eutran_nbr_earfcn_pri_1 integer,
    bts_evdo_eutran_nbr_earfcn_pri_2 integer,
    bts_evdo_eutran_nbr_earfcn_pri_3 integer,
    bts_evdo_eutran_nbr_max_measurement_backoff integer,
    bts_evdo_eutran_nbr_max_reselection_timer integer,
    bts_evdo_eutran_nbr_max_reselection_timer_incl character varying,
    bts_evdo_eutran_nbr_measurement_bandwidth_0 integer,
    bts_evdo_eutran_nbr_measurement_bandwidth_1 integer,
    bts_evdo_eutran_nbr_measurement_bandwidth_2 integer,
    bts_evdo_eutran_nbr_measurement_bandwidth_3 integer,
    bts_evdo_eutran_nbr_min_measurement_backoff integer,
    bts_evdo_eutran_nbr_num_eutra_frequencies integer,
    bts_evdo_eutran_nbr_num_plmn_id_0 integer,
    bts_evdo_eutran_nbr_num_plmn_id_1 integer,
    bts_evdo_eutran_nbr_num_plmn_id_2 integer,
    bts_evdo_eutran_nbr_num_plmn_id_3 integer,
    bts_evdo_eutran_nbr_other_rat_available character varying,
    bts_evdo_eutran_nbr_pe_max_0 integer,
    bts_evdo_eutran_nbr_pe_max_1 integer,
    bts_evdo_eutran_nbr_pe_max_2 integer,
    bts_evdo_eutran_nbr_pe_max_3 integer,
    bts_evdo_eutran_nbr_pe_max_common integer,
    bts_evdo_eutran_nbr_per_earfch_params_incl integer,
    bts_evdo_eutran_nbr_plmn_id_0_0 integer,
    bts_evdo_eutran_nbr_plmn_id_0_1 integer,
    bts_evdo_eutran_nbr_plmn_id_0_2 integer,
    bts_evdo_eutran_nbr_plmn_id_0_3 integer,
    bts_evdo_eutran_nbr_plmn_id_0_4 integer,
    bts_evdo_eutran_nbr_plmn_id_1_0 integer,
    bts_evdo_eutran_nbr_plmn_id_1_1 integer,
    bts_evdo_eutran_nbr_plmn_id_1_2 integer,
    bts_evdo_eutran_nbr_plmn_id_1_3 integer,
    bts_evdo_eutran_nbr_plmn_id_1_4 integer,
    bts_evdo_eutran_nbr_plmn_id_2_0 integer,
    bts_evdo_eutran_nbr_plmn_id_2_1 integer,
    bts_evdo_eutran_nbr_plmn_id_2_2 integer,
    bts_evdo_eutran_nbr_plmn_id_2_3 integer,
    bts_evdo_eutran_nbr_plmn_id_2_4 integer,
    bts_evdo_eutran_nbr_plmn_id_3_0 integer,
    bts_evdo_eutran_nbr_plmn_id_3_1 integer,
    bts_evdo_eutran_nbr_plmn_id_3_2 integer,
    bts_evdo_eutran_nbr_plmn_id_3_3 integer,
    bts_evdo_eutran_nbr_plmn_id_3_4 integer,
    bts_evdo_eutran_nbr_plmn_id_incl character varying,
    bts_evdo_eutran_nbr_plmn_same_as_prev_ch_0 integer,
    bts_evdo_eutran_nbr_plmn_same_as_prev_ch_1 integer,
    bts_evdo_eutran_nbr_plmn_same_as_prev_ch_2 integer,
    bts_evdo_eutran_nbr_plmn_same_as_prev_ch_3 integer,
    bts_evdo_eutran_nbr_pri_incl character varying,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_0 integer,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_1 integer,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_2 integer,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_3 integer,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_common integer,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_offset_0 integer,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_offset_1 integer,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_offset_2 integer,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_offset_3 integer,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_offset_common integer,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_offset_common_incl character varying,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_offset_incl_0 character varying,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_offset_incl_1 character varying,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_offset_incl_2 character varying,
    bts_evdo_eutran_nbr_rx_rev_min_eutra_offset_incl_3 character varying,
    bts_evdo_eutran_nbr_search_backoff_timer_incl character varying,
    bts_evdo_eutran_nbr_serving_pri integer,
    bts_evdo_eutran_nbr_status integer,
    bts_evdo_eutran_nbr_thresh_serving integer,
    bts_evdo_eutran_nbr_thresh_x_0 integer,
    bts_evdo_eutran_nbr_thresh_x_1 integer,
    bts_evdo_eutran_nbr_thresh_x_2 integer,
    bts_evdo_eutran_nbr_thresh_x_3 integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_evdo_bts_fa_idx_sector_band_class_idx_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_evdo_bts_fa_idx_sector_band_class_idx_params
    ADD CONSTRAINT sam_evdo_bts_fa_idx_sector_band_class_idx_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, band_class_index, bts, fa_index, sector, create_ts);


--
-- PostgreSQL database dump complete
--

