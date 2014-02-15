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

ALTER TABLE ONLY toolkit.report_stats_by_market DROP CONSTRAINT report_stats_by_market_pk;
DROP TABLE toolkit.report_stats_by_market;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_stats_by_market; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_stats_by_market (
    report_name character varying(100) NOT NULL,
    market character varying(1000) NOT NULL,
    submit_date date NOT NULL,
    total_run_count bigint,
    runtime_total_minutes numeric,
    runtime_avg_minutes numeric,
    runtime_max_minutes numeric,
    runtime_min_minutes numeric,
    stddev_reuntime_minutes numeric,
    deq_total_minutes numeric,
    deq_avg_minutes numeric,
    deq_max_minutes numeric,
    stddev_deq_minutes numeric
);


--
-- Name: report_stats_by_market_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_stats_by_market
    ADD CONSTRAINT report_stats_by_market_pk PRIMARY KEY (report_name, market, submit_date);


--
-- PostgreSQL database dump complete
--

