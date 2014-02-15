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

DROP TABLE toolkit.dim_materialized_indexes;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: dim_materialized_indexes; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE dim_materialized_indexes (
    dim_name character varying(128),
    dim_id integer NOT NULL,
    sql_id integer NOT NULL,
    index_id integer NOT NULL,
    index_type character varying(128),
    index_sql text
);


--
-- PostgreSQL database dump complete
--

