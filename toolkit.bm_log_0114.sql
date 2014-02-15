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

ALTER TABLE ONLY toolkit.bm_log_0114 DROP CONSTRAINT bm_log_0114_pk;
DROP TABLE toolkit.bm_log_0114;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: bm_log_0114; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE bm_log_0114 (
    log_id integer DEFAULT nextval('bm_log_log_id_seq'::regclass) NOT NULL,
    schema_name text NOT NULL,
    table_name text NOT NULL,
    bk_start_date timestamp without time zone,
    bk_end_date timestamp without time zone,
    bk_file text NOT NULL,
    bk_rows integer,
    bk_location text,
    bk_level integer,
    bk_restore_start_date timestamp without time zone,
    bk_restore_end_date timestamp without time zone
);


--
-- Name: bm_log_0114_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY bm_log_0114
    ADD CONSTRAINT bm_log_0114_pk PRIMARY KEY (schema_name, table_name, bk_file);


--
-- PostgreSQL database dump complete
--

