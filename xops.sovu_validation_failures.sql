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

DROP INDEX xops.sovu_validation_failures_n2;
DROP INDEX xops.sovu_validation_failures_n1;
ALTER TABLE ONLY xops.sovu_validation_failures DROP CONSTRAINT sovu_validation_failures_pk;
DROP TABLE xops.sovu_validation_failures;
SET search_path = xops, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sovu_validation_failures; Type: TABLE; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sovu_validation_failures (
    schema_name text NOT NULL,
    table_name text NOT NULL,
    parent_name text,
    column_name text NOT NULL,
    column_hash text,
    parent_hash text
);


--
-- Name: sovu_validation_failures_pk; Type: CONSTRAINT; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sovu_validation_failures
    ADD CONSTRAINT sovu_validation_failures_pk PRIMARY KEY (schema_name, table_name, column_name);


--
-- Name: sovu_validation_failures_n1; Type: INDEX; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX sovu_validation_failures_n1 ON sovu_validation_failures USING btree (schema_name, table_name, column_name);


--
-- Name: sovu_validation_failures_n2; Type: INDEX; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX sovu_validation_failures_n2 ON sovu_validation_failures USING btree (schema_name, parent_name, column_name);


--
-- PostgreSQL database dump complete
--

