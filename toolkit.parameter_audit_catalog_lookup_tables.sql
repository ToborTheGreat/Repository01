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

ALTER TABLE ONLY toolkit.parameter_audit_catalog_lookup_tables DROP CONSTRAINT parameter_audit_catalog_lookup_tables_pkey;
DROP TABLE toolkit.parameter_audit_catalog_lookup_tables;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: parameter_audit_catalog_lookup_tables; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE parameter_audit_catalog_lookup_tables (
    dw_dim_schemaname character varying(100) NOT NULL,
    dw_dim_tablename character varying(100) NOT NULL,
    dw_dim_idname character varying(100) NOT NULL,
    technology character varying(50) NOT NULL,
    element_class_id integer NOT NULL,
    dw_ff_schemaname character varying(100) NOT NULL,
    dw_ff_tablename character varying(100) NOT NULL,
    dw_agg_schemaname character varying(100) NOT NULL,
    dw_agg_tablename character varying(100) NOT NULL,
    dim_bcp_col character varying(20),
    dim_port_col character varying(20),
    dim_fa_kind_col character varying(20),
    dim_bts_subcell_status_col character varying(20),
    dim_fa_index_col character varying(20),
    dim_band_class_index_col character varying(30),
    dim_cascade_col character varying(20)
);


--
-- Name: parameter_audit_catalog_lookup_tables_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY parameter_audit_catalog_lookup_tables
    ADD CONSTRAINT parameter_audit_catalog_lookup_tables_pkey PRIMARY KEY (dw_dim_schemaname, dw_dim_tablename);


--
-- PostgreSQL database dump complete
--

