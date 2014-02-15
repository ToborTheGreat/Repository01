--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = toolkit, pg_catalog;

ALTER TABLE ONLY toolkit.calendar_event_levels DROP CONSTRAINT pk_calendar_event_levels;
DROP TABLE toolkit.calendar_event_levels;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: calendar_event_levels; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE calendar_event_levels (
    event_level_id integer DEFAULT nextval('calendar_level_seq'::regclass) NOT NULL,
    event_level_name character varying(100)
);


--
-- Name: pk_calendar_event_levels; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY calendar_event_levels
    ADD CONSTRAINT pk_calendar_event_levels PRIMARY KEY (event_level_id);


--
-- PostgreSQL database dump complete
--

