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

DROP INDEX dw_lte.sam_neid_cellnum_relationidx_status_params_dim_ux;
DROP INDEX dw_lte.sam_neid_cellnum_relationidx_status_params_dim_n1;
ALTER TABLE ONLY dw_lte.sam_neid_cellnum_relationidx_status_params_dim DROP CONSTRAINT sam_neid_cellnum_relationidx_status_params_dim_pkey;
DROP TABLE dw_lte.sam_neid_cellnum_relationidx_status_params_dim;
SET search_path = dw_lte, pg_catalog;

SET default_tablespace = p2_dw_ltedata;

SET default_with_oids = false;

--
-- Name: sam_neid_cellnum_relationidx_status_params_dim; Type: TABLE; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE TABLE sam_neid_cellnum_relationidx_status_params_dim (
    sam_neid_cellnum_relationidx_status_params_dim_id integer DEFAULT nextval('sam_neid_cellnum_relationidx_status_params_dim_seq'::regclass) NOT NULL,
    lsm_name character varying NOT NULL,
    neid integer NOT NULL,
    cellnum integer NOT NULL,
    relationidx integer NOT NULL,
    external_eutracell_fddlogic_status integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    external_eutracell_fddlogic_enbid integer,
    external_eutracell_fddlogic_targetcellnum integer,
    external_eutracell_fddlogic_enbtype integer,
    external_eutracell_fddlogic_enbmcc integer,
    external_eutracell_fddlogic_enbmnc integer,
    external_eutracell_fddlogic_phycellid integer,
    external_eutracell_fddlogic_tac integer,
    external_eutracell_fddlogic_mcc0 integer,
    external_eutracell_fddlogic_mnc0 integer,
    external_eutracell_fddlogic_mcc1 character varying,
    external_eutracell_fddlogic_mnc1 character varying,
    external_eutracell_fddlogic_mcc2 character varying,
    external_eutracell_fddlogic_mnc2 character varying,
    external_eutracell_fddlogic_mcc3 character varying,
    external_eutracell_fddlogic_mnc3 character varying,
    external_eutracell_fddlogic_mcc4 character varying,
    external_eutracell_fddlogic_mnc4 character varying,
    external_eutracell_fddlogic_mcc5 character varying,
    external_eutracell_fddlogic_mnc5 character varying,
    external_eutracell_fddlogic_earfcnul integer,
    external_eutracell_fddlogic_earfcndl integer,
    external_eutracell_fddlogic_bandwidthul integer,
    external_eutracell_fddlogic_bandwidthdl integer,
    external_eutracell_fddlogic_indoffset integer,
    external_eutracell_fddlogic_qoffsetcell integer,
    external_eutracell_fddlogic_isremoveallowed integer,
    external_eutracell_fddlogic_ishoallowed integer
);


SET default_tablespace = p2_dw_lteindex;

--
-- Name: sam_neid_cellnum_relationidx_status_params_dim_pkey; Type: CONSTRAINT; Schema: dw_lte; Owner: -; Tablespace: p2_dw_lteindex
--

ALTER TABLE ONLY sam_neid_cellnum_relationidx_status_params_dim
    ADD CONSTRAINT sam_neid_cellnum_relationidx_status_params_dim_pkey PRIMARY KEY (sam_neid_cellnum_relationidx_status_params_dim_id);


--
-- Name: sam_neid_cellnum_relationidx_status_params_dim_n1; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_lteindex
--

CREATE INDEX sam_neid_cellnum_relationidx_status_params_dim_n1 ON sam_neid_cellnum_relationidx_status_params_dim USING btree (neid, effective_begin, effective_end);


--
-- Name: sam_neid_cellnum_relationidx_status_params_dim_ux; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_lteindex
--

CREATE UNIQUE INDEX sam_neid_cellnum_relationidx_status_params_dim_ux ON sam_neid_cellnum_relationidx_status_params_dim USING btree (lsm_name, neid, cellnum, relationidx, external_eutracell_fddlogic_status, effective_begin);


--
-- PostgreSQL database dump complete
--

