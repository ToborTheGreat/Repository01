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

DROP INDEX stg.sam_neid_cellnum_purpose_activestate_params_ix1;
ALTER TABLE ONLY stg.sam_neid_cellnum_purpose_activestate_params DROP CONSTRAINT sam_neid_cellnum_purpose_activestate_params_pkey;
DROP TABLE stg.sam_neid_cellnum_purpose_activestate_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_neid_cellnum_purpose_activestate_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_neid_cellnum_purpose_activestate_params (
    item_date date NOT NULL,
    lsm_name character varying NOT NULL,
    neid integer NOT NULL,
    cellnum integer NOT NULL,
    purpose integer NOT NULL,
    activestate integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    eutra_a1_a1thresholdrsrp integer,
    eutra_a1_a1thresholdrsrq integer,
    eutra_a1_hysteresis integer,
    eutra_a1_timetotrigger integer,
    eutra_a1_triggerquantity integer,
    eutra_a1_reportquantity integer,
    eutra_a1_maxreportcell integer,
    eutra_a1_reportinterval integer,
    eutra_a1_reportamount integer,
    eutra_a2_a2thresholdrsrp integer,
    eutra_a2_a2thresholdrsrq integer,
    eutra_a2_hysteresis integer,
    eutra_a2_timetotrigger integer,
    eutra_a2_triggerquantity integer,
    eutra_a2_reportquantity integer,
    eutra_a2_maxreportcell integer,
    eutra_a2_reportinterval integer,
    eutra_a2_reportamount integer,
    cdma_rttperiodicinfo_params_maxreportcell integer,
    cdma_rttperiodicinfo_params_reportinterval integer,
    cdma_rttperiodicinfo_params_reportamount integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_neid_cellnum_purpose_activestate_params_pkey; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_neid_cellnum_purpose_activestate_params
    ADD CONSTRAINT sam_neid_cellnum_purpose_activestate_params_pkey PRIMARY KEY (item_date, lsm_name, neid, cellnum, purpose, activestate, create_ts);


--
-- Name: sam_neid_cellnum_purpose_activestate_params_ix1; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX sam_neid_cellnum_purpose_activestate_params_ix1 ON sam_neid_cellnum_purpose_activestate_params USING btree (item_date, lsm_name);

ALTER TABLE sam_neid_cellnum_purpose_activestate_params CLUSTER ON sam_neid_cellnum_purpose_activestate_params_ix1;


--
-- PostgreSQL database dump complete
--

