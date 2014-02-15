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

DROP TABLE toolkit.agg_list_dep;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: agg_list_dep; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE agg_list_dep (
    schema_name character varying(20) NOT NULL,
    function_name character varying(70) NOT NULL,
    dep_schema_name character varying(20) NOT NULL,
    dep_function_name character varying(70) NOT NULL
);


--
-- PostgreSQL database dump complete
--

