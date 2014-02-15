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

DROP TABLE toolkit.agg_files_loaded;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: agg_files_loaded; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE agg_files_loaded (
    lsm_or_market character varying(30) NOT NULL,
    item_date date NOT NULL,
    file_number smallint,
    load_count smallint,
    load_ts timestamp without time zone
);


--
-- PostgreSQL database dump complete
--

