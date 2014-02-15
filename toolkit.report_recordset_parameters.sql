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

ALTER TABLE ONLY toolkit.report_recordset_parameters DROP CONSTRAINT fk_report_recordset_parameters_rec;
ALTER TABLE ONLY toolkit.report_recordset_parameters DROP CONSTRAINT fk_report_recordset_parameters_prm;
DROP INDEX toolkit.report_recordset_parameters_ux1;
ALTER TABLE ONLY toolkit.report_recordset_parameters DROP CONSTRAINT pk_report_recordset_parameters;
DROP TABLE toolkit.report_recordset_parameters;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_recordset_parameters; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_recordset_parameters (
    recordset_id integer NOT NULL,
    parameter_id integer NOT NULL,
    parameter_position integer NOT NULL,
    parameter_nullable boolean NOT NULL,
    parameter_default character varying(100)
);


--
-- Name: pk_report_recordset_parameters; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_recordset_parameters
    ADD CONSTRAINT pk_report_recordset_parameters PRIMARY KEY (recordset_id, parameter_id);


--
-- Name: report_recordset_parameters_ux1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX report_recordset_parameters_ux1 ON report_recordset_parameters USING btree (recordset_id, parameter_position);


--
-- Name: fk_report_recordset_parameters_prm; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_recordset_parameters
    ADD CONSTRAINT fk_report_recordset_parameters_prm FOREIGN KEY (parameter_id) REFERENCES report_parameter_definitions(parameter_id);


--
-- Name: fk_report_recordset_parameters_rec; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_recordset_parameters
    ADD CONSTRAINT fk_report_recordset_parameters_rec FOREIGN KEY (recordset_id) REFERENCES report_recordset_definitions(recordset_id);


--
-- PostgreSQL database dump complete
--

