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

DROP TRIGGER hourly_sam_imhho_v_stats_trigger_part ON voice.hourly_sam_imhho_v_stats;
DROP INDEX voice.hourly_sam_imhho_v_stats_idx4;
DROP INDEX voice.hourly_sam_imhho_v_stats_idx1;
DROP INDEX voice.hourly_sam_imhho_v_stats_idx;
DROP TABLE voice.hourly_sam_imhho_v_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_imhho_v_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE hourly_sam_imhho_v_stats (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    s_nid integer NOT NULL,
    s_bts integer NOT NULL,
    d_nid integer NOT NULL,
    d_bts integer NOT NULL,
    att integer,
    suc integer,
    msc_rjt integer,
    cmp_msc integer,
    etc_fail integer,
    avg_suc real,
    s_band integer,
    d_band integer
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);
ALTER TABLE ONLY hourly_sam_imhho_v_stats ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: hourly_sam_imhho_v_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_imhho_v_stats_idx ON hourly_sam_imhho_v_stats USING btree (item_date);

ALTER TABLE hourly_sam_imhho_v_stats CLUSTER ON hourly_sam_imhho_v_stats_idx;


--
-- Name: hourly_sam_imhho_v_stats_idx1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_imhho_v_stats_idx1 ON hourly_sam_imhho_v_stats USING btree (item_date, bsc_name, s_bts);


--
-- Name: hourly_sam_imhho_v_stats_idx4; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_imhho_v_stats_idx4 ON hourly_sam_imhho_v_stats USING btree (item_date, market, bsc_name, s_bts, hour);


--
-- Name: hourly_sam_imhho_v_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER hourly_sam_imhho_v_stats_trigger_part
    BEFORE INSERT ON hourly_sam_imhho_v_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_imhho_v_stats_part();


--
-- PostgreSQL database dump complete
--

