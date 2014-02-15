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

DROP TABLE public.temp_voice;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: temp_voice; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE temp_voice (
    schema_name character varying(50),
    months_to_keep smallint,
    archive_or_drop character varying(10),
    hourly_tables boolean,
    daily_tables boolean
);


--
-- PostgreSQL database dump complete
--

