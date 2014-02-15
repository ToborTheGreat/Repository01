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

ALTER TABLE ONLY dw.params_audit_market_agg DROP CONSTRAINT params_audit_market_agg_pk;
DROP TABLE dw.params_audit_market_agg;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: params_audit_market_agg; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE params_audit_market_agg (
    day_dim_id integer NOT NULL,
    technology character varying(30) NOT NULL,
    marketname character varying(30) NOT NULL,
    element_class_id integer NOT NULL,
    total_audited_count integer NOT NULL,
    total_failed_count integer NOT NULL,
    priority character varying(20) DEFAULT 'none'::character varying NOT NULL
);


SET default_tablespace = p2_dwindex;

--
-- Name: params_audit_market_agg_pk; Type: CONSTRAINT; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

ALTER TABLE ONLY params_audit_market_agg
    ADD CONSTRAINT params_audit_market_agg_pk PRIMARY KEY (day_dim_id, technology, marketname, element_class_id, priority);


--
-- PostgreSQL database dump complete
--

