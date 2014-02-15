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

ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_col_metrics DROP CONSTRAINT sm_atp_pass_profile_dt_col_metrics_fk3;
ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_col_metrics DROP CONSTRAINT sm_atp_pass_profile_dt_col_metrics_fk2;
ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_col_metrics DROP CONSTRAINT sm_atp_pass_profile_dt_col_metrics_fk1;
ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_col_metrics DROP CONSTRAINT sm_atp_pass_profile_dt_col_metrics_fk;
DROP TABLE geo.sm_atp_pass_profile_dt_col_metrics;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_pass_profile_dt_col_metrics; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_pass_profile_dt_col_metrics (
    column_name character varying(75),
    dt_file_template_id integer,
    technology_type_id integer,
    pass_profile_id integer,
    metric_type_id integer
);


--
-- Name: sm_atp_pass_profile_dt_col_metrics_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_col_metrics
    ADD CONSTRAINT sm_atp_pass_profile_dt_col_metrics_fk FOREIGN KEY (dt_file_template_id) REFERENCES sm_atp_dt_file_templates(dt_file_template_id);


--
-- Name: sm_atp_pass_profile_dt_col_metrics_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_col_metrics
    ADD CONSTRAINT sm_atp_pass_profile_dt_col_metrics_fk1 FOREIGN KEY (technology_type_id) REFERENCES technology_types(technology_type_id);


--
-- Name: sm_atp_pass_profile_dt_col_metrics_fk2; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_col_metrics
    ADD CONSTRAINT sm_atp_pass_profile_dt_col_metrics_fk2 FOREIGN KEY (pass_profile_id) REFERENCES sm_atp_pass_profiles(pass_profile_id);


--
-- Name: sm_atp_pass_profile_dt_col_metrics_fk3; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_col_metrics
    ADD CONSTRAINT sm_atp_pass_profile_dt_col_metrics_fk3 FOREIGN KEY (metric_type_id) REFERENCES metric_types(metric_type_id);


--
-- PostgreSQL database dump complete
--

