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

DROP INDEX dw_lte.sam_neid_servernum_params_dim_ux;
DROP INDEX dw_lte.sam_neid_servernum_params_dim_n1;
ALTER TABLE ONLY dw_lte.sam_neid_servernum_params_dim DROP CONSTRAINT sam_neid_servernum_params_dim_pkey;
DROP TABLE dw_lte.sam_neid_servernum_params_dim;
SET search_path = dw_lte, pg_catalog;

SET default_tablespace = p2_dw_ltedata;

SET default_with_oids = false;

--
-- Name: sam_neid_servernum_params_dim; Type: TABLE; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE TABLE sam_neid_servernum_params_dim (
    sam_neid_servernum_params_dim_id integer DEFAULT nextval('sam_neid_servernum_params_dim_seq'::regclass) NOT NULL,
    lsm_name character varying NOT NULL,
    neid integer NOT NULL,
    servernum integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    server_cac_info_callcountcacusage integer,
    server_cac_info_maxcallcount integer,
    server_cac_info_callcacthreshfornormal integer,
    server_cac_info_callcacthreshforemerho integer,
    server_cac_info_drbcountcacusage integer,
    server_cac_info_maxdrbcount integer,
    server_cac_info_drbcacthreshfornormal integer,
    server_cac_info_drbcacthreshforemerho integer
);


SET default_tablespace = p2_dw_lteindex;

--
-- Name: sam_neid_servernum_params_dim_pkey; Type: CONSTRAINT; Schema: dw_lte; Owner: -; Tablespace: p2_dw_lteindex
--

ALTER TABLE ONLY sam_neid_servernum_params_dim
    ADD CONSTRAINT sam_neid_servernum_params_dim_pkey PRIMARY KEY (sam_neid_servernum_params_dim_id);


--
-- Name: sam_neid_servernum_params_dim_n1; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_lteindex
--

CREATE INDEX sam_neid_servernum_params_dim_n1 ON sam_neid_servernum_params_dim USING btree (neid, effective_begin, effective_end);


--
-- Name: sam_neid_servernum_params_dim_ux; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_lteindex
--

CREATE UNIQUE INDEX sam_neid_servernum_params_dim_ux ON sam_neid_servernum_params_dim USING btree (lsm_name, neid, servernum, effective_begin);


--
-- PostgreSQL database dump complete
--

