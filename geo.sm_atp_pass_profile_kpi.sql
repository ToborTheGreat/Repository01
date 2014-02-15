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

ALTER TABLE ONLY geo.sm_atp_pass_profile_kpi DROP CONSTRAINT sm_atp_pass_profile_kpi_fk4;
ALTER TABLE ONLY geo.sm_atp_pass_profile_kpi DROP CONSTRAINT sm_atp_pass_profile_kpi_fk3;
ALTER TABLE ONLY geo.sm_atp_pass_profile_kpi DROP CONSTRAINT sm_atp_pass_profile_kpi_fk2;
ALTER TABLE ONLY geo.sm_atp_pass_profile_kpi DROP CONSTRAINT sm_atp_pass_profile_kpi_fk1;
ALTER TABLE ONLY geo.sm_atp_pass_profile_kpi DROP CONSTRAINT sm_atp_pass_profile_kpi_fk;
ALTER TABLE ONLY geo.sm_atp_pass_profile_kpi DROP CONSTRAINT sm_atp_pass_profile_kpi_pass_profile_id_key;
ALTER TABLE ONLY geo.sm_atp_pass_profile_kpi DROP CONSTRAINT sm_atp_pass_profile_kpi_idx;
ALTER TABLE geo.sm_atp_pass_profile_kpi ALTER COLUMN pass_profile_kpi_id DROP DEFAULT;
DROP SEQUENCE geo.sm_atp_pass_profile_kpi_pass_profile_kpi_id_seq;
DROP TABLE geo.sm_atp_pass_profile_kpi;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_pass_profile_kpi; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_pass_profile_kpi (
    pass_profile_id integer NOT NULL,
    technology_type_id integer NOT NULL,
    kpi_name character varying(150),
    metric_type_id_for_value integer NOT NULL,
    kpi_col_name character varying(150),
    kpi_expression character varying(1000),
    pass_profile_kpi_id integer NOT NULL,
    kpi_pass_threshold_units character varying,
    kpi_pass_report_only character(1) DEFAULT 'N'::bpchar,
    kpi_pass_threshold_expression character varying(15),
    kpi_pass_threshold_exp character varying(2),
    kpi_pass_threshold_value real,
    metric_type_id_for_result integer NOT NULL,
    ws_default_status character(1) DEFAULT 'I'::bpchar NOT NULL,
    report_tag character varying(50),
    optional_filter1 character varying,
    optional_filter2 character varying,
    optional_filter3 character varying,
    distance_filter character varying(5),
    pn_offset_filter character varying(5),
    ec_filter character varying(5),
    ecio_filter character varying(5),
    user_exclusion_filter character varying(5),
    best_server_vector_filter character varying(5),
    inclusion_filter character varying(5),
    kpi_report_result character varying(5),
    kpi_expression_for_views character varying(1000),
    kpi_view_name character varying(50),
    kpi_metric_event_filter character(1)
);


--
-- Name: COLUMN sm_atp_pass_profile_kpi.kpi_metric_event_filter; Type: COMMENT; Schema: geo; Owner: -
--

COMMENT ON COLUMN sm_atp_pass_profile_kpi.kpi_metric_event_filter IS 'M-Metric, E-Event, B-Both';


--
-- Name: sm_atp_pass_profile_kpi_pass_profile_kpi_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE sm_atp_pass_profile_kpi_pass_profile_kpi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: sm_atp_pass_profile_kpi_pass_profile_kpi_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE sm_atp_pass_profile_kpi_pass_profile_kpi_id_seq OWNED BY sm_atp_pass_profile_kpi.pass_profile_kpi_id;


--
-- Name: pass_profile_kpi_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE sm_atp_pass_profile_kpi ALTER COLUMN pass_profile_kpi_id SET DEFAULT nextval('sm_atp_pass_profile_kpi_pass_profile_kpi_id_seq'::regclass);


--
-- Name: sm_atp_pass_profile_kpi_idx; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_pass_profile_kpi
    ADD CONSTRAINT sm_atp_pass_profile_kpi_idx PRIMARY KEY (pass_profile_kpi_id);


--
-- Name: sm_atp_pass_profile_kpi_pass_profile_id_key; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_pass_profile_kpi
    ADD CONSTRAINT sm_atp_pass_profile_kpi_pass_profile_id_key UNIQUE (pass_profile_id, technology_type_id, pass_profile_kpi_id);


--
-- Name: sm_atp_pass_profile_kpi_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_kpi
    ADD CONSTRAINT sm_atp_pass_profile_kpi_fk FOREIGN KEY (pass_profile_id) REFERENCES sm_atp_pass_profiles(pass_profile_id);


--
-- Name: sm_atp_pass_profile_kpi_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_kpi
    ADD CONSTRAINT sm_atp_pass_profile_kpi_fk1 FOREIGN KEY (metric_type_id_for_value) REFERENCES metric_types(metric_type_id);


--
-- Name: sm_atp_pass_profile_kpi_fk2; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_kpi
    ADD CONSTRAINT sm_atp_pass_profile_kpi_fk2 FOREIGN KEY (technology_type_id) REFERENCES technology_types(technology_type_id);


--
-- Name: sm_atp_pass_profile_kpi_fk3; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_kpi
    ADD CONSTRAINT sm_atp_pass_profile_kpi_fk3 FOREIGN KEY (metric_type_id_for_value) REFERENCES metric_types(metric_type_id);


--
-- Name: sm_atp_pass_profile_kpi_fk4; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_kpi
    ADD CONSTRAINT sm_atp_pass_profile_kpi_fk4 FOREIGN KEY (metric_type_id_for_result) REFERENCES metric_types(metric_type_id);


--
-- PostgreSQL database dump complete
--

