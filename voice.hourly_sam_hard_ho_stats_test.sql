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

DROP TRIGGER hourly_sam_hard_ho_stats_test_trigger_part ON voice.hourly_sam_hard_ho_stats_test;
DROP INDEX voice.hourly_sam_hard_ho_stats_test_itmdt_ix;
ALTER TABLE ONLY voice.hourly_sam_hard_ho_stats_test DROP CONSTRAINT hourly_sam_hard_ho_stats_testpk;
DROP TABLE voice.hourly_sam_hard_ho_stats_test;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_hard_ho_stats_test; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE hourly_sam_hard_ho_stats_test (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    s_nid integer NOT NULL,
    s_bsc integer,
    s_bts integer NOT NULL,
    d_nid integer NOT NULL,
    d_bsc integer,
    d_bts integer NOT NULL,
    att integer,
    suc integer,
    ce_una integer,
    rsc_una integer,
    syn_to integer,
    etc_fail integer,
    hcm_to integer,
    avg_suc real,
    bsc_call_drp integer,
    kevin integer
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);
ALTER TABLE ONLY hourly_sam_hard_ho_stats_test ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: hourly_sam_hard_ho_stats_testpk; Type: CONSTRAINT; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

ALTER TABLE ONLY hourly_sam_hard_ho_stats_test
    ADD CONSTRAINT hourly_sam_hard_ho_stats_testpk PRIMARY KEY (item_date, hour, bsc_name, s_nid, s_bts, d_nid, d_bts);


--
-- Name: hourly_sam_hard_ho_stats_test_itmdt_ix; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_hard_ho_stats_test_itmdt_ix ON hourly_sam_hard_ho_stats_test USING btree (item_date);


--
-- Name: hourly_sam_hard_ho_stats_test_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER hourly_sam_hard_ho_stats_test_trigger_part
    BEFORE INSERT ON hourly_sam_hard_ho_stats_test
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_hard_ho_stats_test_part();


--
-- PostgreSQL database dump complete
--

