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

DROP TABLE public.temp_events;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: temp_events; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE temp_events (
    event_id integer,
    user_id integer,
    start_date date,
    end_date date,
    market character varying(50),
    event_level_id integer,
    event_element_id integer,
    event_type_id integer,
    event_info character varying(1000)
);


--
-- PostgreSQL database dump complete
--

