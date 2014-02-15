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

ALTER TABLE ONLY toolkit.report_queue_images_archive DROP CONSTRAINT fk_report_queue_images_que_archive;
DROP INDEX toolkit.report_queue_images_archive_idx1;
ALTER TABLE ONLY toolkit.report_queue_images_archive DROP CONSTRAINT pk_report_queue_images_archive;
DROP TABLE toolkit.report_queue_images_archive;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_queue_images_archive; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_queue_images_archive (
    queue_id integer NOT NULL,
    recordset_id integer NOT NULL,
    unique_id integer NOT NULL,
    status character varying(30) NOT NULL,
    dequeue_time timestamp without time zone,
    complete_time timestamp without time zone,
    run_count smallint DEFAULT 0 NOT NULL,
    image_path character varying(500) NOT NULL
);


--
-- Name: pk_report_queue_images_archive; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_queue_images_archive
    ADD CONSTRAINT pk_report_queue_images_archive PRIMARY KEY (queue_id, recordset_id, unique_id);


--
-- Name: report_queue_images_archive_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX report_queue_images_archive_idx1 ON report_queue_images_archive USING btree (status);


--
-- Name: fk_report_queue_images_que_archive; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_queue_images_archive
    ADD CONSTRAINT fk_report_queue_images_que_archive FOREIGN KEY (queue_id) REFERENCES report_queue_archive(queue_id);


--
-- PostgreSQL database dump complete
--

