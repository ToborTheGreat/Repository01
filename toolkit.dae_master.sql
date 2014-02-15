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

ALTER TABLE ONLY toolkit.dae_master DROP CONSTRAINT dae_master_pk;
ALTER TABLE toolkit.dae_master ALTER COLUMN dae_id DROP DEFAULT;
DROP SEQUENCE toolkit.dae_master_dae_id_seq;
DROP TABLE toolkit.dae_master;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: dae_master; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE dae_master (
    dae_id integer NOT NULL,
    dae_name character varying(128),
    dae_schema character varying(32)
);


--
-- Name: TABLE dae_master; Type: COMMENT; Schema: toolkit; Owner: -
--

COMMENT ON TABLE dae_master IS 'top level inventory of aggregates using this technique';


--
-- Name: dae_master_dae_id_seq; Type: SEQUENCE; Schema: toolkit; Owner: -
--

CREATE SEQUENCE dae_master_dae_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: dae_master_dae_id_seq; Type: SEQUENCE OWNED BY; Schema: toolkit; Owner: -
--

ALTER SEQUENCE dae_master_dae_id_seq OWNED BY dae_master.dae_id;


--
-- Name: dae_id; Type: DEFAULT; Schema: toolkit; Owner: -
--

ALTER TABLE dae_master ALTER COLUMN dae_id SET DEFAULT nextval('dae_master_dae_id_seq'::regclass);


--
-- Name: dae_master_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY dae_master
    ADD CONSTRAINT dae_master_pk PRIMARY KEY (dae_id);


--
-- PostgreSQL database dump complete
--

