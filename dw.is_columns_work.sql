--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw, pg_catalog;

DROP INDEX dw.is_columns_work_i;
DROP TABLE dw.is_columns_work;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: is_columns_work; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE is_columns_work (
    table_schema information_schema.sql_identifier,
    table_name information_schema.sql_identifier,
    column_name information_schema.sql_identifier,
    ordinal_position information_schema.cardinal_number,
    data_type information_schema.character_data
);


SET default_tablespace = p2_dwindex;

--
-- Name: is_columns_work_i; Type: INDEX; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

CREATE INDEX is_columns_work_i ON is_columns_work USING btree (table_schema, table_name, column_name);


--
-- PostgreSQL database dump complete
--

