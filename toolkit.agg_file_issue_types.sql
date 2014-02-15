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

ALTER TABLE ONLY toolkit.agg_file_issue_types DROP CONSTRAINT agg_file_issue_types_pkey;
DROP TABLE toolkit.agg_file_issue_types;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: agg_file_issue_types; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE agg_file_issue_types (
    agg_file_issue_type_id integer NOT NULL,
    description character varying NOT NULL
);


--
-- Name: agg_file_issue_types_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY agg_file_issue_types
    ADD CONSTRAINT agg_file_issue_types_pkey PRIMARY KEY (agg_file_issue_type_id);


--
-- PostgreSQL database dump complete
--

