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

DROP INDEX toolkit.ux1_parameter_name;
ALTER TABLE ONLY toolkit.report_parameter_definitions DROP CONSTRAINT pk_report_parameter_definitions;
DROP TABLE toolkit.report_parameter_definitions;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_parameter_definitions; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_parameter_definitions (
    parameter_id integer NOT NULL,
    parameter_name character varying(30) NOT NULL,
    parameter_datatype character varying(30) NOT NULL,
    parameter_inout_mode character varying(5) NOT NULL,
    parameter_display_function character varying(100),
    parameter_display_function_parameters character varying(500),
    parameter_display_size smallint,
    parameter_is_pct boolean DEFAULT false
);


--
-- Name: pk_report_parameter_definitions; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_parameter_definitions
    ADD CONSTRAINT pk_report_parameter_definitions PRIMARY KEY (parameter_id);


--
-- Name: ux1_parameter_name; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX ux1_parameter_name ON report_parameter_definitions USING btree (parameter_name);


--
-- PostgreSQL database dump complete
--

