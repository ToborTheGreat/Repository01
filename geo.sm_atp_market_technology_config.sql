--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = geo, pg_catalog;

DROP TABLE geo.sm_atp_market_technology_config;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_market_technology_config; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_market_technology_config (
    market_id integer NOT NULL,
    technology_type_id integer NOT NULL,
    best_server_vector_user_map_id integer NOT NULL,
    rssi_coverage_vector_user_map_id integer NOT NULL
);


--
-- PostgreSQL database dump complete
--

