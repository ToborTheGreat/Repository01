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

ALTER TABLE ONLY toolkit.calendar_events DROP CONSTRAINT fk_calendar_events_typ;
ALTER TABLE ONLY toolkit.calendar_events DROP CONSTRAINT fk_calendar_events_lvl;
ALTER TABLE ONLY toolkit.calendar_events DROP CONSTRAINT pk_calendar_events;
DROP TABLE toolkit.calendar_events;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: calendar_events; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE calendar_events (
    event_id integer DEFAULT nextval('calendar_event_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    market character varying(50) NOT NULL,
    event_level_id integer NOT NULL,
    event_element_id integer NOT NULL,
    event_type_id integer NOT NULL,
    event_info character varying(1000) NOT NULL,
    last_updated timestamp without time zone
);


--
-- Name: pk_calendar_events; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY calendar_events
    ADD CONSTRAINT pk_calendar_events PRIMARY KEY (event_id);


--
-- Name: fk_calendar_events_lvl; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY calendar_events
    ADD CONSTRAINT fk_calendar_events_lvl FOREIGN KEY (event_level_id) REFERENCES calendar_event_levels(event_level_id);


--
-- Name: fk_calendar_events_typ; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY calendar_events
    ADD CONSTRAINT fk_calendar_events_typ FOREIGN KEY (event_type_id) REFERENCES calendar_event_types(event_type_id);


--
-- PostgreSQL database dump complete
--

