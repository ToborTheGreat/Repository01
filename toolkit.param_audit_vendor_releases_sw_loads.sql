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

ALTER TABLE ONLY toolkit.param_audit_vendor_releases_sw_loads DROP CONSTRAINT param_audit_vendor_releases_sw_loads_pk;
DROP TABLE toolkit.param_audit_vendor_releases_sw_loads;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: param_audit_vendor_releases_sw_loads; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE param_audit_vendor_releases_sw_loads (
    vendor_sw_load_id integer NOT NULL,
    param_audit_catalog_vendor_release_id integer
);


--
-- Name: param_audit_vendor_releases_sw_loads_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY param_audit_vendor_releases_sw_loads
    ADD CONSTRAINT param_audit_vendor_releases_sw_loads_pk PRIMARY KEY (vendor_sw_load_id);


--
-- PostgreSQL database dump complete
--

