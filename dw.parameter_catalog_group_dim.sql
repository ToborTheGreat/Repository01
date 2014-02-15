--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw, pg_catalog;

DROP INDEX dw.parameter_catalog_group_dim_ux;
ALTER TABLE ONLY dw.parameter_catalog_group_dim DROP CONSTRAINT parameter_catalog_group_dim_pk;
DROP TABLE dw.parameter_catalog_group_dim;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: parameter_catalog_group_dim; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE parameter_catalog_group_dim (
    parameter_catalog_group_dim_id integer DEFAULT nextval('parameter_catalog_group_dim_seq'::regclass) NOT NULL,
    technology character varying(50) NOT NULL,
    infrastructure_vendor_name character varying(50) NOT NULL,
    parameter_catalog_group character varying(50) NOT NULL,
    effective_begin date,
    effective_end date,
    md5 character varying(100) NOT NULL
);


SET default_tablespace = p2_dwindex;

--
-- Name: parameter_catalog_group_dim_pk; Type: CONSTRAINT; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

ALTER TABLE ONLY parameter_catalog_group_dim
    ADD CONSTRAINT parameter_catalog_group_dim_pk PRIMARY KEY (parameter_catalog_group_dim_id);


--
-- Name: parameter_catalog_group_dim_ux; Type: INDEX; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

CREATE UNIQUE INDEX parameter_catalog_group_dim_ux ON parameter_catalog_group_dim USING btree (technology, infrastructure_vendor_name, parameter_catalog_group, effective_begin);


--
-- PostgreSQL database dump complete
--

