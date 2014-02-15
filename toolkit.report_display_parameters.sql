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

ALTER TABLE ONLY toolkit.report_display_parameters DROP CONSTRAINT fk_report_display_parameters_rpt;
ALTER TABLE ONLY toolkit.report_display_parameters DROP CONSTRAINT fk_report_display_parameters_prm;
DROP INDEX toolkit.ux1_report_display_parameters;
DROP INDEX toolkit.report_display_parameters_ix1;
ALTER TABLE ONLY toolkit.report_display_parameters DROP CONSTRAINT pk_report_display_parameters;
DROP TABLE toolkit.report_display_parameters;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_display_parameters; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_display_parameters (
    display_id integer NOT NULL,
    report_id integer NOT NULL,
    display_position smallint NOT NULL,
    parameter_id integer NOT NULL,
    display_name character varying(100),
    display_element_type character varying(100),
    display_initially character varying(100),
    display_nullable boolean DEFAULT false NOT NULL
);


--
-- Name: pk_report_display_parameters; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_display_parameters
    ADD CONSTRAINT pk_report_display_parameters PRIMARY KEY (display_id);


--
-- Name: report_display_parameters_ix1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX report_display_parameters_ix1 ON report_display_parameters USING btree (parameter_id);


--
-- Name: ux1_report_display_parameters; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX ux1_report_display_parameters ON report_display_parameters USING btree (report_id, display_position);


--
-- Name: fk_report_display_parameters_prm; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_display_parameters
    ADD CONSTRAINT fk_report_display_parameters_prm FOREIGN KEY (parameter_id) REFERENCES report_parameter_definitions(parameter_id);


--
-- Name: fk_report_display_parameters_rpt; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_display_parameters
    ADD CONSTRAINT fk_report_display_parameters_rpt FOREIGN KEY (report_id) REFERENCES report_catalog(report_id);


--
-- PostgreSQL database dump complete
--

