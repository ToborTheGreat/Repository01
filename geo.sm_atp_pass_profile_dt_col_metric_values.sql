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

ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_col_metric_values DROP CONSTRAINT sm_atp_pass_profile_dt_col_metric_values_fk5;
ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_col_metric_values DROP CONSTRAINT sm_atp_pass_profile_dt_col_metric_values_fk4;
ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_col_metric_values DROP CONSTRAINT sm_atp_pass_profile_dt_col_metric_values_fk3;
ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_col_metric_values DROP CONSTRAINT sm_atp_pass_profile_dt_col_metric_values_fk2;
ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_col_metric_values DROP CONSTRAINT sm_atp_pass_profile_dt_col_metric_values_fk1;
ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_col_metric_values DROP CONSTRAINT sm_atp_pass_profile_dt_col_metric_values_fk;
DROP TABLE geo.sm_atp_pass_profile_dt_col_metric_values;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_pass_profile_dt_col_metric_values; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_pass_profile_dt_col_metric_values (
    workflow_run_id integer,
    metric_type_id integer,
    pass_profile_id integer,
    technology_type_id integer,
    dt_file_template_id integer,
    user_map_range_id integer,
    column_name character varying(75),
    bin_count integer,
    report_tag character varying(50)
);


--
-- Name: sm_atp_pass_profile_dt_col_metric_values_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_col_metric_values
    ADD CONSTRAINT sm_atp_pass_profile_dt_col_metric_values_fk FOREIGN KEY (workflow_run_id) REFERENCES sm_atp_workflow_runs(workflow_run_id);


--
-- Name: sm_atp_pass_profile_dt_col_metric_values_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_col_metric_values
    ADD CONSTRAINT sm_atp_pass_profile_dt_col_metric_values_fk1 FOREIGN KEY (metric_type_id) REFERENCES metric_types(metric_type_id);


--
-- Name: sm_atp_pass_profile_dt_col_metric_values_fk2; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_col_metric_values
    ADD CONSTRAINT sm_atp_pass_profile_dt_col_metric_values_fk2 FOREIGN KEY (pass_profile_id) REFERENCES sm_atp_pass_profiles(pass_profile_id);


--
-- Name: sm_atp_pass_profile_dt_col_metric_values_fk3; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_col_metric_values
    ADD CONSTRAINT sm_atp_pass_profile_dt_col_metric_values_fk3 FOREIGN KEY (technology_type_id) REFERENCES technology_types(technology_type_id);


--
-- Name: sm_atp_pass_profile_dt_col_metric_values_fk4; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_col_metric_values
    ADD CONSTRAINT sm_atp_pass_profile_dt_col_metric_values_fk4 FOREIGN KEY (dt_file_template_id) REFERENCES sm_atp_dt_file_templates(dt_file_template_id);


--
-- Name: sm_atp_pass_profile_dt_col_metric_values_fk5; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_col_metric_values
    ADD CONSTRAINT sm_atp_pass_profile_dt_col_metric_values_fk5 FOREIGN KEY (user_map_range_id) REFERENCES user_map_ranges(user_map_range_id);


--
-- PostgreSQL database dump complete
--

