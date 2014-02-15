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

DROP TABLE geo.user_sql_debug;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: user_sql_debug; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE user_sql_debug (
    user_id integer NOT NULL,
    batch_identifier character varying(30) NOT NULL,
    create_date timestamp without time zone NOT NULL,
    step_name character varying(50) NOT NULL,
    log_info character varying(5000)
);


--
-- PostgreSQL database dump complete
--

