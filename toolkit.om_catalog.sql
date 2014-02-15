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

DROP INDEX toolkit.ux_om_catalog;
DROP INDEX toolkit.om_catalog_idx;
ALTER TABLE ONLY toolkit.om_catalog DROP CONSTRAINT om_catalog_pkey;
DROP TABLE toolkit.om_catalog;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: om_catalog; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE om_catalog (
    tech character varying(20),
    level character varying(20),
    daily_hourly character varying(10),
    option character varying(20),
    kpi character varying(100),
    db_schema character varying(20) DEFAULT 'toolkit'::character varying,
    db_table character varying(60),
    db_col character varying(60),
    def_style character varying(10) DEFAULT 'Bar'::character varying,
    def_yaxis integer DEFAULT 1,
    ygroup character varying(20) DEFAULT 'cnt'::character varying,
    band_avail character varying(20),
    metric_id integer NOT NULL,
    leg_baseline_metric_id integer,
    source_agg_option character varying(15),
    thematic_type_id integer,
    bsc_col_name character varying(20),
    site_col_name character varying(20),
    metric_group character varying(20) NOT NULL,
    enabled_in_chart_tool character(1) DEFAULT 'Y'::bpchar NOT NULL,
    chart_sort_order integer DEFAULT 0 NOT NULL,
    vendor_desc character varying,
    kpi_group character varying DEFAULT 'TBD'::character varying,
    metric_type character varying(3) DEFAULT 'om'::character varying NOT NULL,
    kpi_subgroup character varying DEFAULT 'All'::character varying
);


--
-- Name: om_catalog_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY om_catalog
    ADD CONSTRAINT om_catalog_pkey PRIMARY KEY (metric_id);


--
-- Name: om_catalog_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX om_catalog_idx ON om_catalog USING btree (tech, level);


--
-- Name: ux_om_catalog; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX ux_om_catalog ON om_catalog USING btree (metric_id, metric_type);


--
-- PostgreSQL database dump complete
--

