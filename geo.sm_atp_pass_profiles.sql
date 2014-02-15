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

ALTER TABLE ONLY geo.sm_atp_pass_profiles DROP CONSTRAINT sm_atp_pass_profiles_fk2;
ALTER TABLE ONLY geo.sm_atp_pass_profiles DROP CONSTRAINT sm_atp_pass_profiles_fk1;
ALTER TABLE ONLY geo.sm_atp_pass_profiles DROP CONSTRAINT sm_atp_pass_profiles_fk;
ALTER TABLE ONLY geo.sm_atp_pass_profiles DROP CONSTRAINT sm_atp_pass_profiles_pkey;
ALTER TABLE ONLY geo.sm_atp_pass_profiles DROP CONSTRAINT sm_atp_pass_profiles_pass_profile_id_key;
ALTER TABLE geo.sm_atp_pass_profiles ALTER COLUMN pass_profile_id DROP DEFAULT;
DROP SEQUENCE geo.sm_atp_pass_profiles_pass_profile_id_seq;
DROP TABLE geo.sm_atp_pass_profiles;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_pass_profiles; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_pass_profiles (
    pass_profile_id integer NOT NULL,
    technology_type_id integer NOT NULL,
    description character varying(2000) NOT NULL,
    dt_file_template_id integer NOT NULL,
    mask_metric_type_id integer NOT NULL,
    dt_metric_type_id integer NOT NULL,
    sectors_metric_type_id integer,
    rssi_delta_metric_type_id integer,
    report_id integer,
    status character(1) DEFAULT 'V'::bpchar NOT NULL,
    CONSTRAINT sm_atp_pass_profiles_status_check CHECK (((status = 'V'::bpchar) OR (status = 'I'::bpchar)))
);


--
-- Name: sm_atp_pass_profiles_pass_profile_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE sm_atp_pass_profiles_pass_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: sm_atp_pass_profiles_pass_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE sm_atp_pass_profiles_pass_profile_id_seq OWNED BY sm_atp_pass_profiles.pass_profile_id;


--
-- Name: pass_profile_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE sm_atp_pass_profiles ALTER COLUMN pass_profile_id SET DEFAULT nextval('sm_atp_pass_profiles_pass_profile_id_seq'::regclass);


--
-- Name: sm_atp_pass_profiles_pass_profile_id_key; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_pass_profiles
    ADD CONSTRAINT sm_atp_pass_profiles_pass_profile_id_key UNIQUE (pass_profile_id);


--
-- Name: sm_atp_pass_profiles_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_pass_profiles
    ADD CONSTRAINT sm_atp_pass_profiles_pkey PRIMARY KEY (pass_profile_id, technology_type_id);


--
-- Name: sm_atp_pass_profiles_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profiles
    ADD CONSTRAINT sm_atp_pass_profiles_fk FOREIGN KEY (technology_type_id) REFERENCES technology_types(technology_type_id);


--
-- Name: sm_atp_pass_profiles_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profiles
    ADD CONSTRAINT sm_atp_pass_profiles_fk1 FOREIGN KEY (dt_file_template_id) REFERENCES sm_atp_dt_file_templates(dt_file_template_id);


--
-- Name: sm_atp_pass_profiles_fk2; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profiles
    ADD CONSTRAINT sm_atp_pass_profiles_fk2 FOREIGN KEY (report_id) REFERENCES sm_atp_excel_reports(report_id);


--
-- PostgreSQL database dump complete
--

