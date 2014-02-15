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

ALTER TABLE ONLY toolkit.bm_threads DROP CONSTRAINT bm_threads_pk;
ALTER TABLE toolkit.bm_threads ALTER COLUMN stream_thread_id DROP DEFAULT;
DROP SEQUENCE toolkit.bm_threads_stream_thread_id_seq;
DROP TABLE toolkit.bm_threads;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: bm_threads; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE bm_threads (
    stream_thread_id integer NOT NULL,
    stream_number integer NOT NULL,
    thread_count integer,
    thread_state text
);


--
-- Name: bm_threads_stream_thread_id_seq; Type: SEQUENCE; Schema: toolkit; Owner: -
--

CREATE SEQUENCE bm_threads_stream_thread_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: bm_threads_stream_thread_id_seq; Type: SEQUENCE OWNED BY; Schema: toolkit; Owner: -
--

ALTER SEQUENCE bm_threads_stream_thread_id_seq OWNED BY bm_threads.stream_thread_id;


--
-- Name: stream_thread_id; Type: DEFAULT; Schema: toolkit; Owner: -
--

ALTER TABLE bm_threads ALTER COLUMN stream_thread_id SET DEFAULT nextval('bm_threads_stream_thread_id_seq'::regclass);


--
-- Name: bm_threads_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY bm_threads
    ADD CONSTRAINT bm_threads_pk PRIMARY KEY (stream_number);


--
-- PostgreSQL database dump complete
--

