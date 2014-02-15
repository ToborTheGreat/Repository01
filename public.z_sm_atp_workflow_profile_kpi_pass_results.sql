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

ALTER TABLE ONLY public.z_sm_atp_workflow_profile_kpi_pass_results DROP CONSTRAINT sm_atp_workflow_profile_kpi_pass_results_fk;
DROP INDEX public.sm_atp_workflow_profile_kpi_pass_results_idx;
DROP TABLE public.z_sm_atp_workflow_profile_kpi_pass_results;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_workflow_profile_kpi_pass_results; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_workflow_profile_kpi_pass_results (
    workflow_run_id integer,
    pass_profile_kpi_id integer,
    kpi_pass_result character(1),
    kpi_result_value real
);


--
-- Name: sm_atp_workflow_profile_kpi_pass_results_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX sm_atp_workflow_profile_kpi_pass_results_idx ON z_sm_atp_workflow_profile_kpi_pass_results USING btree (workflow_run_id);


--
-- Name: sm_atp_workflow_profile_kpi_pass_results_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_workflow_profile_kpi_pass_results
    ADD CONSTRAINT sm_atp_workflow_profile_kpi_pass_results_fk FOREIGN KEY (workflow_run_id) REFERENCES z_sm_atp_workflow_runs(workflow_run_id);


--
-- PostgreSQL database dump complete
--

