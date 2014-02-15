--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = lte, pg_catalog;

ALTER TABLE ONLY lte.run_log DROP CONSTRAINT run_log_idx;
DROP TABLE lte.run_log;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: run_log; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE run_log (
    run_stamp timestamp without time zone NOT NULL,
    run_pid integer NOT NULL,
    filename character varying(255) DEFAULT ''::character varying NOT NULL,
    status character varying(10) DEFAULT NULL::character varying,
    command character varying(512) DEFAULT NULL::character varying,
    started timestamp without time zone DEFAULT now() NOT NULL,
    ended timestamp without time zone,
    inserted integer DEFAULT 0 NOT NULL,
    skipped integer DEFAULT 0 NOT NULL,
    dropped integer DEFAULT 0 NOT NULL,
    message character varying(1024) DEFAULT NULL::character varying
)
WITH (autovacuum_enabled=true, toast.autovacuum_enabled=true);


SET default_tablespace = p2_lteindex;

--
-- Name: run_log_idx; Type: CONSTRAINT; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

ALTER TABLE ONLY run_log
    ADD CONSTRAINT run_log_idx PRIMARY KEY (run_stamp, run_pid, filename);


--
-- PostgreSQL database dump complete
--

