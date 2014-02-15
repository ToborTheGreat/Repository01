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

DROP INDEX public.proddb01_table_counts_ix;
DROP TABLE public.proddb01_table_counts;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: proddb01_table_counts; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE proddb01_table_counts (
    table_schema character varying,
    table_name character varying,
    rows integer
);


--
-- Name: proddb01_table_counts_ix; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX proddb01_table_counts_ix ON proddb01_table_counts USING btree (table_schema, table_name);


--
-- PostgreSQL database dump complete
--

