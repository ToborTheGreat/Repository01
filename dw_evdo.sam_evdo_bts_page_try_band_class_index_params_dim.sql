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

DROP INDEX dw_evdo.sam_evdo_bts_page_try_band_class_index_params_dim_ux;
DROP INDEX dw_evdo.sam_evdo_bts_page_try_band_class_index_params_dim_i1;
ALTER TABLE ONLY dw_evdo.sam_evdo_bts_page_try_band_class_index_params_dim DROP CONSTRAINT sam_evdo_bts_page_try_band_class_index_params_dim_pk;
DROP TABLE dw_evdo.sam_evdo_bts_page_try_band_class_index_params_dim;
SET search_path = dw_evdo, pg_catalog;

SET default_tablespace = p2_dw_evdodata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_page_try_band_class_index_params_dim; Type: TABLE; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdodata
--

CREATE TABLE sam_evdo_bts_page_try_band_class_index_params_dim (
    sam_evdo_bts_page_try_band_class_index_params_dim_id integer DEFAULT nextval('sam_evdo_bts_page_try_band_class_index_params_dim_seq'::regclass) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    band_class_index integer NOT NULL,
    bts integer NOT NULL,
    page_try integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    bts_evdo_paging_last_ru_bc_page_flag integer,
    bts_evdo_paging_other_bc_page_flag integer,
    bts_evdo_paging_status integer
);


SET default_tablespace = p2_dw_evdoindex;

--
-- Name: sam_evdo_bts_page_try_band_class_index_params_dim_pk; Type: CONSTRAINT; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

ALTER TABLE ONLY sam_evdo_bts_page_try_band_class_index_params_dim
    ADD CONSTRAINT sam_evdo_bts_page_try_band_class_index_params_dim_pk PRIMARY KEY (sam_evdo_bts_page_try_band_class_index_params_dim_id);


--
-- Name: sam_evdo_bts_page_try_band_class_index_params_dim_i1; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE INDEX sam_evdo_bts_page_try_band_class_index_params_dim_i1 ON sam_evdo_bts_page_try_band_class_index_params_dim USING btree (shorter_bsm_name, bts, effective_begin, effective_end);


--
-- Name: sam_evdo_bts_page_try_band_class_index_params_dim_ux; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE UNIQUE INDEX sam_evdo_bts_page_try_band_class_index_params_dim_ux ON sam_evdo_bts_page_try_band_class_index_params_dim USING btree (shorter_bsm_name, bsc_name, band_class_index, bts, page_try, effective_begin);


--
-- PostgreSQL database dump complete
--

