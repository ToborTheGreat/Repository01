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

DROP TRIGGER hourly_sam_ecsfb_cfc_stats_trigger_part ON voice.hourly_sam_ecsfb_cfc_stats;
DROP INDEX voice.hourly_sam_ecsfb_cfc_stats_ix2;
DROP INDEX voice.hourly_sam_ecsfb_cfc_stats_ix;
DROP TABLE voice.hourly_sam_ecsfb_cfc_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_ecsfb_cfc_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE hourly_sam_ecsfb_cfc_stats (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    bsc integer,
    rack integer,
    iwp integer,
    mme integer,
    msc integer,
    cfc0 integer,
    cfc1 integer,
    cfc2 integer,
    cfc3 integer,
    cfc4 integer,
    cfc5 integer,
    cfc6 integer,
    cfc7 integer,
    cfc8 integer,
    cfc9 integer,
    cfc10 integer,
    cfc11 integer,
    cfc12 integer,
    cfc13 integer,
    cfc14 integer,
    cfc15 integer,
    cfc16 integer,
    cfc17 integer,
    cfc18 integer,
    cfc19 integer,
    cfc20 integer,
    cfc21 integer,
    cfc22 integer,
    cfc23 integer,
    cfc24 integer,
    cfc25 integer,
    cfc26 integer,
    cfc27 integer,
    cfc28 integer,
    cfc29 integer
)
WITH (autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_voiceindex;

--
-- Name: hourly_sam_ecsfb_cfc_stats_ix; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_ecsfb_cfc_stats_ix ON hourly_sam_ecsfb_cfc_stats USING btree (item_date);


--
-- Name: hourly_sam_ecsfb_cfc_stats_ix2; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_ecsfb_cfc_stats_ix2 ON hourly_sam_ecsfb_cfc_stats USING btree (market);


--
-- Name: hourly_sam_ecsfb_cfc_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER hourly_sam_ecsfb_cfc_stats_trigger_part
    BEFORE INSERT ON hourly_sam_ecsfb_cfc_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_ecsfb_cfc_stats_part();


--
-- PostgreSQL database dump complete
--

