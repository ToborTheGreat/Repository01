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

DROP TABLE toolkit.users;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: users; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE users (
    username character varying(255) NOT NULL,
    is_admin character(1) DEFAULT 'N'::bpchar NOT NULL,
    password character varying(100),
    primary_market character varying(50)
);


--
-- PostgreSQL database dump complete
--

