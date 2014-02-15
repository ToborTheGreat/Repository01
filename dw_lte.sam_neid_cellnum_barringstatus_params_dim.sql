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

DROP INDEX dw_lte.sam_neid_cellnum_barringstatus_params_dim_ux;
DROP INDEX dw_lte.sam_neid_cellnum_barringstatus_params_dim_n1;
ALTER TABLE ONLY dw_lte.sam_neid_cellnum_barringstatus_params_dim DROP CONSTRAINT sam_neid_cellnum_barringstatus_params_dim_pkey;
DROP TABLE dw_lte.sam_neid_cellnum_barringstatus_params_dim;
SET search_path = dw_lte, pg_catalog;

SET default_tablespace = p2_dw_ltedata;

SET default_with_oids = false;

--
-- Name: sam_neid_cellnum_barringstatus_params_dim; Type: TABLE; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE TABLE sam_neid_cellnum_barringstatus_params_dim (
    sam_neid_cellnum_barringstatus_params_dim_id integer DEFAULT nextval('sam_neid_cellnum_barringstatus_params_dim_seq'::regclass) NOT NULL,
    lsm_name character varying NOT NULL,
    neid integer NOT NULL,
    cellnum integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    barring_param_barringstatustype integer NOT NULL,
    barring_param_barringsignalusage integer,
    barring_param_accprobfacsignal integer,
    barring_param_accclassbartimesignal integer,
    barring_param_barac11signal integer,
    barring_param_barac12signal integer,
    barring_param_barac13signal integer,
    barring_param_barac14signal integer,
    barring_param_barac15signal integer,
    barring_param_barringdatausage integer,
    barring_param_accprobfacdata integer,
    barring_param_accclassbartimedata integer,
    barring_param_barac11data integer,
    barring_param_barac12data integer,
    barring_param_barac13data integer,
    barring_param_barac14data integer,
    barring_param_barac15data integer,
    barring_param_accessbarringemergencycall integer,
    barring_param_barringmmtelvoiceusage integer,
    barring_param_accprobfacmmtelvoice integer,
    barring_param_accclassbartimemmtelvoice integer,
    barring_param_barac11mmtelvoice integer,
    barring_param_barac12mmtelvoice integer,
    barring_param_barac13mmtelvoice integer,
    barring_param_barac14mmtelvoice integer,
    barring_param_barac15mmtelvoice integer,
    barring_param_barringmmtelvideousage integer,
    barring_param_accprobfacmmtelvideo integer,
    barring_param_accclassbartimemmtelvideo integer,
    barring_param_barac11mmtelvideo integer,
    barring_param_barac12mmtelvideo integer,
    barring_param_barac13mmtelvideo integer,
    barring_param_barac14mmtelvideo integer,
    barring_param_barac15mmtelvideo integer
);


SET default_tablespace = p2_dw_lteindex;

--
-- Name: sam_neid_cellnum_barringstatus_params_dim_pkey; Type: CONSTRAINT; Schema: dw_lte; Owner: -; Tablespace: p2_dw_lteindex
--

ALTER TABLE ONLY sam_neid_cellnum_barringstatus_params_dim
    ADD CONSTRAINT sam_neid_cellnum_barringstatus_params_dim_pkey PRIMARY KEY (sam_neid_cellnum_barringstatus_params_dim_id);


--
-- Name: sam_neid_cellnum_barringstatus_params_dim_n1; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_lteindex
--

CREATE INDEX sam_neid_cellnum_barringstatus_params_dim_n1 ON sam_neid_cellnum_barringstatus_params_dim USING btree (neid, effective_begin, effective_end);


--
-- Name: sam_neid_cellnum_barringstatus_params_dim_ux; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_lteindex
--

CREATE UNIQUE INDEX sam_neid_cellnum_barringstatus_params_dim_ux ON sam_neid_cellnum_barringstatus_params_dim USING btree (lsm_name, neid, cellnum, barring_param_barringstatustype, effective_begin);


--
-- PostgreSQL database dump complete
--

