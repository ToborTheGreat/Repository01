--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = xops, pg_catalog;

DROP TABLE xops.om_catalog_sample_values;
SET search_path = xops, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: om_catalog_sample_values; Type: TABLE; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE om_catalog_sample_values (
    metric_id integer NOT NULL,
    min_val numeric(20,0),
    max_val numeric(20,0),
    avg_val numeric(20,0)
);
ALTER TABLE ONLY om_catalog_sample_values ALTER COLUMN metric_id SET STATISTICS 0;
ALTER TABLE ONLY om_catalog_sample_values ALTER COLUMN min_val SET STATISTICS 0;
ALTER TABLE ONLY om_catalog_sample_values ALTER COLUMN max_val SET STATISTICS 0;


--
-- PostgreSQL database dump complete
--

