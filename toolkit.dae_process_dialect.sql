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

ALTER TABLE ONLY toolkit.dae_process_dialect DROP CONSTRAINT dae_process_dialect_pk1;
ALTER TABLE toolkit.dae_process_dialect ALTER COLUMN dialect_id DROP DEFAULT;
DROP SEQUENCE toolkit.dae_process_dialect_dialect_id_seq;
DROP TABLE toolkit.dae_process_dialect;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: dae_process_dialect; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE dae_process_dialect (
    dialect_id integer NOT NULL,
    process_type character varying(32) NOT NULL,
    dialect text,
    p_operation character varying(16) NOT NULL
);


--
-- Name: TABLE dae_process_dialect; Type: COMMENT; Schema: toolkit; Owner: -
--

COMMENT ON TABLE dae_process_dialect IS 'language dialect for sql calls based on process type';


--
-- Name: dae_process_dialect_dialect_id_seq; Type: SEQUENCE; Schema: toolkit; Owner: -
--

CREATE SEQUENCE dae_process_dialect_dialect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: dae_process_dialect_dialect_id_seq; Type: SEQUENCE OWNED BY; Schema: toolkit; Owner: -
--

ALTER SEQUENCE dae_process_dialect_dialect_id_seq OWNED BY dae_process_dialect.dialect_id;


--
-- Name: dialect_id; Type: DEFAULT; Schema: toolkit; Owner: -
--

ALTER TABLE dae_process_dialect ALTER COLUMN dialect_id SET DEFAULT nextval('dae_process_dialect_dialect_id_seq'::regclass);


--
-- Name: dae_process_dialect_pk1; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY dae_process_dialect
    ADD CONSTRAINT dae_process_dialect_pk1 PRIMARY KEY (process_type, p_operation);


--
-- PostgreSQL database dump complete
--

