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

ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_kpi_cols DROP CONSTRAINT sm_atp_pass_profile_dt_kpi_cols_fk2;
ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_kpi_cols DROP CONSTRAINT sm_atp_pass_profile_dt_kpi_cols_fk1;
ALTER TABLE ONLY geo.sm_atp_pass_profile_dt_kpi_cols DROP CONSTRAINT sm_atp_pass_profile_dt_kpi_cols_pkey;
DROP TABLE geo.sm_atp_pass_profile_dt_kpi_cols;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_pass_profile_dt_kpi_cols; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_pass_profile_dt_kpi_cols (
    pass_profile_id integer NOT NULL,
    technology_type_id integer NOT NULL,
    column_name character varying(75) NOT NULL,
    dt_file_template_id integer,
    expression character varying(50)
);


--
-- Name: sm_atp_pass_profile_dt_kpi_cols_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_kpi_cols
    ADD CONSTRAINT sm_atp_pass_profile_dt_kpi_cols_pkey PRIMARY KEY (pass_profile_id, technology_type_id, column_name);


--
-- Name: sm_atp_pass_profile_dt_kpi_cols_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_kpi_cols
    ADD CONSTRAINT sm_atp_pass_profile_dt_kpi_cols_fk1 FOREIGN KEY (pass_profile_id) REFERENCES sm_atp_pass_profiles(pass_profile_id);


--
-- Name: sm_atp_pass_profile_dt_kpi_cols_fk2; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_dt_kpi_cols
    ADD CONSTRAINT sm_atp_pass_profile_dt_kpi_cols_fk2 FOREIGN KEY (technology_type_id) REFERENCES technology_types(technology_type_id);


--
-- PostgreSQL database dump complete
--

