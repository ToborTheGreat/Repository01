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

ALTER TABLE ONLY public.z_sm_atp_workflow_dt_tables DROP CONSTRAINT sm_atp_workflow_dt_tables_fk;
ALTER TABLE ONLY public.z_sm_atp_workflow_dt_tables DROP CONSTRAINT sm_atp_workflow_dt_tables_workflow_id_key;
ALTER TABLE ONLY public.z_sm_atp_workflow_dt_tables DROP CONSTRAINT sm_atp_workflow_dt_tables_pkey;
ALTER TABLE public.z_sm_atp_workflow_dt_tables ALTER COLUMN workflow_dt_table_id DROP DEFAULT;
DROP SEQUENCE public.z_sm_atp_workflow_dt_tables_workflow_dt_table_id_seq;
DROP TABLE public.z_sm_atp_workflow_dt_tables;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_workflow_dt_tables; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_workflow_dt_tables (
    workflow_dt_table_id integer NOT NULL,
    workflow_run_id integer NOT NULL,
    schema_name character varying(75) NOT NULL,
    table_name character varying(75) NOT NULL,
    user_map_id integer
);


--
-- Name: z_sm_atp_workflow_dt_tables_workflow_dt_table_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_sm_atp_workflow_dt_tables_workflow_dt_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_sm_atp_workflow_dt_tables_workflow_dt_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_sm_atp_workflow_dt_tables_workflow_dt_table_id_seq OWNED BY z_sm_atp_workflow_dt_tables.workflow_dt_table_id;


--
-- Name: workflow_dt_table_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_sm_atp_workflow_dt_tables ALTER COLUMN workflow_dt_table_id SET DEFAULT nextval('z_sm_atp_workflow_dt_tables_workflow_dt_table_id_seq'::regclass);


--
-- Name: sm_atp_workflow_dt_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_workflow_dt_tables
    ADD CONSTRAINT sm_atp_workflow_dt_tables_pkey PRIMARY KEY (workflow_dt_table_id);


--
-- Name: sm_atp_workflow_dt_tables_workflow_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_workflow_dt_tables
    ADD CONSTRAINT sm_atp_workflow_dt_tables_workflow_id_key UNIQUE (workflow_run_id);


--
-- Name: sm_atp_workflow_dt_tables_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_workflow_dt_tables
    ADD CONSTRAINT sm_atp_workflow_dt_tables_fk FOREIGN KEY (workflow_run_id) REFERENCES z_sm_atp_workflow_runs(workflow_run_id);


--
-- PostgreSQL database dump complete
--

