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

ALTER TABLE ONLY toolkit.report_recordset_definitions DROP CONSTRAINT fk_report_recordset_definitions_fun;
DROP INDEX toolkit.report_recordset_definitions_ix1;
ALTER TABLE ONLY toolkit.report_recordset_definitions DROP CONSTRAINT pk_report_recordset_definitions;
DROP TABLE toolkit.report_recordset_definitions;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_recordset_definitions; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_recordset_definitions (
    recordset_id integer NOT NULL,
    recordset_name character varying(100) NOT NULL,
    function_id integer,
    dependent_parameter_id_1 integer,
    dependent_parameter_req_value_1 character varying(30),
    dependent_parameter_id_2 integer,
    dependent_parameter_req_value_2 character varying(30),
    is_image boolean DEFAULT false NOT NULL
);


--
-- Name: pk_report_recordset_definitions; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_recordset_definitions
    ADD CONSTRAINT pk_report_recordset_definitions PRIMARY KEY (recordset_id);


--
-- Name: report_recordset_definitions_ix1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX report_recordset_definitions_ix1 ON report_recordset_definitions USING btree (function_id);


--
-- Name: fk_report_recordset_definitions_fun; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_recordset_definitions
    ADD CONSTRAINT fk_report_recordset_definitions_fun FOREIGN KEY (function_id) REFERENCES report_function_definitions(function_id);


--
-- PostgreSQL database dump complete
--

