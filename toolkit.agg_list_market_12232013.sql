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

DROP TABLE toolkit.agg_list_market_12232013;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_usermaps;

SET default_with_oids = false;

--
-- Name: agg_list_market_12232013; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_usermaps
--

CREATE TABLE agg_list_market_12232013 (
    schema_name character varying(70),
    function_name character varying(70),
    market character varying(50),
    bsm_wait_count integer
);


--
-- PostgreSQL database dump complete
--

