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

DROP INDEX stg.sam_neid_qci_params_ix1;
ALTER TABLE ONLY stg.sam_neid_qci_params DROP CONSTRAINT sam_neid_qci_params_pkey;
DROP TABLE stg.sam_neid_qci_params;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: sam_neid_qci_params; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE sam_neid_qci_params (
    item_date date NOT NULL,
    lsm_name character varying NOT NULL,
    create_ts timestamp(0) without time zone NOT NULL,
    neid integer NOT NULL,
    qci integer NOT NULL,
    drx_info_func_drxconfigsetup integer,
    drx_info_func_ondurationtimer integer,
    drx_info_func_drxinactivitytimer integer,
    drx_info_func_drxretransmissiontimer integer,
    drx_info_func_longdrxcyclestartoffsettype integer,
    drx_info_func_shortdrxconfigsetup integer,
    drx_info_func_shortdrxcycle integer,
    drx_info_func_drxshortcycletimer integer,
    rohc_info_func_rohcsupport integer,
    rohc_info_func_maxcontextsession integer,
    rohc_info_func_profile0001 integer,
    rohc_info_func_profile0002 integer,
    rohc_info_func_profile0003 integer,
    rohc_info_func_profile0004 integer,
    rohc_info_func_profile0006 integer,
    rohc_info_func_profile0101 integer,
    rohc_info_func_profile0102 integer,
    rohc_info_func_profile0103 integer,
    rohc_info_func_profile0104 integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_neid_qci_params_pkey; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_neid_qci_params
    ADD CONSTRAINT sam_neid_qci_params_pkey PRIMARY KEY (item_date, lsm_name, neid, qci);


--
-- Name: sam_neid_qci_params_ix1; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX sam_neid_qci_params_ix1 ON sam_neid_qci_params USING btree (item_date, lsm_name);

ALTER TABLE sam_neid_qci_params CLUSTER ON sam_neid_qci_params_ix1;


--
-- PostgreSQL database dump complete
--

