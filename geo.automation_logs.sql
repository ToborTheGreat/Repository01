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

ALTER TABLE ONLY geo.automation_logs DROP CONSTRAINT automation_logs_pkey;
DROP TABLE geo.automation_logs;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: automation_logs; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE automation_logs (
    automation_id integer DEFAULT nextval('public.geo_automation_logs_automation_id_seq'::regclass) NOT NULL,
    market_name character varying,
    map_name character varying,
    project_name character varying,
    category character varying,
    file_names character varying,
    comments character varying,
    result character varying,
    run_time timestamp without time zone,
    time_taken integer
);


--
-- Name: automation_logs_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY automation_logs
    ADD CONSTRAINT automation_logs_pkey PRIMARY KEY (automation_id);


--
-- PostgreSQL database dump complete
--

