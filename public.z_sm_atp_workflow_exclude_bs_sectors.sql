--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.z_sm_atp_workflow_exclude_bs_sectors DROP CONSTRAINT sm_atp_workflow_exclude_bs_sectors_fk;
ALTER TABLE ONLY public.z_sm_atp_workflow_exclude_bs_sectors DROP CONSTRAINT sm_atp_workflow_exclude_bs_sectors_idx;
DROP TABLE public.z_sm_atp_workflow_exclude_bs_sectors;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_workflow_exclude_bs_sectors; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_workflow_exclude_bs_sectors (
    workflow_run_id integer NOT NULL,
    site_id integer NOT NULL,
    site_market_id integer NOT NULL,
    sector_id integer NOT NULL,
    sector_number character varying(50) NOT NULL,
    azimuth integer,
    h_ant_bw real,
    pn_offset integer
);


--
-- Name: sm_atp_workflow_exclude_bs_sectors_idx; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_workflow_exclude_bs_sectors
    ADD CONSTRAINT sm_atp_workflow_exclude_bs_sectors_idx PRIMARY KEY (workflow_run_id, sector_id);


--
-- Name: sm_atp_workflow_exclude_bs_sectors_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_workflow_exclude_bs_sectors
    ADD CONSTRAINT sm_atp_workflow_exclude_bs_sectors_fk FOREIGN KEY (workflow_run_id) REFERENCES z_sm_atp_workflow_runs(workflow_run_id);


--
-- PostgreSQL database dump complete
--

