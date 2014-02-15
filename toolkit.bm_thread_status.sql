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

ALTER TABLE ONLY toolkit.bm_thread_status DROP CONSTRAINT bm_thread_status_pk;
ALTER TABLE toolkit.bm_thread_status ALTER COLUMN status_id DROP DEFAULT;
DROP SEQUENCE toolkit.bm_thread_status_status_id_seq;
DROP TABLE toolkit.bm_thread_status;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: bm_thread_status; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE bm_thread_status (
    status_id integer NOT NULL,
    thread_stream integer NOT NULL,
    thread_number integer NOT NULL,
    thread_state text
);


--
-- Name: bm_thread_status_status_id_seq; Type: SEQUENCE; Schema: toolkit; Owner: -
--

CREATE SEQUENCE bm_thread_status_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: bm_thread_status_status_id_seq; Type: SEQUENCE OWNED BY; Schema: toolkit; Owner: -
--

ALTER SEQUENCE bm_thread_status_status_id_seq OWNED BY bm_thread_status.status_id;


--
-- Name: status_id; Type: DEFAULT; Schema: toolkit; Owner: -
--

ALTER TABLE bm_thread_status ALTER COLUMN status_id SET DEFAULT nextval('bm_thread_status_status_id_seq'::regclass);


--
-- Name: bm_thread_status_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY bm_thread_status
    ADD CONSTRAINT bm_thread_status_pk PRIMARY KEY (thread_stream, thread_number);


--
-- PostgreSQL database dump complete
--

