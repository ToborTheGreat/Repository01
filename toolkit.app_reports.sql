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

ALTER TABLE ONLY toolkit.app_reports DROP CONSTRAINT app_reports_pkey;
DROP TABLE toolkit.app_reports;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: app_reports; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE app_reports (
    schema_name character varying(20) NOT NULL,
    function_name character varying(70) NOT NULL
);


--
-- Name: app_reports_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY app_reports
    ADD CONSTRAINT app_reports_pkey PRIMARY KEY (schema_name, function_name);


--
-- PostgreSQL database dump complete
--

