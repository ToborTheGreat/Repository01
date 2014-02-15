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

DROP INDEX toolkit.parameter_audit_catalog_u1;
ALTER TABLE ONLY toolkit.parameter_audit_catalog DROP CONSTRAINT parameter_audit_catalog_pk;
DROP TABLE toolkit.parameter_audit_catalog;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: parameter_audit_catalog; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE parameter_audit_catalog (
    parameter_audit_catalog_id integer DEFAULT nextval('parameter_audit_catalog_seq'::regclass) NOT NULL,
    param_audit_catalog_vendor_release_id integer,
    parameter_catalog_id integer,
    parameter_audit_rule_id integer,
    param_value character varying(100),
    param_min real,
    param_max real,
    enabled character(1),
    created timestamp(0) without time zone
);


--
-- Name: parameter_audit_catalog_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY parameter_audit_catalog
    ADD CONSTRAINT parameter_audit_catalog_pk PRIMARY KEY (parameter_audit_catalog_id);


--
-- Name: parameter_audit_catalog_u1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX parameter_audit_catalog_u1 ON parameter_audit_catalog USING btree (param_audit_catalog_vendor_release_id, parameter_catalog_id, parameter_audit_rule_id, param_value, param_min, param_max);


--
-- PostgreSQL database dump complete
--

