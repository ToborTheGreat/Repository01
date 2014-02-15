--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = rklaus, pg_catalog;

DROP INDEX rklaus.schema_objects_ux;
DROP TABLE rklaus.proddb02_schema_objects;
SET search_path = rklaus, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: proddb02_schema_objects; Type: TABLE; Schema: rklaus; Owner: -; Tablespace: 
--

CREATE TABLE proddb02_schema_objects (
    schema_name name,
    object_name name,
    object_type "char"
);


--
-- Name: schema_objects_ux; Type: INDEX; Schema: rklaus; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX schema_objects_ux ON proddb02_schema_objects USING btree (schema_name, object_name, object_type);


--
-- PostgreSQL database dump complete
--

