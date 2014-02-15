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

ALTER TABLE ONLY sm_om.param_options DROP CONSTRAINT param_options_pkey;
ALTER TABLE sm_om.param_options ALTER COLUMN param_id DROP DEFAULT;
DROP SEQUENCE sm_om.param_options_param_id_seq;
DROP TABLE sm_om.param_options;
SET search_path = sm_om, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: param_options; Type: TABLE; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE param_options (
    param_id bigint NOT NULL,
    name character varying,
    param_order integer,
    param_view_type character varying(20),
    sm_om_column character varying,
    sm_om_table character varying(128),
    is_metric_col boolean,
    f_reqd boolean,
    description character varying(50),
    description_col character varying(50)
);


--
-- Name: param_options_param_id_seq; Type: SEQUENCE; Schema: sm_om; Owner: -
--

CREATE SEQUENCE param_options_param_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: param_options_param_id_seq; Type: SEQUENCE OWNED BY; Schema: sm_om; Owner: -
--

ALTER SEQUENCE param_options_param_id_seq OWNED BY param_options.param_id;


--
-- Name: param_id; Type: DEFAULT; Schema: sm_om; Owner: -
--

ALTER TABLE param_options ALTER COLUMN param_id SET DEFAULT nextval('param_options_param_id_seq'::regclass);


--
-- Name: param_options_pkey; Type: CONSTRAINT; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY param_options
    ADD CONSTRAINT param_options_pkey PRIMARY KEY (param_id);


--
-- PostgreSQL database dump complete
--

