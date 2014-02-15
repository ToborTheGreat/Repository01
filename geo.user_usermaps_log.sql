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

DROP TABLE geo.user_usermaps_log;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: user_usermaps_log; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE user_usermaps_log (
    user_usermaps_id integer,
    modified_by integer,
    modified_on timestamp with time zone NOT NULL,
    action character varying
);


--
-- PostgreSQL database dump complete
--

