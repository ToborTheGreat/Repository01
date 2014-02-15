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

DROP INDEX stg.sam_neid_cellnum_carrierindex_params_ix1;
ALTER TABLE ONLY stg.sam_neid_cellnum_carrierindex_params DROP CONSTRAINT sam_neid_cellnum_carrierindex_params_pkey;
DROP TABLE stg.sam_neid_cellnum_carrierindex_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_neid_cellnum_carrierindex_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_neid_cellnum_carrierindex_params (
    item_date date NOT NULL,
    lsm_name character varying NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    neid integer NOT NULL,
    cellnum integer NOT NULL,
    carrierindex integer NOT NULL,
    cdma_rttcarrier_info_status integer,
    cdma_rttcarrier_info_bandclass integer,
    cdma_rttcarrier_info_arfcn integer,
    cdma_rttcarrier_info_offsetfreq integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_neid_cellnum_carrierindex_params_pkey; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_neid_cellnum_carrierindex_params
    ADD CONSTRAINT sam_neid_cellnum_carrierindex_params_pkey PRIMARY KEY (item_date, lsm_name, neid, cellnum, carrierindex);


--
-- Name: sam_neid_cellnum_carrierindex_params_ix1; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX sam_neid_cellnum_carrierindex_params_ix1 ON sam_neid_cellnum_carrierindex_params USING btree (item_date, lsm_name);

ALTER TABLE sam_neid_cellnum_carrierindex_params CLUSTER ON sam_neid_cellnum_carrierindex_params_ix1;


--
-- PostgreSQL database dump complete
--

