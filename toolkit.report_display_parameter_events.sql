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

ALTER TABLE ONLY toolkit.report_display_parameter_events DROP CONSTRAINT fk_report_display_parameter_events_par;
ALTER TABLE ONLY toolkit.report_display_parameter_events DROP CONSTRAINT fk_report_display_parameter_events_chi;
ALTER TABLE ONLY toolkit.report_display_parameter_events DROP CONSTRAINT pk_report_display_parameter_events;
DROP TABLE toolkit.report_display_parameter_events;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_display_parameter_events; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_display_parameter_events (
    display_id integer NOT NULL,
    child_display_id integer NOT NULL,
    display_event character varying(50) NOT NULL
);


--
-- Name: pk_report_display_parameter_events; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_display_parameter_events
    ADD CONSTRAINT pk_report_display_parameter_events PRIMARY KEY (display_id, child_display_id, display_event);


--
-- Name: fk_report_display_parameter_events_chi; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_display_parameter_events
    ADD CONSTRAINT fk_report_display_parameter_events_chi FOREIGN KEY (child_display_id) REFERENCES report_display_parameters(display_id);


--
-- Name: fk_report_display_parameter_events_par; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_display_parameter_events
    ADD CONSTRAINT fk_report_display_parameter_events_par FOREIGN KEY (display_id) REFERENCES report_display_parameters(display_id);


--
-- PostgreSQL database dump complete
--

