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

DROP TABLE toolkit.report_dequeuing_config;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_dequeuing_config; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_dequeuing_config (
    item_name character varying(255) DEFAULT ''::character varying NOT NULL,
    item_value character varying(255) DEFAULT ''::character varying NOT NULL
);


--
-- PostgreSQL database dump complete
--

