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

DROP TABLE public.pg_stat_all_indexes;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pg_stat_all_indexes; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE pg_stat_all_indexes (
    item_date date,
    relid oid,
    indexrelid oid,
    schemaname name,
    relname name,
    indexrelname name,
    idx_scan bigint,
    idx_tup_read bigint,
    idx_tup_fetch bigint
);


--
-- PostgreSQL database dump complete
--

