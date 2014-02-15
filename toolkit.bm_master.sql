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

ALTER TABLE toolkit.bm_master ALTER COLUMN bm_id DROP DEFAULT;
DROP SEQUENCE toolkit.bm_master_bm_id_seq;
DROP TABLE toolkit.bm_master;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: bm_master; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE bm_master (
    bm_id integer NOT NULL,
    schema_name text NOT NULL,
    table_name text NOT NULL,
    bk_stream integer,
    bk_on boolean DEFAULT true,
    bk_until date,
    bk_location text,
    bk_status text,
    bk_last date,
    bk_level integer,
    bk_work_state character varying(16),
    bk_thread integer,
    bk_restore_state character varying(16),
    bk_restore_last date,
    bk_restore_thread integer
);


--
-- Name: bm_master_bm_id_seq; Type: SEQUENCE; Schema: toolkit; Owner: -
--

CREATE SEQUENCE bm_master_bm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: bm_master_bm_id_seq; Type: SEQUENCE OWNED BY; Schema: toolkit; Owner: -
--

ALTER SEQUENCE bm_master_bm_id_seq OWNED BY bm_master.bm_id;


--
-- Name: bm_id; Type: DEFAULT; Schema: toolkit; Owner: -
--

ALTER TABLE bm_master ALTER COLUMN bm_id SET DEFAULT nextval('bm_master_bm_id_seq'::regclass);


--
-- PostgreSQL database dump complete
--

