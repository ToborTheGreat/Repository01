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

DROP TABLE toolkit.dim_materialized;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: dim_materialized; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE dim_materialized (
    dim_name character varying(128),
    schema_name character varying(32),
    sql_syn character varying(32),
    mat_view character varying(256),
    mat_date date,
    dim_date date,
    dim_param character varying(128)
);


--
-- PostgreSQL database dump complete
--

