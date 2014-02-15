--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = xops, pg_catalog;

DROP TABLE xops.agg_materialized_history;
SET search_path = xops, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: agg_materialized_history; Type: TABLE; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE agg_materialized_history (
    agg_name character varying(128),
    schema_name character varying(32),
    sql_syn character varying(32),
    mat_view character varying(256),
    mat_start timestamp without time zone,
    mat_end timestamp without time zone,
    mat_param text
);


--
-- PostgreSQL database dump complete
--

