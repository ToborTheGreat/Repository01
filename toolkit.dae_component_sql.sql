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

ALTER TABLE ONLY toolkit.dae_component_sql DROP CONSTRAINT dae_component_sql_u2;
ALTER TABLE ONLY toolkit.dae_component_sql DROP CONSTRAINT dae_component_sql_u1;
ALTER TABLE ONLY toolkit.dae_component_sql DROP CONSTRAINT dae_component_sql_pk;
ALTER TABLE toolkit.dae_component_sql ALTER COLUMN sql_id DROP DEFAULT;
DROP SEQUENCE toolkit.dae_component_sql_sql_id_seq;
DROP TABLE toolkit.dae_component_sql;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: dae_component_sql; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE dae_component_sql (
    sql_id integer NOT NULL,
    sql_synonym character varying(64),
    sql_text text,
    process_type character varying(32),
    sql_hash text
);


--
-- Name: TABLE dae_component_sql; Type: COMMENT; Schema: toolkit; Owner: -
--

COMMENT ON TABLE dae_component_sql IS 'reusable inventory of sql used to assemble data for an aggregate';


--
-- Name: dae_component_sql_sql_id_seq; Type: SEQUENCE; Schema: toolkit; Owner: -
--

CREATE SEQUENCE dae_component_sql_sql_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: dae_component_sql_sql_id_seq; Type: SEQUENCE OWNED BY; Schema: toolkit; Owner: -
--

ALTER SEQUENCE dae_component_sql_sql_id_seq OWNED BY dae_component_sql.sql_id;


--
-- Name: sql_id; Type: DEFAULT; Schema: toolkit; Owner: -
--

ALTER TABLE dae_component_sql ALTER COLUMN sql_id SET DEFAULT nextval('dae_component_sql_sql_id_seq'::regclass);


--
-- Name: dae_component_sql_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY dae_component_sql
    ADD CONSTRAINT dae_component_sql_pk PRIMARY KEY (sql_id);


--
-- Name: dae_component_sql_u1; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY dae_component_sql
    ADD CONSTRAINT dae_component_sql_u1 UNIQUE (sql_synonym);


--
-- Name: dae_component_sql_u2; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY dae_component_sql
    ADD CONSTRAINT dae_component_sql_u2 UNIQUE (sql_hash);


--
-- PostgreSQL database dump complete
--

