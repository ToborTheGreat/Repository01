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

ALTER TABLE ONLY toolkit.agg_list DROP CONSTRAINT agg_list_pk;
DROP TABLE toolkit.agg_list;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: agg_list; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE agg_list (
    schema_name character varying(20) NOT NULL,
    function_name character varying(60) NOT NULL,
    tech character varying(10) NOT NULL,
    agg_group character varying(20) NOT NULL,
    agg_seq integer NOT NULL,
    auto_enabled character(1) NOT NULL,
    level character varying(15) NOT NULL,
    dequeue_enabled character(1) DEFAULT 'Y'::bpchar,
    nested_loops_enabled character(1) DEFAULT 'Y'::bpchar,
    needed_for_logical_market character(1) DEFAULT 'N'::bpchar NOT NULL,
    synchronous_commit_enabled character(1) DEFAULT 'N'::bpchar NOT NULL,
    constraint_exclusion_enabled character(1) DEFAULT 'N'::bpchar NOT NULL,
    check_inter_market_deps_for_logical character(1) DEFAULT 'N'::bpchar
);


--
-- Name: agg_list_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY agg_list
    ADD CONSTRAINT agg_list_pk PRIMARY KEY (schema_name, function_name);


--
-- PostgreSQL database dump complete
--

