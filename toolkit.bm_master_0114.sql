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

ALTER TABLE ONLY toolkit.bm_master_0114 DROP CONSTRAINT bm_master_0114_pk;
DROP TABLE toolkit.bm_master_0114;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: bm_master_0114; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE bm_master_0114 (
    bm_id integer DEFAULT nextval('bm_master_bm_id_seq'::regclass) NOT NULL,
    schema_name text NOT NULL,
    table_name text NOT NULL,
    bk_stream integer,
    bk_on boolean DEFAULT true,
    bk_until date,
    bk_location text,
    bk_status text,
    bk_last date,
    bk_level integer,
    bk_work_state character varying(16),
    bk_thread integer,
    bk_restore_state character varying(16),
    bk_restore_last date,
    bk_restore_thread integer
);


--
-- Name: bm_master_0114_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY bm_master_0114
    ADD CONSTRAINT bm_master_0114_pk PRIMARY KEY (schema_name, table_name);


--
-- PostgreSQL database dump complete
--

