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

DROP TRIGGER hourly_sam_softer_ho_stats_trigger_part ON voice.hourly_sam_softer_ho_stats;
DROP INDEX voice.hourly_sam_softer_ho_stats_idx1;
DROP INDEX voice.hourly_sam_softer_ho_stats_idx;
ALTER TABLE ONLY voice.hourly_sam_softer_ho_stats DROP CONSTRAINT hourly_sam_softer_ho_stats_pk;
DROP TABLE voice.hourly_sam_softer_ho_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_softer_ho_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE hourly_sam_softer_ho_stats (
    market character varying(50) NOT NULL,
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    s_nid integer NOT NULL,
    s_bsc integer,
    s_bts integer NOT NULL,
    s_sector integer NOT NULL,
    d_sector integer NOT NULL,
    att integer,
    suc integer,
    rsc_una integer,
    etc_fail integer,
    hcm_to integer,
    avg_suc real,
    cam_att integer,
    cam_ho integer,
    cam_blk integer,
    drp_att integer,
    drp_suc integer,
    drp_avg_suc real
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);
ALTER TABLE ONLY hourly_sam_softer_ho_stats ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: hourly_sam_softer_ho_stats_pk; Type: CONSTRAINT; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

ALTER TABLE ONLY hourly_sam_softer_ho_stats
    ADD CONSTRAINT hourly_sam_softer_ho_stats_pk PRIMARY KEY (item_date, market, bsc_name, s_nid, s_bts, s_sector, d_sector, hour);


--
-- Name: hourly_sam_softer_ho_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_softer_ho_stats_idx ON hourly_sam_softer_ho_stats USING btree (item_date, bsc_name, s_bts);


--
-- Name: hourly_sam_softer_ho_stats_idx1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_softer_ho_stats_idx1 ON hourly_sam_softer_ho_stats USING btree (item_date);


--
-- Name: hourly_sam_softer_ho_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER hourly_sam_softer_ho_stats_trigger_part
    BEFORE INSERT ON hourly_sam_softer_ho_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_softer_ho_stats_part();


--
-- PostgreSQL database dump complete
--

