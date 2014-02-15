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

ALTER TABLE ONLY sm_om.thematic_ranges DROP CONSTRAINT user_map_ranges_pkey;
ALTER TABLE sm_om.thematic_ranges ALTER COLUMN thematic_range_id DROP DEFAULT;
DROP SEQUENCE sm_om.user_map_ranges_user_map_range_id_seq;
DROP TABLE sm_om.thematic_ranges;
SET search_path = sm_om, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: thematic_ranges; Type: TABLE; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE thematic_ranges (
    thematic_range_id bigint NOT NULL,
    thematic_type_id integer NOT NULL,
    min_val numeric,
    max_val numeric,
    color character varying,
    size character varying,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    ind_val character varying,
    boundary_color character varying(10)
);


--
-- Name: user_map_ranges_user_map_range_id_seq; Type: SEQUENCE; Schema: sm_om; Owner: -
--

CREATE SEQUENCE user_map_ranges_user_map_range_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: user_map_ranges_user_map_range_id_seq; Type: SEQUENCE OWNED BY; Schema: sm_om; Owner: -
--

ALTER SEQUENCE user_map_ranges_user_map_range_id_seq OWNED BY thematic_ranges.thematic_range_id;


--
-- Name: thematic_range_id; Type: DEFAULT; Schema: sm_om; Owner: -
--

ALTER TABLE thematic_ranges ALTER COLUMN thematic_range_id SET DEFAULT nextval('user_map_ranges_user_map_range_id_seq'::regclass);


--
-- Name: user_map_ranges_pkey; Type: CONSTRAINT; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY thematic_ranges
    ADD CONSTRAINT user_map_ranges_pkey PRIMARY KEY (thematic_range_id);


--
-- PostgreSQL database dump complete
--

