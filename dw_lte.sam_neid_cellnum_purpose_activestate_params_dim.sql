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

DROP INDEX dw_lte.sam_neid_cellnum_purpose_activestate_params_dim_ux;
DROP INDEX dw_lte.sam_neid_cellnum_purpose_activestate_params_dim_n1;
ALTER TABLE ONLY dw_lte.sam_neid_cellnum_purpose_activestate_params_dim DROP CONSTRAINT sam_neid_cellnum_purpose_activestate_params_dim_pkey;
DROP TABLE dw_lte.sam_neid_cellnum_purpose_activestate_params_dim;
SET search_path = dw_lte, pg_catalog;

SET default_tablespace = p2_dw_ltedata;

SET default_with_oids = false;

--
-- Name: sam_neid_cellnum_purpose_activestate_params_dim; Type: TABLE; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE TABLE sam_neid_cellnum_purpose_activestate_params_dim (
    sam_neid_cellnum_purpose_activestate_params_dim_id integer DEFAULT nextval('sam_neid_cellnum_purpose_activestate_params_dim_seq'::regclass) NOT NULL,
    lsm_name character varying NOT NULL,
    neid integer NOT NULL,
    cellnum integer NOT NULL,
    purpose integer NOT NULL,
    activestate integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
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


--
-- Name: sam_neid_cellnum_purpose_activestate_params_dim_pkey; Type: CONSTRAINT; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

ALTER TABLE ONLY sam_neid_cellnum_purpose_activestate_params_dim
    ADD CONSTRAINT sam_neid_cellnum_purpose_activestate_params_dim_pkey PRIMARY KEY (sam_neid_cellnum_purpose_activestate_params_dim_id);


--
-- Name: sam_neid_cellnum_purpose_activestate_params_dim_n1; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE INDEX sam_neid_cellnum_purpose_activestate_params_dim_n1 ON sam_neid_cellnum_purpose_activestate_params_dim USING btree (neid, effective_begin, effective_end);


--
-- Name: sam_neid_cellnum_purpose_activestate_params_dim_ux; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE UNIQUE INDEX sam_neid_cellnum_purpose_activestate_params_dim_ux ON sam_neid_cellnum_purpose_activestate_params_dim USING btree (lsm_name, neid, cellnum, purpose, activestate, effective_begin);


--
-- PostgreSQL database dump complete
--

