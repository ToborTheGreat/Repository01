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

ALTER TABLE ONLY sm_om.map_geometry_types DROP CONSTRAINT map_geometry_types_pkey;
ALTER TABLE sm_om.map_geometry_types ALTER COLUMN map_geometry_type_kid DROP DEFAULT;
DROP SEQUENCE sm_om.map_geometry_types_map_geometry_type_kid_seq;
DROP TABLE sm_om.map_geometry_types;
SET search_path = sm_om, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: map_geometry_types; Type: TABLE; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE map_geometry_types (
    map_geometry_type_kid integer NOT NULL,
    geometry_type_id integer,
    is_default boolean,
    map_catalog_id integer,
    thematic_type_id integer
);


--
-- Name: map_geometry_types_map_geometry_type_kid_seq; Type: SEQUENCE; Schema: sm_om; Owner: -
--

CREATE SEQUENCE map_geometry_types_map_geometry_type_kid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: map_geometry_types_map_geometry_type_kid_seq; Type: SEQUENCE OWNED BY; Schema: sm_om; Owner: -
--

ALTER SEQUENCE map_geometry_types_map_geometry_type_kid_seq OWNED BY map_geometry_types.map_geometry_type_kid;


--
-- Name: map_geometry_type_kid; Type: DEFAULT; Schema: sm_om; Owner: -
--

ALTER TABLE map_geometry_types ALTER COLUMN map_geometry_type_kid SET DEFAULT nextval('map_geometry_types_map_geometry_type_kid_seq'::regclass);


--
-- Name: map_geometry_types_pkey; Type: CONSTRAINT; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY map_geometry_types
    ADD CONSTRAINT map_geometry_types_pkey PRIMARY KEY (map_geometry_type_kid);


--
-- PostgreSQL database dump complete
--

