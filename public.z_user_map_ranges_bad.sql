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

ALTER TABLE ONLY public.z_user_map_ranges_bad DROP CONSTRAINT user_map_ranges_fk;
ALTER TABLE ONLY public.z_user_map_ranges_bad DROP CONSTRAINT user_map_ranges_pkey;
ALTER TABLE public.z_user_map_ranges_bad ALTER COLUMN user_map_range_id DROP DEFAULT;
DROP SEQUENCE public.z_user_map_ranges_user_map_id_seq;
DROP TABLE public.z_user_map_ranges_bad;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_user_map_ranges_bad; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_user_map_ranges_bad (
    user_map_range_id integer NOT NULL,
    metric_type_id integer NOT NULL,
    min_val numeric,
    max_val numeric,
    color character varying NOT NULL,
    size character varying,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    ind_val character varying
);


--
-- Name: z_user_map_ranges_user_map_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_user_map_ranges_user_map_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_user_map_ranges_user_map_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_user_map_ranges_user_map_id_seq OWNED BY z_user_map_ranges_bad.user_map_range_id;


--
-- Name: user_map_range_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_user_map_ranges_bad ALTER COLUMN user_map_range_id SET DEFAULT nextval('z_user_map_ranges_user_map_id_seq'::regclass);


--
-- Name: user_map_ranges_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_user_map_ranges_bad
    ADD CONSTRAINT user_map_ranges_pkey PRIMARY KEY (user_map_range_id);


--
-- Name: user_map_ranges_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_user_map_ranges_bad
    ADD CONSTRAINT user_map_ranges_fk FOREIGN KEY (metric_type_id) REFERENCES z_metric_types(metric_type_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

