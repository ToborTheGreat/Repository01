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

ALTER TABLE ONLY toolkit.config_partitioning DROP CONSTRAINT config_partitioning_pk;
DROP TABLE toolkit.config_partitioning;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: config_partitioning; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE config_partitioning (
    schema_name character varying(50) NOT NULL,
    months_to_keep smallint NOT NULL,
    archive_or_drop character varying(10) NOT NULL,
    hourly_tables boolean DEFAULT true,
    daily_tables boolean DEFAULT false,
    CONSTRAINT config_partitioning_archive_or_drop_check CHECK (((archive_or_drop)::text = ANY (ARRAY[('archive'::character varying)::text, ('drop'::character varying)::text]))),
    CONSTRAINT config_partitioning_months_to_keep_check CHECK ((months_to_keep >= 0))
);


--
-- Name: config_partitioning_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY config_partitioning
    ADD CONSTRAINT config_partitioning_pk PRIMARY KEY (schema_name);


--
-- PostgreSQL database dump complete
--

