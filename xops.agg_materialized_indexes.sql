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

DROP TRIGGER agg_index_strategies_befins ON xops.agg_materialized_indexes;
DROP TABLE xops.agg_materialized_indexes;
SET search_path = xops, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: agg_materialized_indexes; Type: TABLE; Schema: xops; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE agg_materialized_indexes (
    agg_name character varying(128),
    agg_id integer NOT NULL,
    sql_id integer NOT NULL,
    index_id integer NOT NULL,
    index_type character varying(128),
    index_sql text
);


--
-- Name: agg_index_strategies_befins; Type: TRIGGER; Schema: xops; Owner: -
--

CREATE TRIGGER agg_index_strategies_befins
    BEFORE INSERT ON agg_materialized_indexes
    FOR EACH ROW
    EXECUTE PROCEDURE agg_index_strategies_bi();


--
-- PostgreSQL database dump complete
--

