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

DROP TABLE toolkit.om_catalog_bak;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: om_catalog_bak; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE om_catalog_bak (
    tech character varying(20),
    level character varying(20),
    daily_hourly character varying(10),
    option character varying(20),
    kpi character varying(100),
    db_schema character varying(20),
    db_table character varying(60),
    db_col character varying(60),
    def_style character varying(10),
    def_yaxis integer,
    ygroup character varying(20),
    band_avail character varying(20),
    metric_id integer,
    leg_baseline_metric_id integer,
    source_agg_option character varying(15),
    thematic_type_id integer,
    bsc_col_name character varying(20),
    site_col_name character varying(20),
    metric_group character varying(20)
);


--
-- PostgreSQL database dump complete
--

