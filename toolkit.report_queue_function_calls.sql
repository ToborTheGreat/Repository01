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

ALTER TABLE ONLY toolkit.report_queue_function_calls DROP CONSTRAINT fk_rreport_queue_function_calls_rec;
ALTER TABLE ONLY toolkit.report_queue_function_calls DROP CONSTRAINT fk_rreport_queue_function_calls_que;
ALTER TABLE ONLY toolkit.report_queue_function_calls DROP CONSTRAINT pk_report_queue_function_calls;
DROP TABLE toolkit.report_queue_function_calls;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_queue_function_calls; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_queue_function_calls (
    queue_id integer NOT NULL,
    recordset_id integer NOT NULL,
    unique_id integer NOT NULL,
    function_call_sql character varying(1000)
);


--
-- Name: pk_report_queue_function_calls; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_queue_function_calls
    ADD CONSTRAINT pk_report_queue_function_calls PRIMARY KEY (queue_id, recordset_id, unique_id);


--
-- Name: fk_rreport_queue_function_calls_que; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_queue_function_calls
    ADD CONSTRAINT fk_rreport_queue_function_calls_que FOREIGN KEY (queue_id) REFERENCES report_queue(queue_id);


--
-- Name: fk_rreport_queue_function_calls_rec; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_queue_function_calls
    ADD CONSTRAINT fk_rreport_queue_function_calls_rec FOREIGN KEY (recordset_id) REFERENCES report_recordset_definitions(recordset_id);


--
-- PostgreSQL database dump complete
--

