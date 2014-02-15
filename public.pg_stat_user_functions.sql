--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

DROP TABLE public.pg_stat_user_functions;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pg_stat_user_functions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE pg_stat_user_functions (
    item_date date,
    funcid oid,
    schemaname name,
    funcname name,
    calls bigint,
    total_time bigint,
    self_time bigint
);


--
-- PostgreSQL database dump complete
--

