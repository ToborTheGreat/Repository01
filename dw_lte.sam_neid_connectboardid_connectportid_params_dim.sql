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

DROP INDEX dw_lte.sam_neid_connectboardid_connectportid_params_dim_ux;
DROP INDEX dw_lte.sam_neid_connectboardid_connectportid_params_dim_n1;
ALTER TABLE ONLY dw_lte.sam_neid_connectboardid_connectportid_params_dim DROP CONSTRAINT sam_neid_connectboardid_connectportid_params_dim_pkey;
DROP TABLE dw_lte.sam_neid_connectboardid_connectportid_params_dim;
SET search_path = dw_lte, pg_catalog;

SET default_tablespace = p2_dw_ltedata;

SET default_with_oids = false;

--
-- Name: sam_neid_connectboardid_connectportid_params_dim; Type: TABLE; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE TABLE sam_neid_connectboardid_connectportid_params_dim (
    sam_neid_connectboardid_connectportid_params_dim_id integer DEFAULT nextval('sam_neid_connectboardid_connectportid_params_dim_seq'::regclass) NOT NULL,
    lsm_name character varying NOT NULL,
    neid integer NOT NULL,
    connectboardid integer NOT NULL,
    connectportid integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    rrh_conf_connectboardtype integer,
    rrh_conf_connectportid integer,
    rrh_conf_cascaderrhid integer,
    rrh_conf_status integer,
    rrh_conf_boardtype integer,
    rrh_conf_subcellnum integer,
    rrh_conf_psustatus integer,
    rrh_conf_userlabel character varying,
    rrh_conf_latitude character varying,
    rrh_conf_longitude character varying,
    rrh_conf_height character varying,
    rrh_conf_connectboardidadd integer,
    rrh_conf_connectportidadd integer,
    rrh_conf_dlantazimuth integer,
    rrh_conf_dlmaxtxpower integer,
    rrh_conf_txatten character varying,
    rrh_conf_rxatten character varying,
    rrh_conf_txdelay integer,
    rrh_conf_rxdelay integer,
    rrh_conf_vswrshutalarmth integer,
    rrh_conf_overpwralarmth integer,
    rrh_conf_lowpwralarmth integer,
    rrh_conf_txpatha character varying,
    rrh_conf_txpathb character varying,
    rrh_conf_txpathc character varying,
    rrh_conf_txpathd character varying,
    rrh_conf_rxpatha character varying,
    rrh_conf_rxpathb character varying,
    rrh_conf_rxpathc character varying,
    rrh_conf_rxpathd character varying,
    rrh_conf_pathaenablestate integer,
    rrh_conf_pathbenablestate integer,
    rrh_conf_pathcenablestate integer,
    rrh_conf_pathdenablestate integer,
    rrh_conf_powerboost integer,
    rrh_conf_irifopermode integer,
    rrh_conf_cascadonoff integer,
    rrh_conf_vswrshutalarmth2 integer,
    rrh_conf_upperovertempth integer,
    rrh_conf_lowerovertempth integer,
    rrh_conf_rrutemptype integer,
    rrh_conf_antgrpnum integer,
    rrh_conf_ulantstate integer,
    rrh_conf_dlantstate integer,
    rrh_conf_delayt12 integer,
    rrh_conf_delayt34 integer,
    rrh_conf_antnum integer,
    rrh_conf_clockadvancerpt integer,
    rrh_conf_numofret integer,
    rrh_conf_rrhtxpathtype integer
);


--
-- Name: sam_neid_connectboardid_connectportid_params_dim_pkey; Type: CONSTRAINT; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

ALTER TABLE ONLY sam_neid_connectboardid_connectportid_params_dim
    ADD CONSTRAINT sam_neid_connectboardid_connectportid_params_dim_pkey PRIMARY KEY (sam_neid_connectboardid_connectportid_params_dim_id);


--
-- Name: sam_neid_connectboardid_connectportid_params_dim_n1; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE INDEX sam_neid_connectboardid_connectportid_params_dim_n1 ON sam_neid_connectboardid_connectportid_params_dim USING btree (neid, effective_begin, effective_end);


--
-- Name: sam_neid_connectboardid_connectportid_params_dim_ux; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE UNIQUE INDEX sam_neid_connectboardid_connectportid_params_dim_ux ON sam_neid_connectboardid_connectportid_params_dim USING btree (lsm_name, neid, connectboardid, connectportid, effective_begin);


--
-- PostgreSQL database dump complete
--

