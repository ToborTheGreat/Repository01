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

DROP TABLE public.z_user_maps_sql;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_user_maps_sql; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_user_maps_sql (
    user_map_id integer NOT NULL,
    sql_text character varying(5000) NOT NULL
);


--
-- PostgreSQL database dump complete
--

