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

DROP INDEX toolkit.ux1_report_function_definitions;
ALTER TABLE ONLY toolkit.report_function_definitions DROP CONSTRAINT pk_report_function_definitions;
DROP TABLE toolkit.report_function_definitions;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_function_definitions; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_function_definitions (
    function_id integer NOT NULL,
    function_schema character varying(60) NOT NULL,
    function_name character varying(60) NOT NULL
);


--
-- Name: pk_report_function_definitions; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_function_definitions
    ADD CONSTRAINT pk_report_function_definitions PRIMARY KEY (function_id);


--
-- Name: ux1_report_function_definitions; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX ux1_report_function_definitions ON report_function_definitions USING btree (function_schema, function_name);


--
-- PostgreSQL database dump complete
--

