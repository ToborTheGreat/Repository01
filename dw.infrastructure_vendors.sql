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

DROP INDEX dw.infrastructure_vendors_ux;
ALTER TABLE ONLY dw.infrastructure_vendors DROP CONSTRAINT infrastructure_vendors_pk;
DROP TABLE dw.infrastructure_vendors;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: infrastructure_vendors; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE infrastructure_vendors (
    infrastructure_vendor_id integer NOT NULL,
    ext_ref character varying(20) NOT NULL,
    description character varying(100),
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL,
    vendor_prefix character varying(3) NOT NULL
);


SET default_tablespace = p2_dwindex;

--
-- Name: infrastructure_vendors_pk; Type: CONSTRAINT; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

ALTER TABLE ONLY infrastructure_vendors
    ADD CONSTRAINT infrastructure_vendors_pk PRIMARY KEY (infrastructure_vendor_id);


--
-- Name: infrastructure_vendors_ux; Type: INDEX; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

CREATE UNIQUE INDEX infrastructure_vendors_ux ON infrastructure_vendors USING btree (description);


--
-- PostgreSQL database dump complete
--

