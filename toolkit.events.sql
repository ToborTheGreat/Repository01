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

ALTER TABLE ONLY toolkit.events DROP CONSTRAINT events_pkey;
ALTER TABLE toolkit.events ALTER COLUMN event_id DROP DEFAULT;
DROP SEQUENCE toolkit.events_event_id_seq;
DROP TABLE toolkit.events;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: events; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE events (
    event_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    market character varying(50) NOT NULL,
    level character varying(30) NOT NULL,
    element character varying(30) NOT NULL,
    event_type character varying(30),
    event_info character varying(1000) NOT NULL
);


--
-- Name: events_event_id_seq; Type: SEQUENCE; Schema: toolkit; Owner: -
--

CREATE SEQUENCE events_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: events_event_id_seq; Type: SEQUENCE OWNED BY; Schema: toolkit; Owner: -
--

ALTER SEQUENCE events_event_id_seq OWNED BY events.event_id;


--
-- Name: event_id; Type: DEFAULT; Schema: toolkit; Owner: -
--

ALTER TABLE events ALTER COLUMN event_id SET DEFAULT nextval('events_event_id_seq'::regclass);


--
-- Name: events_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY events
    ADD CONSTRAINT events_pkey PRIMARY KEY (event_id);


--
-- PostgreSQL database dump complete
--

