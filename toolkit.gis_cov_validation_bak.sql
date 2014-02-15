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

DROP TABLE toolkit.gis_cov_validation_bak;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: gis_cov_validation_bak; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE gis_cov_validation_bak (
    v_ec double precision,
    v_rssi double precision,
    v_ecio real,
    e_ec double precision,
    e_rssi double precision,
    e_sinr double precision,
    row_num integer
);


--
-- PostgreSQL database dump complete
--

