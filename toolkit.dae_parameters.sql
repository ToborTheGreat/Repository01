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

ALTER TABLE ONLY toolkit.dae_parameters DROP CONSTRAINT dae_parameters_pk;
DROP TABLE toolkit.dae_parameters;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: dae_parameters; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE dae_parameters (
    param_name character varying(64) NOT NULL,
    param_value text
);


--
-- Name: TABLE dae_parameters; Type: COMMENT; Schema: toolkit; Owner: -
--

COMMENT ON TABLE dae_parameters IS 'runtime parameters for aggregate processing';


--
-- Name: dae_parameters_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY dae_parameters
    ADD CONSTRAINT dae_parameters_pk PRIMARY KEY (param_name);


--
-- PostgreSQL database dump complete
--

