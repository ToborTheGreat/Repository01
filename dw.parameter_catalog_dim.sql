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

ALTER TABLE ONLY dw.parameter_catalog_dim DROP CONSTRAINT parameter_catalog_dim_vnd;
ALTER TABLE ONLY dw.parameter_catalog_dim DROP CONSTRAINT parameter_catalog_dim_ele;
DROP INDEX dw.parameter_catalog_dim_ux;
ALTER TABLE ONLY dw.parameter_catalog_dim DROP CONSTRAINT parameter_catalog_dim_pkey;
DROP TABLE dw.parameter_catalog_dim;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: parameter_catalog_dim; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE parameter_catalog_dim (
    parameter_catalog_dim_id integer DEFAULT nextval('parameter_catalog_dim_seq'::regclass) NOT NULL,
    technology character varying(50) NOT NULL,
    infrastructure_vendor_name character varying(50) NOT NULL,
    parameter_name character varying(100) NOT NULL,
    vendor_desc character varying(4000),
    vendor_rec_value character varying(100),
    element_class character varying(100) NOT NULL,
    parameter_catalog_group character varying(50),
    dw_schemaname character varying(100) DEFAULT 'dw_lte'::character varying NOT NULL,
    dw_tablename character varying(100) NOT NULL,
    dw_columnname character varying(100) NOT NULL,
    effective_begin timestamp without time zone NOT NULL,
    effective_end timestamp without time zone NOT NULL,
    md5 character varying(100),
    parameter_catalog_priority character varying(20) DEFAULT 'none'::character varying NOT NULL
);


SET default_tablespace = p2_dwindex;

--
-- Name: parameter_catalog_dim_pkey; Type: CONSTRAINT; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

ALTER TABLE ONLY parameter_catalog_dim
    ADD CONSTRAINT parameter_catalog_dim_pkey PRIMARY KEY (parameter_catalog_dim_id);


--
-- Name: parameter_catalog_dim_ux; Type: INDEX; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

CREATE UNIQUE INDEX parameter_catalog_dim_ux ON parameter_catalog_dim USING btree (dw_schemaname, dw_tablename, dw_columnname, element_class, effective_begin);


--
-- Name: parameter_catalog_dim_ele; Type: FK CONSTRAINT; Schema: dw; Owner: -
--

ALTER TABLE ONLY parameter_catalog_dim
    ADD CONSTRAINT parameter_catalog_dim_ele FOREIGN KEY (element_class) REFERENCES element_class(description);


--
-- Name: parameter_catalog_dim_vnd; Type: FK CONSTRAINT; Schema: dw; Owner: -
--

ALTER TABLE ONLY parameter_catalog_dim
    ADD CONSTRAINT parameter_catalog_dim_vnd FOREIGN KEY (infrastructure_vendor_name) REFERENCES infrastructure_vendors(description);


--
-- PostgreSQL database dump complete
--

