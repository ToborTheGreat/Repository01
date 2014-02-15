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

DROP INDEX toolkit.information_schema_tables_u1;
DROP TABLE toolkit.information_schema_tables;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: information_schema_tables; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE information_schema_tables (
    table_catalog information_schema.sql_identifier,
    table_schema information_schema.sql_identifier,
    table_name information_schema.sql_identifier,
    table_type information_schema.character_data,
    self_referencing_column_name information_schema.sql_identifier,
    reference_generation information_schema.character_data,
    user_defined_type_catalog information_schema.sql_identifier,
    user_defined_type_schema information_schema.sql_identifier,
    user_defined_type_name information_schema.sql_identifier,
    is_insertable_into information_schema.character_data,
    is_typed information_schema.character_data,
    commit_action information_schema.character_data
);


--
-- Name: information_schema_tables_u1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX information_schema_tables_u1 ON information_schema_tables USING btree (table_schema, table_name);


--
-- PostgreSQL database dump complete
--

