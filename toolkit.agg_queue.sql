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

DROP INDEX toolkit.agg_queue_idx7;
DROP INDEX toolkit.agg_queue_idx6;
DROP INDEX toolkit.agg_queue_idx5;
DROP INDEX toolkit.agg_queue_idx4;
DROP INDEX toolkit.agg_queue_idx3;
DROP INDEX toolkit.agg_queue_idx2;
DROP INDEX toolkit.agg_queue_idx1;
DROP INDEX toolkit.agg_queue_idx;
DROP TABLE toolkit.agg_queue;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: agg_queue; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE agg_queue (
    market character varying(30) NOT NULL,
    item_date date NOT NULL,
    schema_name character varying(20) NOT NULL,
    function_name character varying(80),
    request_date timestamp without time zone DEFAULT now() NOT NULL,
    status character varying(15) NOT NULL,
    completed_date timestamp(0) without time zone,
    requested_by character varying(200),
    info1 character varying(50),
    runafter_time timestamp without time zone DEFAULT now() NOT NULL,
    begin_date timestamp without time zone,
    not_found_running_ts timestamp without time zone,
    files_loaded smallint,
    total_files smallint
);


--
-- Name: agg_queue_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX agg_queue_idx ON agg_queue USING btree (status);


--
-- Name: agg_queue_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX agg_queue_idx1 ON agg_queue USING btree (market, status);


--
-- Name: agg_queue_idx2; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX agg_queue_idx2 ON agg_queue USING btree (status) WHERE ((status)::text = 'in process'::text);


--
-- Name: agg_queue_idx3; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX agg_queue_idx3 ON agg_queue USING btree (runafter_time, status);


--
-- Name: agg_queue_idx4; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX agg_queue_idx4 ON agg_queue USING btree (status, market, schema_name, function_name, item_date);


--
-- Name: agg_queue_idx5; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX agg_queue_idx5 ON agg_queue USING btree (status, schema_name, function_name);


--
-- Name: agg_queue_idx6; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX agg_queue_idx6 ON agg_queue USING btree (status, runafter_time);


--
-- Name: agg_queue_idx7; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX agg_queue_idx7 ON agg_queue USING btree (market, item_date, schema_name, function_name, status, runafter_time, request_date);


--
-- PostgreSQL database dump complete
--

