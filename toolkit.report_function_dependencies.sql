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

ALTER TABLE ONLY toolkit.report_function_dependencies DROP CONSTRAINT fk_report_function_dependencies_fun;
ALTER TABLE ONLY toolkit.report_function_dependencies DROP CONSTRAINT pk_report_function_dependencies;
DROP TABLE toolkit.report_function_dependencies;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_function_dependencies; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_function_dependencies (
    function_id integer NOT NULL,
    aggregate_schema character varying(60) NOT NULL,
    aggregate_function character varying(60) NOT NULL,
    engineering_level character varying(20) NOT NULL
);


--
-- Name: pk_report_function_dependencies; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_function_dependencies
    ADD CONSTRAINT pk_report_function_dependencies PRIMARY KEY (function_id, aggregate_schema, aggregate_function, engineering_level);


--
-- Name: fk_report_function_dependencies_fun; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_function_dependencies
    ADD CONSTRAINT fk_report_function_dependencies_fun FOREIGN KEY (function_id) REFERENCES report_function_definitions(function_id);


--
-- PostgreSQL database dump complete
--

