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

ALTER TABLE ONLY toolkit.agg_market_dep DROP CONSTRAINT agg_market_dep_pkey;
DROP TABLE toolkit.agg_market_dep;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: agg_market_dep; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE agg_market_dep (
    market character varying(50) NOT NULL,
    dep_bsc_name character varying(50) NOT NULL
);


--
-- Name: agg_market_dep_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY agg_market_dep
    ADD CONSTRAINT agg_market_dep_pkey PRIMARY KEY (market, dep_bsc_name);


--
-- PostgreSQL database dump complete
--

