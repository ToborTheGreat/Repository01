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

DROP INDEX stg.sam_neid_cellnum_faindex_params_ix1;
ALTER TABLE ONLY stg.sam_neid_cellnum_faindex_params DROP CONSTRAINT sam_neid_cellnum_faindex_params_pkey;
DROP TABLE stg.sam_neid_cellnum_faindex_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_neid_cellnum_faindex_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_neid_cellnum_faindex_params (
    item_date date NOT NULL,
    lsm_name character varying NOT NULL,
    neid integer NOT NULL,
    cellnum integer NOT NULL,
    faindex integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    eutra_fa_prior_status integer,
    eutra_fa_prior_earfcnul integer,
    eutra_fa_prior_earfcndl integer,
    eutra_fa_prior_priority integer,
    eutra_fa_prior_qrxlevmin integer,
    eutra_fa_prior_pmaxusage integer,
    eutra_fa_prior_pmax integer,
    eutra_fa_prior_treselection integer,
    eutra_fa_prior_sfusage integer,
    eutra_fa_prior_treselectionsfmedium integer,
    eutra_fa_prior_treselectionsfhigh integer,
    eutra_fa_prior_sintrasearchusage integer,
    eutra_fa_prior_sintrasearch integer,
    eutra_fa_prior_snonintrasearchusage integer,
    eutra_fa_prior_snonintrasearch integer,
    eutra_fa_prior_threshservinglow integer,
    eutra_fa_prior_threshxhigh integer,
    eutra_fa_prior_threshxlow integer,
    eutra_fa_prior_mesabandwidthusage integer,
    eutra_fa_prior_measurementbandwidth integer,
    eutra_fa_prior_presenceantport1 integer,
    eutra_fa_prior_neighcellconfig integer,
    eutra_fa_prior_qoffsetfreq integer,
    eutra_fa_prior_offsetfreq integer,
    eutra_fa_prior_sintrasearchrel9usage integer,
    eutra_fa_prior_sintrasearchp integer,
    eutra_fa_prior_sintrasearchq integer,
    eutra_fa_prior_snonintrasearchrel9usage integer,
    eutra_fa_prior_snonintrasearchp integer,
    eutra_fa_prior_snonintrasearchq integer,
    eutra_fa_prior_qqualminrel9usage integer,
    eutra_fa_prior_qqualminrel9 integer,
    eutra_fa_prior_threshservinglowqrel9usage integer,
    eutra_fa_prior_threshservinglowqrel9 integer,
    eutra_fa_prior_threshxhighqrel9 integer,
    eutra_fa_prior_threshxlowqrel9 integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_neid_cellnum_faindex_params_pkey; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_neid_cellnum_faindex_params
    ADD CONSTRAINT sam_neid_cellnum_faindex_params_pkey PRIMARY KEY (item_date, lsm_name, neid, cellnum, faindex, create_ts);


--
-- Name: sam_neid_cellnum_faindex_params_ix1; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX sam_neid_cellnum_faindex_params_ix1 ON sam_neid_cellnum_faindex_params USING btree (item_date, lsm_name);


--
-- PostgreSQL database dump complete
--

