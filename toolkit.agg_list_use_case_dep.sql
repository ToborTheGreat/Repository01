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

ALTER TABLE ONLY toolkit.agg_list_use_case_dep DROP CONSTRAINT agg_list_use_case_dep_idx;
DROP TABLE toolkit.agg_list_use_case_dep;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: agg_list_use_case_dep; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE agg_list_use_case_dep (
    mm_use_case character varying(40) NOT NULL,
    schema_name character varying(20) NOT NULL,
    function_name character varying(70) NOT NULL
);


--
-- Name: agg_list_use_case_dep_idx; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY agg_list_use_case_dep
    ADD CONSTRAINT agg_list_use_case_dep_idx PRIMARY KEY (mm_use_case, schema_name, function_name);


--
-- PostgreSQL database dump complete
--

