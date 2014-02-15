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

DROP INDEX dw_lte.sam_neid_cellnum_purpose_activestate_carrieridx_params_dim_ux;
DROP INDEX dw_lte.sam_neid_cellnum_purpose_activestate_carrieridx_params_dim_n1;
ALTER TABLE ONLY dw_lte.sam_neid_cellnum_purpose_activestate_carrieridx_params_dim DROP CONSTRAINT sam_neid_cellnum_purpose_activestate_carrieridx_params_dim_pkey;
DROP TABLE dw_lte.sam_neid_cellnum_purpose_activestate_carrieridx_params_dim;
SET search_path = dw_lte, pg_catalog;

SET default_tablespace = p2_dw_ltedata;

SET default_with_oids = false;

--
-- Name: sam_neid_cellnum_purpose_activestate_carrieridx_params_dim; Type: TABLE; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE TABLE sam_neid_cellnum_purpose_activestate_carrieridx_params_dim (
    sam_neid_cellnum_purpose_activestate_carrieridx_params_dim_id integer DEFAULT nextval('sam_neid_cellnum_purpose_activestate_carrieridx_params_dim_seq'::regclass) NOT NULL,
    lsm_name character varying NOT NULL,
    neid integer NOT NULL,
    cellnum integer NOT NULL,
    purpose integer NOT NULL,
    activestate integer NOT NULL,
    carrierindex integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    cdma_db2_criteria_b2threshold1rsrp integer,
    cdma_db2_criteria_b2threshold1rsrq integer,
    cdma_db2_criteria_b2threshold2cdma2000 integer,
    cdma_db2_criteria_hysteresis integer,
    cdma_db2_criteria_timetotrigger integer,
    cdma_db2_criteria_maxreportcell integer,
    cdma_db2_criteria_reportinterval integer,
    cdma_db2_criteria_reportamount integer,
    cdma_db2_criteria_triggerquantityeutra integer,
    cdma_rttb2_crit_info_b2threshold1rsrp integer,
    cdma_rttb2_crit_info_b2threshold1rsrq integer,
    cdma_rttb2_crit_info_b2threshold2cdma2000 integer,
    cdma_rttb2_crit_info_hysteresis integer,
    cdma_rttb2_crit_info_timetotrigger integer,
    cdma_rttb2_crit_info_maxreportcell integer,
    cdma_rttb2_crit_info_reportinterval integer,
    cdma_rttb2_crit_info_reportamount integer,
    cdma_rttb2_crit_info_triggerquantityeutra integer
);


--
-- Name: sam_neid_cellnum_purpose_activestate_carrieridx_params_dim_pkey; Type: CONSTRAINT; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

ALTER TABLE ONLY sam_neid_cellnum_purpose_activestate_carrieridx_params_dim
    ADD CONSTRAINT sam_neid_cellnum_purpose_activestate_carrieridx_params_dim_pkey PRIMARY KEY (sam_neid_cellnum_purpose_activestate_carrieridx_params_dim_id);


--
-- Name: sam_neid_cellnum_purpose_activestate_carrieridx_params_dim_n1; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE INDEX sam_neid_cellnum_purpose_activestate_carrieridx_params_dim_n1 ON sam_neid_cellnum_purpose_activestate_carrieridx_params_dim USING btree (neid, effective_begin, effective_end);


--
-- Name: sam_neid_cellnum_purpose_activestate_carrieridx_params_dim_ux; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE UNIQUE INDEX sam_neid_cellnum_purpose_activestate_carrieridx_params_dim_ux ON sam_neid_cellnum_purpose_activestate_carrieridx_params_dim USING btree (lsm_name, neid, cellnum, purpose, activestate, carrierindex, effective_begin);


--
-- PostgreSQL database dump complete
--

