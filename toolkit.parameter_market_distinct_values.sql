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

ALTER TABLE ONLY toolkit.parameter_market_distinct_values DROP CONSTRAINT parameter_market_distinct_values_pk;
DROP TABLE toolkit.parameter_market_distinct_values;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: parameter_market_distinct_values; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE parameter_market_distinct_values (
    day_dim_id integer NOT NULL,
    market text NOT NULL,
    parameter_catalog_dim_id integer NOT NULL,
    distinct_parameter_value text NOT NULL,
    distinct_parameter_value_count integer NOT NULL,
    dictinct_parameter_value_noncompliant_count integer NOT NULL,
    release_id integer NOT NULL,
    distinct_parameter_value_audited_count integer
);


--
-- Name: parameter_market_distinct_values_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY parameter_market_distinct_values
    ADD CONSTRAINT parameter_market_distinct_values_pk PRIMARY KEY (day_dim_id, market, parameter_catalog_dim_id, release_id, distinct_parameter_value);


--
-- PostgreSQL database dump complete
--

