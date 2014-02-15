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

DROP INDEX geo.sm_atp_workflow_run_log_ix;
ALTER TABLE ONLY geo.sm_atp_workflow_run_log DROP CONSTRAINT sm_atp_workflow_run_log_pkey;
ALTER TABLE geo.sm_atp_workflow_run_log ALTER COLUMN log_id DROP DEFAULT;
DROP SEQUENCE geo.sm_atp_workflow_run_log_log_id_seq;
DROP TABLE geo.sm_atp_workflow_run_log;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_workflow_run_log; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_workflow_run_log (
    log_id integer NOT NULL,
    workflow_run_id integer NOT NULL,
    message character varying(1000) NOT NULL,
    created timestamp(0) with time zone NOT NULL,
    workflow_sequence integer NOT NULL
);


--
-- Name: sm_atp_workflow_run_log_log_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE sm_atp_workflow_run_log_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: sm_atp_workflow_run_log_log_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE sm_atp_workflow_run_log_log_id_seq OWNED BY sm_atp_workflow_run_log.log_id;


--
-- Name: log_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE sm_atp_workflow_run_log ALTER COLUMN log_id SET DEFAULT nextval('sm_atp_workflow_run_log_log_id_seq'::regclass);


--
-- Name: sm_atp_workflow_run_log_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_workflow_run_log
    ADD CONSTRAINT sm_atp_workflow_run_log_pkey PRIMARY KEY (log_id);


--
-- Name: sm_atp_workflow_run_log_ix; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX sm_atp_workflow_run_log_ix ON sm_atp_workflow_run_log USING btree (workflow_run_id);


--
-- PostgreSQL database dump complete
--

