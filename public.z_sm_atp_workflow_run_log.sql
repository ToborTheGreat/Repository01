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

ALTER TABLE ONLY public.z_sm_atp_workflow_run_log DROP CONSTRAINT sm_atp_workflow_run_log_pkey;
ALTER TABLE public.z_sm_atp_workflow_run_log ALTER COLUMN log_id DROP DEFAULT;
DROP SEQUENCE public.z_sm_atp_workflow_run_log_log_id_seq;
DROP TABLE public.z_sm_atp_workflow_run_log;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_workflow_run_log; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_workflow_run_log (
    log_id integer NOT NULL,
    workflow_run_id integer NOT NULL,
    message character varying(1000) NOT NULL,
    created timestamp(0) with time zone NOT NULL,
    workflow_sequence integer NOT NULL
);


--
-- Name: z_sm_atp_workflow_run_log_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_sm_atp_workflow_run_log_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_sm_atp_workflow_run_log_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_sm_atp_workflow_run_log_log_id_seq OWNED BY z_sm_atp_workflow_run_log.log_id;


--
-- Name: log_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_sm_atp_workflow_run_log ALTER COLUMN log_id SET DEFAULT nextval('z_sm_atp_workflow_run_log_log_id_seq'::regclass);


--
-- Name: sm_atp_workflow_run_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_workflow_run_log
    ADD CONSTRAINT sm_atp_workflow_run_log_pkey PRIMARY KEY (log_id);


--
-- PostgreSQL database dump complete
--

