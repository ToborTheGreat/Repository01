--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw_evdo, pg_catalog;

ALTER TABLE ONLY dw_evdo.sam_evdo_bts_page_try_band_class_index_parm_aud_agg DROP CONSTRAINT sam_evdo_bts_page_try_band_class_index_parm_aud_agg_pk;
DROP TABLE dw_evdo.sam_evdo_bts_page_try_band_class_index_parm_aud_agg;
SET search_path = dw_evdo, pg_catalog;

SET default_tablespace = p2_dw_evdodata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_page_try_band_class_index_parm_aud_agg; Type: TABLE; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdodata
--

CREATE TABLE sam_evdo_bts_page_try_band_class_index_parm_aud_agg (
    day_dim_id integer NOT NULL,
    shorter_bsm_name character varying NOT NULL,
    bsc_name character varying NOT NULL,
    band_class_index character varying NOT NULL,
    bts character varying NOT NULL,
    page_try character varying NOT NULL,
    total_audited_count integer NOT NULL,
    total_failed_count integer NOT NULL,
    priority character varying(20) DEFAULT 'none'::character varying NOT NULL
);


SET default_tablespace = p2_dw_evdoindex;

--
-- Name: sam_evdo_bts_page_try_band_class_index_parm_aud_agg_pk; Type: CONSTRAINT; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

ALTER TABLE ONLY sam_evdo_bts_page_try_band_class_index_parm_aud_agg
    ADD CONSTRAINT sam_evdo_bts_page_try_band_class_index_parm_aud_agg_pk PRIMARY KEY (day_dim_id, shorter_bsm_name, bsc_name, band_class_index, bts, page_try, priority);


--
-- PostgreSQL database dump complete
--

