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

ALTER TABLE ONLY xops.schema_constraints DROP CONSTRAINT work_constraints_pk;
DROP TABLE xops.schema_constraints;
SET search_path = xops, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: schema_constraints; Type: TABLE; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE schema_constraints (
    schema_name text NOT NULL,
    table_name text NOT NULL,
    constraint_name text NOT NULL,
    check_clause text
);


--
-- Name: work_constraints_pk; Type: CONSTRAINT; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY schema_constraints
    ADD CONSTRAINT work_constraints_pk PRIMARY KEY (schema_name, table_name, constraint_name);


--
-- PostgreSQL database dump complete
--

