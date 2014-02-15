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

ALTER TABLE ONLY toolkit.report_queue_archive DROP CONSTRAINT fk_report_queue_rpt;
DROP INDEX toolkit.report_queue_archive_idx3;
DROP INDEX toolkit.report_queue_archive_idx2;
DROP INDEX toolkit.report_queue_archive_idx1;
ALTER TABLE ONLY toolkit.report_queue_archive DROP CONSTRAINT pk_report_queue_archive;
DROP TABLE toolkit.report_queue_archive;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_queue_archive; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_queue_archive (
    queue_id integer NOT NULL,
    report_id integer NOT NULL,
    user_id integer NOT NULL,
    status character varying(30) NOT NULL,
    submit_time timestamp without time zone DEFAULT now() NOT NULL,
    dequeue_time timestamp without time zone,
    complete_time timestamp without time zone,
    report_path character varying(500),
    delivery_type character varying(20),
    delivery_format character varying(20),
    compress_report character varying(5),
    run_count smallint DEFAULT 0,
    email character varying(100)
);


--
-- Name: pk_report_queue_archive; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_queue_archive
    ADD CONSTRAINT pk_report_queue_archive PRIMARY KEY (queue_id);


--
-- Name: report_queue_archive_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX report_queue_archive_idx1 ON report_queue_archive USING btree (report_id);


--
-- Name: report_queue_archive_idx2; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX report_queue_archive_idx2 ON report_queue_archive USING btree (status);


--
-- Name: report_queue_archive_idx3; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX report_queue_archive_idx3 ON report_queue_archive USING btree (user_id);


--
-- Name: fk_report_queue_rpt; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_queue_archive
    ADD CONSTRAINT fk_report_queue_rpt FOREIGN KEY (report_id) REFERENCES report_catalog(report_id);


--
-- PostgreSQL database dump complete
--

