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

ALTER TABLE ONLY geo.user_map_categories DROP CONSTRAINT user_map_categories_pkey;
ALTER TABLE ONLY geo.user_map_categories DROP CONSTRAINT user_map_categories_ext_ref_key;
ALTER TABLE geo.user_map_categories ALTER COLUMN user_map_category_id DROP DEFAULT;
DROP SEQUENCE geo.user_map_categories_user_map_category_id_seq;
DROP TABLE geo.user_map_categories;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: user_map_categories; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE user_map_categories (
    user_map_category_id bigint NOT NULL,
    description character varying NOT NULL,
    ext_ref character varying NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    display_order integer NOT NULL,
    hasmetrics boolean DEFAULT false NOT NULL,
    short_name character varying(5)
);


--
-- Name: user_map_categories_user_map_category_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE user_map_categories_user_map_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: user_map_categories_user_map_category_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE user_map_categories_user_map_category_id_seq OWNED BY user_map_categories.user_map_category_id;


--
-- Name: user_map_category_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE user_map_categories ALTER COLUMN user_map_category_id SET DEFAULT nextval('user_map_categories_user_map_category_id_seq'::regclass);


--
-- Name: user_map_categories_ext_ref_key; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY user_map_categories
    ADD CONSTRAINT user_map_categories_ext_ref_key UNIQUE (ext_ref);


--
-- Name: user_map_categories_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY user_map_categories
    ADD CONSTRAINT user_map_categories_pkey PRIMARY KEY (user_map_category_id);


--
-- PostgreSQL database dump complete
--

