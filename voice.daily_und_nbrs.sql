--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = voice, pg_catalog;

DROP TRIGGER voice_daily_und_nbrs_trigger_part ON voice.daily_und_nbrs;
DROP INDEX voice.daily_und_nbrs_idx1;
DROP INDEX voice.daily_und_nbrs_idx;
DROP TABLE voice.daily_und_nbrs;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: daily_und_nbrs; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE daily_und_nbrs (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    bsc_name character varying(20) NOT NULL,
    num_of_instances integer NOT NULL,
    s_bts integer,
    s_sector integer,
    d_pn integer,
    s_bandclass integer,
    active_bts1 integer,
    active_sector1_code character varying(20),
    active_bts2 integer,
    active_sector2_code character varying(20),
    active_bts3 integer,
    active_sector3_code character varying(20),
    s_cascade_id character varying(20),
    d_cascade_id character varying(20),
    d_sector integer,
    s_nid integer,
    active_nid1 integer,
    active_nid2 integer,
    active_nid3 integer,
    active_cascade_id1 character varying(20),
    active_cascade_id2 character varying(20),
    active_cascade_id3 character varying(20),
    logical_market character varying(50)
)
WITH (autovacuum_enabled=true);
ALTER TABLE ONLY daily_und_nbrs ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: daily_und_nbrs_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_und_nbrs_idx ON daily_und_nbrs USING btree (item_date);


--
-- Name: daily_und_nbrs_idx1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_und_nbrs_idx1 ON daily_und_nbrs USING btree (item_date, s_cascade_id);


--
-- Name: voice_daily_und_nbrs_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER voice_daily_und_nbrs_trigger_part
    BEFORE INSERT ON daily_und_nbrs
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_und_nbrs_part();


--
-- PostgreSQL database dump complete
--

