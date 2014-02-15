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

ALTER TABLE ONLY toolkit.bm_default_streams DROP CONSTRAINT bm_default_streams_pk;
ALTER TABLE toolkit.bm_default_streams ALTER COLUMN stream_id DROP DEFAULT;
DROP SEQUENCE toolkit.bm_default_streams_stream_id_seq;
DROP TABLE toolkit.bm_default_streams;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: bm_default_streams; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE bm_default_streams (
    stream_id integer NOT NULL,
    bk_stream integer NOT NULL,
    bk_schema character varying(32) NOT NULL,
    bk_default_location text,
    bk_default_level integer
);


--
-- Name: bm_default_streams_stream_id_seq; Type: SEQUENCE; Schema: toolkit; Owner: -
--

CREATE SEQUENCE bm_default_streams_stream_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: bm_default_streams_stream_id_seq; Type: SEQUENCE OWNED BY; Schema: toolkit; Owner: -
--

ALTER SEQUENCE bm_default_streams_stream_id_seq OWNED BY bm_default_streams.stream_id;


--
-- Name: stream_id; Type: DEFAULT; Schema: toolkit; Owner: -
--

ALTER TABLE bm_default_streams ALTER COLUMN stream_id SET DEFAULT nextval('bm_default_streams_stream_id_seq'::regclass);


--
-- Name: bm_default_streams_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY bm_default_streams
    ADD CONSTRAINT bm_default_streams_pk PRIMARY KEY (bk_stream, bk_schema);


--
-- PostgreSQL database dump complete
--

