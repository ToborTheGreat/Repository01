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

ALTER TABLE ONLY toolkit.dae_components DROP CONSTRAINT dae_components_u1;
ALTER TABLE toolkit.dae_components ALTER COLUMN comp_id DROP DEFAULT;
DROP SEQUENCE toolkit.dae_components_comp_id_seq;
DROP TABLE toolkit.dae_components;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: dae_components; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE dae_components (
    comp_id integer NOT NULL,
    dae_id integer NOT NULL,
    sql_id integer NOT NULL,
    build_seq integer
);


--
-- Name: TABLE dae_components; Type: COMMENT; Schema: toolkit; Owner: -
--

COMMENT ON TABLE dae_components IS 'inventory of sql needed by an aggregate';


--
-- Name: dae_components_comp_id_seq; Type: SEQUENCE; Schema: toolkit; Owner: -
--

CREATE SEQUENCE dae_components_comp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: dae_components_comp_id_seq; Type: SEQUENCE OWNED BY; Schema: toolkit; Owner: -
--

ALTER SEQUENCE dae_components_comp_id_seq OWNED BY dae_components.comp_id;


--
-- Name: comp_id; Type: DEFAULT; Schema: toolkit; Owner: -
--

ALTER TABLE dae_components ALTER COLUMN comp_id SET DEFAULT nextval('dae_components_comp_id_seq'::regclass);


--
-- Name: dae_components_u1; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY dae_components
    ADD CONSTRAINT dae_components_u1 PRIMARY KEY (dae_id, sql_id);


--
-- PostgreSQL database dump complete
--

