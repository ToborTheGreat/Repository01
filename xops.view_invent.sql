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

DROP TABLE xops.view_invent;
SET search_path = xops, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: view_invent; Type: TABLE; Schema: xops; Owner: -; Tablespace: 
--

CREATE TABLE view_invent (
    schema_name text,
    view_name text,
    view_def text,
    created boolean
);


--
-- PostgreSQL database dump complete
--

