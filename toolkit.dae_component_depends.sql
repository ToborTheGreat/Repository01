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

ALTER TABLE ONLY toolkit.dae_component_depends DROP CONSTRAINT dae_component_depends_u1;
ALTER TABLE toolkit.dae_component_depends ALTER COLUMN depend_id DROP DEFAULT;
DROP SEQUENCE toolkit.dae_component_depends_depend_id_seq;
DROP TABLE toolkit.dae_component_depends;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: dae_component_depends; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE dae_component_depends (
    depend_id integer NOT NULL,
    sql_id integer NOT NULL,
    dep_sql_id integer NOT NULL
);


--
-- Name: TABLE dae_component_depends; Type: COMMENT; Schema: toolkit; Owner: -
--

COMMENT ON TABLE dae_component_depends IS 'dependency list of objects for a given sql id';


--
-- Name: dae_component_depends_depend_id_seq; Type: SEQUENCE; Schema: toolkit; Owner: -
--

CREATE SEQUENCE dae_component_depends_depend_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: dae_component_depends_depend_id_seq; Type: SEQUENCE OWNED BY; Schema: toolkit; Owner: -
--

ALTER SEQUENCE dae_component_depends_depend_id_seq OWNED BY dae_component_depends.depend_id;


--
-- Name: depend_id; Type: DEFAULT; Schema: toolkit; Owner: -
--

ALTER TABLE dae_component_depends ALTER COLUMN depend_id SET DEFAULT nextval('dae_component_depends_depend_id_seq'::regclass);


--
-- Name: dae_component_depends_u1; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY dae_component_depends
    ADD CONSTRAINT dae_component_depends_u1 PRIMARY KEY (sql_id, dep_sql_id);


--
-- PostgreSQL database dump complete
--

