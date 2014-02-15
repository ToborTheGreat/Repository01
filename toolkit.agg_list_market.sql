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

ALTER TABLE ONLY toolkit.agg_list_market DROP CONSTRAINT agg_list_market_pkey;
DROP TABLE toolkit.agg_list_market;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: agg_list_market; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE agg_list_market (
    schema_name character varying(70) NOT NULL,
    function_name character varying(70) NOT NULL,
    market character varying(50) NOT NULL,
    bsm_wait_count integer DEFAULT 1 NOT NULL
);


--
-- Name: agg_list_market_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY agg_list_market
    ADD CONSTRAINT agg_list_market_pkey PRIMARY KEY (schema_name, function_name, market);


--
-- PostgreSQL database dump complete
--

