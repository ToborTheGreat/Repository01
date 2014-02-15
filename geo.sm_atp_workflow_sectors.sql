--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = geo, pg_catalog;

ALTER TABLE ONLY geo.sm_atp_workflow_sectors DROP CONSTRAINT sm_atp_workflow_sectors_fk1;
ALTER TABLE ONLY geo.sm_atp_workflow_sectors DROP CONSTRAINT sm_atp_workflow_sectors_fk;
DROP INDEX geo.sm_atp_workflow_sectors_ix2;
DROP INDEX geo.sm_atp_workflow_sectors_ix;
ALTER TABLE ONLY geo.sm_atp_workflow_sectors DROP CONSTRAINT sm_atp_workflow_sectors_pkey;
DROP TABLE geo.sm_atp_workflow_sectors;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_workflow_sectors; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_workflow_sectors (
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
-- Name: sm_atp_workflow_sectors_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_workflow_sectors
    ADD CONSTRAINT sm_atp_workflow_sectors_pkey PRIMARY KEY (site_id, sector_id, workflow_run_id);


SET default_tablespace = '';

--
-- Name: sm_atp_workflow_sectors_ix; Type: INDEX; Schema: geo; Owner: -; Tablespace: 
--

CREATE INDEX sm_atp_workflow_sectors_ix ON sm_atp_workflow_sectors USING btree (workflow_run_id);


--
-- Name: sm_atp_workflow_sectors_ix2; Type: INDEX; Schema: geo; Owner: -; Tablespace: 
--

CREATE INDEX sm_atp_workflow_sectors_ix2 ON sm_atp_workflow_sectors USING btree (sector_id);


--
-- Name: sm_atp_workflow_sectors_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_workflow_sectors
    ADD CONSTRAINT sm_atp_workflow_sectors_fk FOREIGN KEY (workflow_run_id) REFERENCES sm_atp_workflow_runs(workflow_run_id);


--
-- Name: sm_atp_workflow_sectors_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_workflow_sectors
    ADD CONSTRAINT sm_atp_workflow_sectors_fk1 FOREIGN KEY (site_id) REFERENCES sm_atp_sites(site_id);


--
-- PostgreSQL database dump complete
--

