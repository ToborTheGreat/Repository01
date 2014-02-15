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

ALTER TABLE ONLY geo.user_map_bookmarks DROP CONSTRAINT user_map_bookmarks_pkey;
ALTER TABLE geo.user_map_bookmarks ALTER COLUMN user_map_bookmark_id DROP DEFAULT;
DROP SEQUENCE geo.user_map_bookmarks_user_map_bookmark_id_seq;
DROP TABLE geo.user_map_bookmarks;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: user_map_bookmarks; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE user_map_bookmarks (
    user_map_bookmark_id integer NOT NULL,
    user_id integer NOT NULL,
    description character varying,
    url character varying NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


--
-- Name: user_map_bookmarks_user_map_bookmark_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE user_map_bookmarks_user_map_bookmark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: user_map_bookmarks_user_map_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE user_map_bookmarks_user_map_bookmark_id_seq OWNED BY user_map_bookmarks.user_map_bookmark_id;


--
-- Name: user_map_bookmark_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE user_map_bookmarks ALTER COLUMN user_map_bookmark_id SET DEFAULT nextval('user_map_bookmarks_user_map_bookmark_id_seq'::regclass);


--
-- Name: user_map_bookmarks_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY user_map_bookmarks
    ADD CONSTRAINT user_map_bookmarks_pkey PRIMARY KEY (user_map_bookmark_id);


--
-- PostgreSQL database dump complete
--

