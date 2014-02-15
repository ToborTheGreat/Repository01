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

DROP INDEX toolkit.information_schema_columns_u1;
DROP TABLE toolkit.information_schema_columns;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: information_schema_columns; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE information_schema_columns (
    table_catalog information_schema.sql_identifier,
    table_schema information_schema.sql_identifier,
    table_name information_schema.sql_identifier,
    column_name information_schema.sql_identifier,
    ordinal_position information_schema.cardinal_number,
    column_default information_schema.character_data,
    is_nullable information_schema.character_data,
    data_type information_schema.character_data,
    character_maximum_length information_schema.cardinal_number,
    character_octet_length information_schema.cardinal_number,
    numeric_precision information_schema.cardinal_number,
    numeric_precision_radix information_schema.cardinal_number,
    numeric_scale information_schema.cardinal_number,
    datetime_precision information_schema.cardinal_number,
    interval_type information_schema.character_data,
    interval_precision information_schema.character_data,
    character_set_catalog information_schema.sql_identifier,
    character_set_schema information_schema.sql_identifier,
    character_set_name information_schema.sql_identifier,
    collation_catalog information_schema.sql_identifier,
    collation_schema information_schema.sql_identifier,
    collation_name information_schema.sql_identifier,
    domain_catalog information_schema.sql_identifier,
    domain_schema information_schema.sql_identifier,
    domain_name information_schema.sql_identifier,
    udt_catalog information_schema.sql_identifier,
    udt_schema information_schema.sql_identifier,
    udt_name information_schema.sql_identifier,
    scope_catalog information_schema.sql_identifier,
    scope_schema information_schema.sql_identifier,
    scope_name information_schema.sql_identifier,
    maximum_cardinality information_schema.cardinal_number,
    dtd_identifier information_schema.sql_identifier,
    is_self_referencing information_schema.character_data,
    is_identity information_schema.character_data,
    identity_generation information_schema.character_data,
    identity_start information_schema.character_data,
    identity_increment information_schema.character_data,
    identity_maximum information_schema.character_data,
    identity_minimum information_schema.character_data,
    identity_cycle information_schema.character_data,
    is_generated information_schema.character_data,
    generation_expression information_schema.character_data,
    is_updatable information_schema.character_data
);


--
-- Name: information_schema_columns_u1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX information_schema_columns_u1 ON information_schema_columns USING btree (table_schema, table_name, column_name);


--
-- PostgreSQL database dump complete
--

