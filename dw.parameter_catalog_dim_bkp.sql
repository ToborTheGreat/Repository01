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

DROP TABLE dw.parameter_catalog_dim_bkp;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: parameter_catalog_dim_bkp; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE parameter_catalog_dim_bkp (
    parameter_catalog_dim_id integer,
    technology character varying(50),
    infrastructure_vendor_name character varying(50),
    parameter_name character varying(100),
    vendor_desc character varying(4000),
    vendor_rec_value character varying(100),
    element_class character varying(20),
    parameter_catalog_group character varying(50),
    dw_schemaname character varying(100),
    dw_tablename character varying(100),
    dw_columnname character varying(100),
    effective_begin timestamp without time zone,
    effective_end timestamp without time zone,
    md5 character varying(100)
);


--
-- PostgreSQL database dump complete
--

