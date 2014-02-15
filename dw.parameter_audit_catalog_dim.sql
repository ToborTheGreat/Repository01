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

ALTER TABLE ONLY dw.parameter_audit_catalog_dim DROP CONSTRAINT parameter_audit_catalog_dim_idx;
DROP TABLE dw.parameter_audit_catalog_dim;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: parameter_audit_catalog_dim; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE parameter_audit_catalog_dim (
    parameter_audit_catalog_dim_id integer DEFAULT nextval('param_audit_catalog_dim_param_audit_catalog_dim_id_seq'::regclass) NOT NULL,
    technology_type character varying(50) NOT NULL,
    infrastructure_vendor_name character varying(50) NOT NULL,
    vendor_release character varying(100) NOT NULL,
    element_class character varying(100),
    param_name character varying(100) NOT NULL,
    param_rule character varying(50) NOT NULL,
    param_value character varying(100),
    param_min real,
    param_max real,
    vendor_desc character varying(4000),
    vendor_rec_value character varying(100),
    param_catalog_group character varying(50),
    dw_schemaname character varying(100) NOT NULL,
    dw_tablename character varying(100) NOT NULL,
    dw_columnname character varying(100) NOT NULL,
    effective_begin timestamp(6) without time zone NOT NULL,
    effective_end timestamp(6) without time zone NOT NULL,
    md5 character varying(100) NOT NULL,
    parameter_catalog_priority character varying(20) DEFAULT 'none'::character varying NOT NULL
);


SET default_tablespace = p2_dwindex;

--
-- Name: parameter_audit_catalog_dim_idx; Type: CONSTRAINT; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

ALTER TABLE ONLY parameter_audit_catalog_dim
    ADD CONSTRAINT parameter_audit_catalog_dim_idx PRIMARY KEY (parameter_audit_catalog_dim_id);


--
-- PostgreSQL database dump complete
--

