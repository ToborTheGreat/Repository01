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

DROP INDEX public.schema_objects_ux;
DROP TABLE public.proddb01_schema_objects;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: proddb01_schema_objects; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE proddb01_schema_objects (
    schema_name name,
    object_name name,
    object_type "char"
);


--
-- Name: schema_objects_ux; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX schema_objects_ux ON proddb01_schema_objects USING btree (schema_name, object_name, object_type);


--
-- PostgreSQL database dump complete
--

