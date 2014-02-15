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

ALTER TABLE ONLY stg.sam_evdo_bts_band_class_index_params DROP CONSTRAINT sam_evdo_bts_band_class_index_params_pk;
DROP TABLE stg.sam_evdo_bts_band_class_index_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_band_class_index_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_evdo_bts_band_class_index_params (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    band_class_index integer NOT NULL,
    bts integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    bts_evdo_scheduler_pri_pri_1x integer,
    bts_evdo_scheduler_pri_pri_2x integer,
    bts_evdo_scheduler_pri_pri_3x integer,
    bts_evdo_scheduler_pri_status integer,
    bts_evdo_sector_msg_country_code integer,
    bts_evdo_sector_msg_extended_channel_included integer,
    bts_evdo_sector_msg_route_update_radius integer,
    bts_evdo_sector_msg_route_update_radius_input_value integer,
    bts_evdo_sector_msg_route_update_trigger_code integer,
    bts_evdo_sector_msg_route_update_trigger_code_included integer,
    bts_evdo_sector_msg_route_update_trigger_max_age integer,
    bts_evdo_sector_msg_status integer,
    bts_evdo_subnet_color_code integer,
    bts_evdo_subnet_sector_id_104_0 integer,
    bts_evdo_subnet_sector_id_104_1 integer,
    bts_evdo_subnet_sector_id_104_10 integer,
    bts_evdo_subnet_sector_id_104_11 integer,
    bts_evdo_subnet_sector_id_104_12 integer,
    bts_evdo_subnet_sector_id_104_2 integer,
    bts_evdo_subnet_sector_id_104_3 integer,
    bts_evdo_subnet_sector_id_104_4 integer,
    bts_evdo_subnet_sector_id_104_5 integer,
    bts_evdo_subnet_sector_id_104_6 integer,
    bts_evdo_subnet_sector_id_104_7 integer,
    bts_evdo_subnet_sector_id_104_8 integer,
    bts_evdo_subnet_sector_id_104_9 integer,
    bts_evdo_subnet_status integer,
    bts_evdo_subnet_subnet integer,
    bts_evdo_subnet_subnet_mask integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_evdo_bts_band_class_index_params_pk; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_evdo_bts_band_class_index_params
    ADD CONSTRAINT sam_evdo_bts_band_class_index_params_pk PRIMARY KEY (item_date, shorter_bsm_name, bsc_name, band_class_index, bts, create_ts);


--
-- PostgreSQL database dump complete
--

