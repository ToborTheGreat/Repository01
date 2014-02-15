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

ALTER TABLE ONLY toolkit.agg_log DROP CONSTRAINT agg_log_pkey;
DROP TABLE toolkit.agg_log;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: agg_log; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE agg_log (
    schema_name character varying(20) NOT NULL,
    function_name character varying(60) NOT NULL,
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    start_ts timestamp without time zone NOT NULL,
    end_ts timestamp without time zone,
    run_cnt integer NOT NULL,
    rows_daily integer,
    rows_bh integer
);


--
-- Name: agg_log_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY agg_log
    ADD CONSTRAINT agg_log_pkey PRIMARY KEY (schema_name, function_name, item_date, market);


--
-- PostgreSQL database dump complete
--

