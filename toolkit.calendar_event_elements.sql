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

ALTER TABLE ONLY toolkit.calendar_event_elements DROP CONSTRAINT fk_calendar_event_elements_evt;
DROP TABLE toolkit.calendar_event_elements;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: calendar_event_elements; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE calendar_event_elements (
    event_element_id integer DEFAULT nextval('calendar_event_seq'::regclass) NOT NULL,
    event_id integer NOT NULL,
    element text
);


--
-- Name: fk_calendar_event_elements_evt; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY calendar_event_elements
    ADD CONSTRAINT fk_calendar_event_elements_evt FOREIGN KEY (event_id) REFERENCES calendar_events(event_id);


--
-- PostgreSQL database dump complete
--

