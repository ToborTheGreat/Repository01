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

DROP TABLE toolkit.cluster_bak_07252013;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: cluster_bak_07252013; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE cluster_bak_07252013 (
    market character varying(50),
    cascade_id character varying(30),
    cluster character varying(50),
    cluster_group character varying(20),
    modified_by character varying(100)
);


--
-- PostgreSQL database dump complete
--

