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

ALTER TABLE ONLY toolkit.bm_parameters DROP CONSTRAINT bm_parameters_pk;
DROP TABLE toolkit.bm_parameters;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: bm_parameters; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE bm_parameters (
    param_name text NOT NULL,
    param_value text
);


--
-- Name: bm_parameters_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY bm_parameters
    ADD CONSTRAINT bm_parameters_pk PRIMARY KEY (param_name);


--
-- PostgreSQL database dump complete
--

