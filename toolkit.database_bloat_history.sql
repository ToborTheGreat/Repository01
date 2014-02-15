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

ALTER TABLE ONLY toolkit.database_bloat_history DROP CONSTRAINT database_bloat_history_pk;
DROP TABLE toolkit.database_bloat_history;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: database_bloat_history; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE database_bloat_history (
    history_date date NOT NULL,
    schema_name text NOT NULL,
    megabytes integer,
    num_objects integer
);


--
-- Name: database_bloat_history_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY database_bloat_history
    ADD CONSTRAINT database_bloat_history_pk PRIMARY KEY (history_date, schema_name);


--
-- PostgreSQL database dump complete
--

