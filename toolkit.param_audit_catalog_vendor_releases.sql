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

ALTER TABLE ONLY toolkit.param_audit_catalog_vendor_releases DROP CONSTRAINT param_audit_catalog_vendor_releases_pkey;
DROP TABLE toolkit.param_audit_catalog_vendor_releases;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: param_audit_catalog_vendor_releases; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE param_audit_catalog_vendor_releases (
    param_audit_catalog_vendor_release_id integer DEFAULT nextval('param_audit_catalog_vendor_releases_id_seq'::regclass) NOT NULL,
    vendor_release character varying(50) NOT NULL,
    created date DEFAULT now() NOT NULL,
    modified date DEFAULT now() NOT NULL,
    enabled character varying(1) DEFAULT 'N'::character varying
);


--
-- Name: param_audit_catalog_vendor_releases_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY param_audit_catalog_vendor_releases
    ADD CONSTRAINT param_audit_catalog_vendor_releases_pkey PRIMARY KEY (param_audit_catalog_vendor_release_id);


--
-- PostgreSQL database dump complete
--

