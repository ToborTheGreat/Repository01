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

ALTER TABLE ONLY toolkit.dim_materialized_sql DROP CONSTRAINT dim_component_sql_u1;
ALTER TABLE ONLY toolkit.dim_materialized_sql DROP CONSTRAINT dim_component_sql_pk;
DROP TABLE toolkit.dim_materialized_sql;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: dim_materialized_sql; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE dim_materialized_sql (
    dim_name character varying(128),
    dim_id integer NOT NULL,
    sql_id integer NOT NULL,
    sql_syn character varying(32),
    build_order integer,
    mat_sql text,
    idep character varying(128),
    dim_exists boolean
);


--
-- Name: dim_component_sql_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY dim_materialized_sql
    ADD CONSTRAINT dim_component_sql_pk PRIMARY KEY (dim_id, sql_id);


--
-- Name: dim_component_sql_u1; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY dim_materialized_sql
    ADD CONSTRAINT dim_component_sql_u1 UNIQUE (dim_name, sql_id);


--
-- PostgreSQL database dump complete
--

