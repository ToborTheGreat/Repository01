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

ALTER TABLE ONLY toolkit.cfc_supergroups DROP CONSTRAINT pk_cfc_supergroups;
DROP TABLE toolkit.cfc_supergroups;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: cfc_supergroups; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE cfc_supergroups (
    supergroup_id integer NOT NULL,
    technology character varying(30),
    supergroup_desc character varying(50),
    enabled boolean,
    sort_order smallint
);


--
-- Name: pk_cfc_supergroups; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY cfc_supergroups
    ADD CONSTRAINT pk_cfc_supergroups PRIMARY KEY (supergroup_id);


--
-- PostgreSQL database dump complete
--

