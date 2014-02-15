--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

ALTER TABLE public.z_user_map_icons ALTER COLUMN user_map_icon_id DROP DEFAULT;
DROP SEQUENCE public.z_user_map_icons_user_map_icon_id_seq;
DROP TABLE public.z_user_map_icons;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_user_map_icons; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_user_map_icons (
    user_map_icon_id bigint NOT NULL,
    name character varying NOT NULL,
    path character varying NOT NULL,
    active boolean DEFAULT true NOT NULL
);


--
-- Name: z_user_map_icons_user_map_icon_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_user_map_icons_user_map_icon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_user_map_icons_user_map_icon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_user_map_icons_user_map_icon_id_seq OWNED BY z_user_map_icons.user_map_icon_id;


--
-- Name: user_map_icon_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_user_map_icons ALTER COLUMN user_map_icon_id SET DEFAULT nextval('z_user_map_icons_user_map_icon_id_seq'::regclass);


--
-- PostgreSQL database dump complete
--

