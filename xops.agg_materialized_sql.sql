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

DROP TRIGGER agg_component_sql_befins ON xops.agg_materialized_sql;
ALTER TABLE ONLY xops.agg_materialized_sql DROP CONSTRAINT agg_component_sql_u1;
ALTER TABLE ONLY xops.agg_materialized_sql DROP CONSTRAINT agg_component_sql_pk;
DROP TABLE xops.agg_materialized_sql;
SET search_path = xops, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: agg_materialized_sql; Type: TABLE; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE agg_materialized_sql (
    agg_name character varying(128),
    agg_id integer NOT NULL,
    sql_id integer NOT NULL,
    sql_syn character varying(32),
    build_order integer,
    mat_sql text,
    idep character varying(128),
    component_type character varying(32),
    schema character varying(32),
    process_type character varying(32)
);


--
-- Name: agg_component_sql_pk; Type: CONSTRAINT; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY agg_materialized_sql
    ADD CONSTRAINT agg_component_sql_pk PRIMARY KEY (agg_id, sql_id);


--
-- Name: agg_component_sql_u1; Type: CONSTRAINT; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY agg_materialized_sql
    ADD CONSTRAINT agg_component_sql_u1 UNIQUE (agg_name, sql_id);


--
-- Name: agg_component_sql_befins; Type: TRIGGER; Schema: xops; Owner: -
--

CREATE TRIGGER agg_component_sql_befins
    BEFORE INSERT ON agg_materialized_sql
    FOR EACH ROW
    EXECUTE PROCEDURE agg_component_sql_bi();


--
-- PostgreSQL database dump complete
--

