--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

DROP TABLE public.temp_bb;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: temp_bb; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE temp_bb (
    item_date date,
    vendor character varying(30),
    marketname character varying(30),
    rncmanagername character varying(30),
    rncname text,
    cascadeid character varying(30),
    sector integer
);


--
-- PostgreSQL database dump complete
--

