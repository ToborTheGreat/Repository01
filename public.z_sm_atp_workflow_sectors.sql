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

ALTER TABLE ONLY public.z_sm_atp_workflow_sectors DROP CONSTRAINT sm_atp_workflow_sectors_fk1;
ALTER TABLE ONLY public.z_sm_atp_workflow_sectors DROP CONSTRAINT sm_atp_workflow_sectors_fk;
ALTER TABLE ONLY public.z_sm_atp_workflow_sectors DROP CONSTRAINT sm_atp_workflow_sectors_pkey;
DROP TABLE public.z_sm_atp_workflow_sectors;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_workflow_sectors; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_workflow_sectors (
    workflow_run_id integer NOT NULL,
    site_id integer NOT NULL,
    sector_id integer NOT NULL,
    sector_number character varying(150),
    azimuth integer,
    h_ant_bw real,
    pn_offset integer,
    bs_covered_bins integer,
    bins_driven integer,
    bins_excluded integer,
    avg_pn_bearing real,
    avg_pn_dist_km real,
    pci integer
);


--
-- Name: sm_atp_workflow_sectors_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_workflow_sectors
    ADD CONSTRAINT sm_atp_workflow_sectors_pkey PRIMARY KEY (site_id, sector_id, workflow_run_id);


--
-- Name: sm_atp_workflow_sectors_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_workflow_sectors
    ADD CONSTRAINT sm_atp_workflow_sectors_fk FOREIGN KEY (workflow_run_id) REFERENCES z_sm_atp_workflow_runs(workflow_run_id);


--
-- Name: sm_atp_workflow_sectors_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_workflow_sectors
    ADD CONSTRAINT sm_atp_workflow_sectors_fk1 FOREIGN KEY (site_id) REFERENCES z_sm_atp_sites(site_id);


--
-- PostgreSQL database dump complete
--

