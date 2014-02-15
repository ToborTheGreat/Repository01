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

DROP INDEX stg.sam_neid_connectboardid_connectportid_params_ix1;
ALTER TABLE ONLY stg.sam_neid_connectboardid_connectportid_params DROP CONSTRAINT sam_neid_connectboardid_connectportid_params_pkey;
DROP TABLE stg.sam_neid_connectboardid_connectportid_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_neid_connectboardid_connectportid_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_neid_connectboardid_connectportid_params (
    item_date date NOT NULL,
    lsm_name character varying NOT NULL,
    neid integer NOT NULL,
    connectboardid integer NOT NULL,
    connectportid integer NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
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


SET default_tablespace = p2_stageindex;

--
-- Name: sam_neid_connectboardid_connectportid_params_pkey; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_neid_connectboardid_connectportid_params
    ADD CONSTRAINT sam_neid_connectboardid_connectportid_params_pkey PRIMARY KEY (item_date, lsm_name, neid, connectboardid, connectportid, create_ts);


--
-- Name: sam_neid_connectboardid_connectportid_params_ix1; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX sam_neid_connectboardid_connectportid_params_ix1 ON sam_neid_connectboardid_connectportid_params USING btree (item_date, lsm_name);

ALTER TABLE sam_neid_connectboardid_connectportid_params CLUSTER ON sam_neid_connectboardid_connectportid_params_ix1;


--
-- PostgreSQL database dump complete
--

