--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = geo, pg_catalog;

ALTER TABLE ONLY geo.metric_types DROP CONSTRAINT metric_types_fk;
ALTER TABLE ONLY geo.metric_types DROP CONSTRAINT metric_class_fk;
ALTER TABLE ONLY geo.metric_types DROP CONSTRAINT metric_types_pkey;
ALTER TABLE ONLY geo.metric_types DROP CONSTRAINT metric_types_ext_ref_key;
ALTER TABLE geo.metric_types ALTER COLUMN metric_type_id DROP DEFAULT;
DROP SEQUENCE geo.metric_types_metric_type_id_seq;
DROP TABLE geo.metric_types;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: metric_types; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE metric_types (
    metric_type_id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    ext_ref character varying NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone,
    user_map_category_id integer,
    metric_class_id integer NOT NULL,
    display character(1)
);


--
-- Name: metric_types_metric_type_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE metric_types_metric_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: metric_types_metric_type_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE metric_types_metric_type_id_seq OWNED BY metric_types.metric_type_id;


--
-- Name: metric_type_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE metric_types ALTER COLUMN metric_type_id SET DEFAULT nextval('metric_types_metric_type_id_seq'::regclass);


--
-- Name: metric_types_ext_ref_key; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY metric_types
    ADD CONSTRAINT metric_types_ext_ref_key UNIQUE (ext_ref);


--
-- Name: metric_types_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY metric_types
    ADD CONSTRAINT metric_types_pkey PRIMARY KEY (metric_type_id);


--
-- Name: metric_class_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY metric_types
    ADD CONSTRAINT metric_class_fk FOREIGN KEY (metric_class_id) REFERENCES metric_classes(metric_class_id);


--
-- Name: metric_types_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY metric_types
    ADD CONSTRAINT metric_types_fk FOREIGN KEY (user_map_category_id) REFERENCES user_map_categories(user_map_category_id);


--
-- PostgreSQL database dump complete
--

