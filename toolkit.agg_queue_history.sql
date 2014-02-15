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

DROP INDEX toolkit.agg_queue_history_idx;
DROP TABLE toolkit.agg_queue_history;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: agg_queue_history; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE agg_queue_history (
    market character varying(30),
    item_date date,
    schema_name character varying(20),
    function_name character varying(80),
    request_date timestamp without time zone,
    status character varying(15),
    completed_date timestamp(0) without time zone,
    requested_by character varying(200),
    info1 character varying(50),
    runafter_time timestamp without time zone,
    begin_date timestamp(0) without time zone,
    not_found_running_ts timestamp(0) without time zone,
    files_loaded smallint,
    total_files smallint
);


--
-- Name: agg_queue_history_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX agg_queue_history_idx ON agg_queue_history USING btree (item_date);


--
-- PostgreSQL database dump complete
--

