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

ALTER TABLE ONLY toolkit.notify_link_info DROP CONSTRAINT notify_link_info_pk;
DROP TABLE toolkit.notify_link_info;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: notify_link_info; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE notify_link_info (
    db_name text NOT NULL,
    user_name text,
    user_pass text
);


--
-- Name: notify_link_info_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY notify_link_info
    ADD CONSTRAINT notify_link_info_pk PRIMARY KEY (db_name);


--
-- PostgreSQL database dump complete
--

