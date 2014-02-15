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

DROP TABLE xops.sovu_constraint_failures;
SET search_path = xops, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sovu_constraint_failures; Type: TABLE; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sovu_constraint_failures (
    schema_name text,
    table_name text,
    parent_name text,
    num_child_constraints integer,
    num_parent_constraints integer,
    num_matches integer
);


--
-- PostgreSQL database dump complete
--

