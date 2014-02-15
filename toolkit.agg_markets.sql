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

ALTER TABLE ONLY toolkit.agg_markets DROP CONSTRAINT agg_markets_pkey;
DROP TABLE toolkit.agg_markets;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: agg_markets; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE agg_markets (
    market character varying(30) NOT NULL,
    bsm_wait_count integer NOT NULL,
    wait_timeout_seconds integer NOT NULL,
    processing_order integer DEFAULT 100,
    logical_market character(1) DEFAULT 'N'::bpchar NOT NULL,
    agg_data_avail_goal integer,
    wait_minutes_from_midnight smallint
);


--
-- Name: agg_markets_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY agg_markets
    ADD CONSTRAINT agg_markets_pkey PRIMARY KEY (market);


--
-- PostgreSQL database dump complete
--

