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

ALTER TABLE ONLY dw.parameter_catalog_groups DROP CONSTRAINT parameter_catalog_groups_vnd;
DROP INDEX dw.parameter_catalog_groups_ux;
ALTER TABLE ONLY dw.parameter_catalog_groups DROP CONSTRAINT parameter_catalog_groups_pk;
DROP TABLE dw.parameter_catalog_groups;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: parameter_catalog_groups; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE parameter_catalog_groups (
    parameter_catalog_group_id integer DEFAULT nextval('parameter_catalog_group_seq'::regclass) NOT NULL,
    technology character varying(50) NOT NULL,
    description character varying(100) NOT NULL,
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL,
    infrastructure_vendor_id integer NOT NULL
);


SET default_tablespace = p2_dwindex;

--
-- Name: parameter_catalog_groups_pk; Type: CONSTRAINT; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

ALTER TABLE ONLY parameter_catalog_groups
    ADD CONSTRAINT parameter_catalog_groups_pk PRIMARY KEY (parameter_catalog_group_id);


--
-- Name: parameter_catalog_groups_ux; Type: INDEX; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

CREATE UNIQUE INDEX parameter_catalog_groups_ux ON parameter_catalog_groups USING btree (technology, description, infrastructure_vendor_id);


--
-- Name: parameter_catalog_groups_vnd; Type: FK CONSTRAINT; Schema: dw; Owner: -
--

ALTER TABLE ONLY parameter_catalog_groups
    ADD CONSTRAINT parameter_catalog_groups_vnd FOREIGN KEY (infrastructure_vendor_id) REFERENCES infrastructure_vendors(infrastructure_vendor_id);


--
-- PostgreSQL database dump complete
--

