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

DROP INDEX stg.sam_neid_cellnum_barringstatus_params_ix1;
ALTER TABLE ONLY stg.sam_neid_cellnum_barringstatus_params DROP CONSTRAINT sam_neid_cellnum_barringstatus_params_pkey;
DROP TABLE stg.sam_neid_cellnum_barringstatus_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_neid_cellnum_barringstatus_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_neid_cellnum_barringstatus_params (
    item_date date NOT NULL,
    lsm_name character varying NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    neid integer NOT NULL,
    cellnum integer NOT NULL,
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


SET default_tablespace = p2_stageindex;

--
-- Name: sam_neid_cellnum_barringstatus_params_pkey; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_neid_cellnum_barringstatus_params
    ADD CONSTRAINT sam_neid_cellnum_barringstatus_params_pkey PRIMARY KEY (item_date, lsm_name, neid, cellnum, barring_param_barringstatustype);


--
-- Name: sam_neid_cellnum_barringstatus_params_ix1; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX sam_neid_cellnum_barringstatus_params_ix1 ON sam_neid_cellnum_barringstatus_params USING btree (item_date, lsm_name);

ALTER TABLE sam_neid_cellnum_barringstatus_params CLUSTER ON sam_neid_cellnum_barringstatus_params_ix1;


--
-- PostgreSQL database dump complete
--

