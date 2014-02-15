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

ALTER TABLE ONLY geo.sm_atp_workflow_sites DROP CONSTRAINT sm_atp_workflow_sites_fk1;
ALTER TABLE ONLY geo.sm_atp_workflow_sites DROP CONSTRAINT sm_atp_workflow_sites_fk;
ALTER TABLE ONLY geo.sm_atp_workflow_sites DROP CONSTRAINT sm_atp_workflow_sites_pkey;
DROP TABLE geo.sm_atp_workflow_sites;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_workflow_sites; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_workflow_sites (
    workflow_run_id integer NOT NULL,
    site_id integer NOT NULL,
    site_market_id integer NOT NULL,
    site_identifier character varying(150) NOT NULL,
    site_name character varying(150),
    lat double precision,
    lng double precision,
    geoloc public.geometry
);


--
-- Name: sm_atp_workflow_sites_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_workflow_sites
    ADD CONSTRAINT sm_atp_workflow_sites_pkey PRIMARY KEY (site_identifier, workflow_run_id);


--
-- Name: sm_atp_workflow_sites_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_workflow_sites
    ADD CONSTRAINT sm_atp_workflow_sites_fk FOREIGN KEY (workflow_run_id) REFERENCES sm_atp_workflow_runs(workflow_run_id);


--
-- Name: sm_atp_workflow_sites_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_workflow_sites
    ADD CONSTRAINT sm_atp_workflow_sites_fk1 FOREIGN KEY (site_id) REFERENCES sm_atp_sites(site_id);


--
-- PostgreSQL database dump complete
--

