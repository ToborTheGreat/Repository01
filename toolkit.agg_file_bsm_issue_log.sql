--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = toolkit, pg_catalog;

ALTER TABLE ONLY toolkit.agg_file_bsm_issue_log DROP CONSTRAINT issue_id_pkey;
ALTER TABLE toolkit.agg_file_bsm_issue_log ALTER COLUMN issue_id DROP DEFAULT;
DROP SEQUENCE toolkit.agg_file_bsm_issue_log_issue_id_seq;
DROP TABLE toolkit.agg_file_bsm_issue_log;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: agg_file_bsm_issue_log; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE agg_file_bsm_issue_log (
    issue_id integer NOT NULL,
    item_date date NOT NULL,
    agg_file_issue_type_id integer NOT NULL,
    bsm_name character varying(30) NOT NULL,
    captured_date timestamp without time zone DEFAULT now() NOT NULL,
    comments character varying(100)
);


--
-- Name: agg_file_bsm_issue_log_issue_id_seq; Type: SEQUENCE; Schema: toolkit; Owner: -
--

CREATE SEQUENCE agg_file_bsm_issue_log_issue_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: agg_file_bsm_issue_log_issue_id_seq; Type: SEQUENCE OWNED BY; Schema: toolkit; Owner: -
--

ALTER SEQUENCE agg_file_bsm_issue_log_issue_id_seq OWNED BY agg_file_bsm_issue_log.issue_id;


--
-- Name: issue_id; Type: DEFAULT; Schema: toolkit; Owner: -
--

ALTER TABLE agg_file_bsm_issue_log ALTER COLUMN issue_id SET DEFAULT nextval('agg_file_bsm_issue_log_issue_id_seq'::regclass);


--
-- Name: issue_id_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY agg_file_bsm_issue_log
    ADD CONSTRAINT issue_id_pkey PRIMARY KEY (issue_id);


--
-- PostgreSQL database dump complete
--

