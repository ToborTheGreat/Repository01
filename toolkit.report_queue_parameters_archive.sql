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

ALTER TABLE ONLY toolkit.report_queue_parameters_archive DROP CONSTRAINT fk_report_queue_parameters_que_archive;
DROP INDEX toolkit.report_queue_parameters_archive_ix1;
ALTER TABLE ONLY toolkit.report_queue_parameters_archive DROP CONSTRAINT pk_report_queue_parameters_archive;
DROP TABLE toolkit.report_queue_parameters_archive;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_queue_parameters_archive; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_queue_parameters_archive (
    queue_id integer NOT NULL,
    recordset_id integer NOT NULL,
    parameter_id integer NOT NULL,
    parameter_value character varying(1000) NOT NULL
);


--
-- Name: pk_report_queue_parameters_archive; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_queue_parameters_archive
    ADD CONSTRAINT pk_report_queue_parameters_archive PRIMARY KEY (queue_id, recordset_id, parameter_id);


--
-- Name: report_queue_parameters_archive_ix1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX report_queue_parameters_archive_ix1 ON report_queue_parameters_archive USING btree (parameter_id);


--
-- Name: fk_report_queue_parameters_que_archive; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_queue_parameters_archive
    ADD CONSTRAINT fk_report_queue_parameters_que_archive FOREIGN KEY (queue_id) REFERENCES report_queue_archive(queue_id);


--
-- PostgreSQL database dump complete
--

