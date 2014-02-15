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

DROP TABLE toolkit.dae_materialized_inventory;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: dae_materialized_inventory; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE dae_materialized_inventory (
    dae_id integer,
    dae_type character varying,
    dae_name text,
    dae_date date
);


--
-- Name: TABLE dae_materialized_inventory; Type: COMMENT; Schema: toolkit; Owner: -
--

COMMENT ON TABLE dae_materialized_inventory IS 'inventory table used by dae_teardown';


--
-- PostgreSQL database dump complete
--

