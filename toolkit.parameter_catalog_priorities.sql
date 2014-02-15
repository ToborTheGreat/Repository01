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

ALTER TABLE ONLY toolkit.parameter_catalog_priorities DROP CONSTRAINT parameter_catalog_priorities_pkey;
DROP TABLE toolkit.parameter_catalog_priorities;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: parameter_catalog_priorities; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE parameter_catalog_priorities (
    parameter_catalog_priority_id integer NOT NULL,
    description character varying(20) NOT NULL,
    sort_order integer NOT NULL
);


--
-- Name: parameter_catalog_priorities_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY parameter_catalog_priorities
    ADD CONSTRAINT parameter_catalog_priorities_pkey PRIMARY KEY (parameter_catalog_priority_id);


--
-- PostgreSQL database dump complete
--

