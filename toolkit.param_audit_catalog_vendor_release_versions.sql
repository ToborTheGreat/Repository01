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

ALTER TABLE ONLY toolkit.param_audit_catalog_vendor_release_versions DROP CONSTRAINT param_audit_catalog_vendor_release_versions_pk;
DROP TABLE toolkit.param_audit_catalog_vendor_release_versions;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: param_audit_catalog_vendor_release_versions; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE param_audit_catalog_vendor_release_versions (
    technology text NOT NULL,
    file_format_version text NOT NULL,
    param_audit_catalog_vendor_release_id integer
);


--
-- Name: param_audit_catalog_vendor_release_versions_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY param_audit_catalog_vendor_release_versions
    ADD CONSTRAINT param_audit_catalog_vendor_release_versions_pk PRIMARY KEY (technology, file_format_version);


--
-- PostgreSQL database dump complete
--

