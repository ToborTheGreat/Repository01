--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = sm_om, pg_catalog;

ALTER TABLE ONLY sm_om.geometry_types DROP CONSTRAINT geometry_types_pkey;
ALTER TABLE sm_om.geometry_types ALTER COLUMN geometry_type_id DROP DEFAULT;
DROP SEQUENCE sm_om.geometry_types_geometry_type_id_seq;
DROP TABLE sm_om.geometry_types;
SET search_path = sm_om, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: geometry_types; Type: TABLE; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE geometry_types (
    geometry_type_id integer NOT NULL,
    ext_ref character varying(20),
    description character varying(50),
    short_desc character varying(3)
);


--
-- Name: geometry_types_geometry_type_id_seq; Type: SEQUENCE; Schema: sm_om; Owner: -
--

CREATE SEQUENCE geometry_types_geometry_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: geometry_types_geometry_type_id_seq; Type: SEQUENCE OWNED BY; Schema: sm_om; Owner: -
--

ALTER SEQUENCE geometry_types_geometry_type_id_seq OWNED BY geometry_types.geometry_type_id;


--
-- Name: geometry_type_id; Type: DEFAULT; Schema: sm_om; Owner: -
--

ALTER TABLE geometry_types ALTER COLUMN geometry_type_id SET DEFAULT nextval('geometry_types_geometry_type_id_seq'::regclass);


--
-- Name: geometry_types_pkey; Type: CONSTRAINT; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY geometry_types
    ADD CONSTRAINT geometry_types_pkey PRIMARY KEY (geometry_type_id);


--
-- PostgreSQL database dump complete
--

