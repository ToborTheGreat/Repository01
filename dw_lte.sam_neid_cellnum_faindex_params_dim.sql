--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw_lte, pg_catalog;

DROP INDEX dw_lte.sam_neid_cellnum_faindex_params_dim_ux;
DROP INDEX dw_lte.sam_neid_cellnum_faindex_params_dim_n1;
ALTER TABLE ONLY dw_lte.sam_neid_cellnum_faindex_params_dim DROP CONSTRAINT sam_neid_cellnum_faindex_params_dim_pkey;
DROP TABLE dw_lte.sam_neid_cellnum_faindex_params_dim;
SET search_path = dw_lte, pg_catalog;

SET default_tablespace = p2_dw_ltedata;

SET default_with_oids = false;

--
-- Name: sam_neid_cellnum_faindex_params_dim; Type: TABLE; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE TABLE sam_neid_cellnum_faindex_params_dim (
    sam_neid_cellnum_faindex_params_dim_id integer DEFAULT nextval('sam_neid_cellnum_faindex_params_dim_seq'::regclass) NOT NULL,
    lsm_name character varying NOT NULL,
    neid integer NOT NULL,
    cellnum integer NOT NULL,
    faindex integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
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


--
-- Name: sam_neid_cellnum_faindex_params_dim_pkey; Type: CONSTRAINT; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

ALTER TABLE ONLY sam_neid_cellnum_faindex_params_dim
    ADD CONSTRAINT sam_neid_cellnum_faindex_params_dim_pkey PRIMARY KEY (sam_neid_cellnum_faindex_params_dim_id);


--
-- Name: sam_neid_cellnum_faindex_params_dim_n1; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE INDEX sam_neid_cellnum_faindex_params_dim_n1 ON sam_neid_cellnum_faindex_params_dim USING btree (neid, effective_begin, effective_end);


--
-- Name: sam_neid_cellnum_faindex_params_dim_ux; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE UNIQUE INDEX sam_neid_cellnum_faindex_params_dim_ux ON sam_neid_cellnum_faindex_params_dim USING btree (lsm_name, neid, cellnum, faindex, effective_begin);


--
-- PostgreSQL database dump complete
--

