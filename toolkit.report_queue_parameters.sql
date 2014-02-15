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

ALTER TABLE ONLY toolkit.report_queue_parameters DROP CONSTRAINT fk_report_queue_parameters_rec;
ALTER TABLE ONLY toolkit.report_queue_parameters DROP CONSTRAINT fk_report_queue_parameters_que;
ALTER TABLE ONLY toolkit.report_queue_parameters DROP CONSTRAINT fk_report_queue_parameters_prm;
DROP INDEX toolkit.report_queue_parameters_ix1;
ALTER TABLE ONLY toolkit.report_queue_parameters DROP CONSTRAINT pk_report_queue_parameters;
DROP TABLE toolkit.report_queue_parameters;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_queue_parameters; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_queue_parameters (
    queue_id integer NOT NULL,
    recordset_id integer NOT NULL,
    parameter_id integer NOT NULL,
    parameter_value character varying(1000) NOT NULL
);


--
-- Name: pk_report_queue_parameters; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_queue_parameters
    ADD CONSTRAINT pk_report_queue_parameters PRIMARY KEY (queue_id, recordset_id, parameter_id);


--
-- Name: report_queue_parameters_ix1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX report_queue_parameters_ix1 ON report_queue_parameters USING btree (parameter_id);


--
-- Name: fk_report_queue_parameters_prm; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_queue_parameters
    ADD CONSTRAINT fk_report_queue_parameters_prm FOREIGN KEY (parameter_id) REFERENCES report_parameter_definitions(parameter_id);


--
-- Name: fk_report_queue_parameters_que; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_queue_parameters
    ADD CONSTRAINT fk_report_queue_parameters_que FOREIGN KEY (queue_id) REFERENCES report_queue(queue_id);


--
-- Name: fk_report_queue_parameters_rec; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_queue_parameters
    ADD CONSTRAINT fk_report_queue_parameters_rec FOREIGN KEY (recordset_id) REFERENCES report_recordset_definitions(recordset_id);


--
-- PostgreSQL database dump complete
--

