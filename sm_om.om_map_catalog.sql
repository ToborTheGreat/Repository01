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

ALTER TABLE ONLY sm_om.om_map_catalog DROP CONSTRAINT om_map_catalog_pkey;
ALTER TABLE sm_om.om_map_catalog ALTER COLUMN om_map_catalog_id DROP DEFAULT;
DROP SEQUENCE sm_om.om_map_catalog_id_seq;
DROP TABLE sm_om.om_map_catalog;
SET search_path = sm_om, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: om_map_catalog; Type: TABLE; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE om_map_catalog (
    om_map_catalog_id bigint NOT NULL,
    name character varying(50),
    ext_ref character varying(50),
    thematic_type_id integer,
    geo_type character varying(20),
    level character varying(50),
    thematic_col_name character varying(50),
    color_mode character varying(20) DEFAULT 'STATIC'::character varying,
    function_name character varying(120),
    map_group character varying(20)
);


--
-- Name: om_map_catalog_id_seq; Type: SEQUENCE; Schema: sm_om; Owner: -
--

CREATE SEQUENCE om_map_catalog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: om_map_catalog_id_seq; Type: SEQUENCE OWNED BY; Schema: sm_om; Owner: -
--

ALTER SEQUENCE om_map_catalog_id_seq OWNED BY om_map_catalog.om_map_catalog_id;


--
-- Name: om_map_catalog_id; Type: DEFAULT; Schema: sm_om; Owner: -
--

ALTER TABLE om_map_catalog ALTER COLUMN om_map_catalog_id SET DEFAULT nextval('om_map_catalog_id_seq'::regclass);


--
-- Name: om_map_catalog_pkey; Type: CONSTRAINT; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY om_map_catalog
    ADD CONSTRAINT om_map_catalog_pkey PRIMARY KEY (om_map_catalog_id);


--
-- PostgreSQL database dump complete
--

