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

ALTER TABLE ONLY toolkit.report_queue_recordsets DROP CONSTRAINT fk_report_queue_recordsets_rec;
ALTER TABLE ONLY toolkit.report_queue_recordsets DROP CONSTRAINT fk_report_queue_recordsets_que;
ALTER TABLE ONLY toolkit.report_queue_recordsets DROP CONSTRAINT pk_report_queue_recordsets;
DROP TABLE toolkit.report_queue_recordsets;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_queue_recordsets; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_queue_recordsets (
    queue_id integer NOT NULL,
    recordset_id integer NOT NULL,
    row_count integer,
    column_count integer,
    modification_time timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: pk_report_queue_recordsets; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_queue_recordsets
    ADD CONSTRAINT pk_report_queue_recordsets PRIMARY KEY (queue_id, recordset_id);


--
-- Name: fk_report_queue_recordsets_que; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_queue_recordsets
    ADD CONSTRAINT fk_report_queue_recordsets_que FOREIGN KEY (queue_id) REFERENCES report_queue(queue_id);


--
-- Name: fk_report_queue_recordsets_rec; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_queue_recordsets
    ADD CONSTRAINT fk_report_queue_recordsets_rec FOREIGN KEY (recordset_id) REFERENCES report_recordset_definitions(recordset_id);


--
-- PostgreSQL database dump complete
--

