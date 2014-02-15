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

DROP INDEX stg.sam_neid_unitid_fpgaid_connectbdid_connectportid_params_ix1;
ALTER TABLE ONLY stg.sam_neid_unitid_fpgaid_connectbdid_connectportid_params DROP CONSTRAINT sam_neid_unitid_fpgaid_connectbdid_connectportid_params_pkey;
DROP TABLE stg.sam_neid_unitid_fpgaid_connectbdid_connectportid_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_neid_unitid_fpgaid_connectbdid_connectportid_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_neid_unitid_fpgaid_connectbdid_connectportid_params (
    item_date date NOT NULL,
    lsm_name character varying NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    neid integer NOT NULL,
    unitid integer NOT NULL,
    fpgaid integer NOT NULL,
    connectbdid integer NOT NULL,
    connectportid integer NOT NULL,
    iiu_fpga_conf_status integer,
    iiu_fpga_conf_cellnum integer,
    iiu_fpga_conf_subcellnum integer,
    iiu_fpga_conf_userlabel character varying,
    iiu_fpga_conf_dlmaxtxpower integer,
    iiu_fpga_conf_txatten integer,
    iiu_fpga_conf_rxatten integer,
    iiu_fpga_conf_txdelay integer,
    iiu_fpga_conf_rxdelay integer,
    iiu_fpga_conf_overpwralarmth integer,
    iiu_fpga_conf_lowpwralarmth integer,
    iiu_fpga_conf_txpatha integer,
    iiu_fpga_conf_txpathb integer,
    iiu_fpga_conf_rxpatha integer,
    iiu_fpga_conf_rxpathb integer,
    iiu_fpga_conf_clockadvancerpt integer,
    iiu_fpga_conf_pathaenablestate integer,
    iiu_fpga_conf_pathbenablestate integer,
    iiu_fpga_conf_pathcenablestate integer,
    iiu_fpga_conf_pathdenablestate integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_neid_unitid_fpgaid_connectbdid_connectportid_params_pkey; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_neid_unitid_fpgaid_connectbdid_connectportid_params
    ADD CONSTRAINT sam_neid_unitid_fpgaid_connectbdid_connectportid_params_pkey PRIMARY KEY (item_date, lsm_name, neid, unitid, fpgaid, connectbdid, connectportid);


--
-- Name: sam_neid_unitid_fpgaid_connectbdid_connectportid_params_ix1; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX sam_neid_unitid_fpgaid_connectbdid_connectportid_params_ix1 ON sam_neid_unitid_fpgaid_connectbdid_connectportid_params USING btree (item_date, lsm_name);

ALTER TABLE sam_neid_unitid_fpgaid_connectbdid_connectportid_params CLUSTER ON sam_neid_unitid_fpgaid_connectbdid_connectportid_params_ix1;


--
-- PostgreSQL database dump complete
--

