--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = voice, pg_catalog;

DROP TABLE voice.daily_und_nbrs_bak;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: daily_und_nbrs_bak; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE daily_und_nbrs_bak (
    item_date date,
    market character varying(50),
    bsc_name character varying(20),
    num_of_instances integer,
    s_bts integer,
    s_sector integer,
    d_pn integer,
    s_cascade_id character varying(20),
    d_cascade_id character varying(20),
    d_sector integer
)
WITH (autovacuum_enabled=true);
ALTER TABLE ONLY daily_und_nbrs_bak ALTER COLUMN item_date SET STATISTICS 1000;


--
-- PostgreSQL database dump complete
--

