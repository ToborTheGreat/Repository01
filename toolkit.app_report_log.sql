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

DROP INDEX toolkit.app_report_log_idx;
ALTER TABLE ONLY toolkit.app_report_log DROP CONSTRAINT app_report_log_pkey;
DROP TABLE toolkit.app_report_log;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: app_report_log; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE app_report_log (
    app_report_log_id integer NOT NULL,
    schema_name character varying(20) NOT NULL,
    function_name character varying(70) NOT NULL,
    start_ts timestamp without time zone NOT NULL,
    end_ts timestamp without time zone,
    num_rows integer,
    opt_market character varying(50),
    opt_start_date date,
    opt_end_date date,
    opt_cluster character varying(100),
    opt_level character varying(20),
    opt_tech character varying(20),
    opt_misc1 character varying(50),
    opt_misc2 character varying(50),
    opt_misc3 character varying(50),
    username character varying(100),
    group_req_id integer
);


--
-- Name: app_report_log_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY app_report_log
    ADD CONSTRAINT app_report_log_pkey PRIMARY KEY (app_report_log_id);


--
-- Name: app_report_log_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX app_report_log_idx ON app_report_log USING btree (username);


--
-- PostgreSQL database dump complete
--

