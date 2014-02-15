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

ALTER TABLE ONLY geo.sm_atp_excel_reports DROP CONSTRAINT sm_atp_excel_reports_fk;
ALTER TABLE ONLY geo.sm_atp_excel_reports DROP CONSTRAINT sm_atp_excel_reports_pkey;
ALTER TABLE geo.sm_atp_excel_reports ALTER COLUMN report_id DROP DEFAULT;
DROP SEQUENCE geo.sm_atp_excel_reports_report_id_seq;
DROP TABLE geo.sm_atp_excel_reports;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_excel_reports; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_excel_reports (
    report_id integer NOT NULL,
    description character varying(150),
    technology_type_id integer,
    created timestamp(0) with time zone,
    modified timestamp(0) with time zone,
    uploaded_by character varying(150),
    orig_name character varying(150)
);


--
-- Name: sm_atp_excel_reports_report_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE sm_atp_excel_reports_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: sm_atp_excel_reports_report_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE sm_atp_excel_reports_report_id_seq OWNED BY sm_atp_excel_reports.report_id;


--
-- Name: report_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE sm_atp_excel_reports ALTER COLUMN report_id SET DEFAULT nextval('sm_atp_excel_reports_report_id_seq'::regclass);


--
-- Name: sm_atp_excel_reports_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_excel_reports
    ADD CONSTRAINT sm_atp_excel_reports_pkey PRIMARY KEY (report_id);


--
-- Name: sm_atp_excel_reports_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_excel_reports
    ADD CONSTRAINT sm_atp_excel_reports_fk FOREIGN KEY (technology_type_id) REFERENCES technology_types(technology_type_id);


--
-- PostgreSQL database dump complete
--

