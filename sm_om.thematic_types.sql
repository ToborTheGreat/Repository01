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

ALTER TABLE ONLY sm_om.thematic_types DROP CONSTRAINT metric_types_pkey;
ALTER TABLE sm_om.thematic_types ALTER COLUMN thematic_type_id DROP DEFAULT;
DROP SEQUENCE sm_om.metric_types_metric_type_id_seq;
DROP TABLE sm_om.thematic_types;
SET search_path = sm_om, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: thematic_types; Type: TABLE; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE thematic_types (
    thematic_type_id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone,
    thematic_class character varying(3)
);


--
-- Name: metric_types_metric_type_id_seq; Type: SEQUENCE; Schema: sm_om; Owner: -
--

CREATE SEQUENCE metric_types_metric_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: metric_types_metric_type_id_seq; Type: SEQUENCE OWNED BY; Schema: sm_om; Owner: -
--

ALTER SEQUENCE metric_types_metric_type_id_seq OWNED BY thematic_types.thematic_type_id;


--
-- Name: thematic_type_id; Type: DEFAULT; Schema: sm_om; Owner: -
--

ALTER TABLE thematic_types ALTER COLUMN thematic_type_id SET DEFAULT nextval('metric_types_metric_type_id_seq'::regclass);


--
-- Name: metric_types_pkey; Type: CONSTRAINT; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY thematic_types
    ADD CONSTRAINT metric_types_pkey PRIMARY KEY (thematic_type_id);


--
-- PostgreSQL database dump complete
--

