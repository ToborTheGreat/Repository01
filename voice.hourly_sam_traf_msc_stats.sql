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

DROP TRIGGER hourly_sam_traf_msc_stats_trigger_part ON voice.hourly_sam_traf_msc_stats;
DROP INDEX voice.hourly_sam_traf_msc_stats_idx4;
DROP INDEX voice.hourly_sam_traf_msc_stats_idx1;
DROP INDEX voice.hourly_sam_traf_msc_stats_idx;
ALTER TABLE ONLY voice.hourly_sam_traf_msc_stats DROP CONSTRAINT hourly_sam_traf_msc_stats_pk;
DROP TABLE voice.hourly_sam_traf_msc_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_traf_msc_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE hourly_sam_traf_msc_stats (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    bsc integer,
    bts integer NOT NULL,
    sector integer NOT NULL,
    band integer,
    fa integer NOT NULL,
    m_att integer,
    m_bts_una integer,
    m_syn_to integer,
    m_not_acq integer,
    m_hcm_to integer,
    m_bad_frm integer,
    m_msc_drp integer,
    m_etc_fail integer,
    m_suc integer,
    m_mob_rel integer,
    m_msc_clr integer,
    m_drp_bad integer,
    m_drp_etc integer,
    m_cpl_rto real,
    m_drp_rto real,
    m_avg_trf real,
    m_avg_hld real
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);
ALTER TABLE ONLY hourly_sam_traf_msc_stats ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: hourly_sam_traf_msc_stats_pk; Type: CONSTRAINT; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

ALTER TABLE ONLY hourly_sam_traf_msc_stats
    ADD CONSTRAINT hourly_sam_traf_msc_stats_pk PRIMARY KEY (item_date, hour, bsc_name, bts, sector, fa);


--
-- Name: hourly_sam_traf_msc_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_traf_msc_stats_idx ON hourly_sam_traf_msc_stats USING btree (bsc_name, bts, sector);


--
-- Name: hourly_sam_traf_msc_stats_idx1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_traf_msc_stats_idx1 ON hourly_sam_traf_msc_stats USING btree (item_date);

ALTER TABLE hourly_sam_traf_msc_stats CLUSTER ON hourly_sam_traf_msc_stats_idx1;


--
-- Name: hourly_sam_traf_msc_stats_idx4; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE UNIQUE INDEX hourly_sam_traf_msc_stats_idx4 ON hourly_sam_traf_msc_stats USING btree (item_date, market, hour, bsc_name, bts, sector, fa);


--
-- Name: hourly_sam_traf_msc_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER hourly_sam_traf_msc_stats_trigger_part
    BEFORE INSERT ON hourly_sam_traf_msc_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_traf_msc_stats_part();


--
-- PostgreSQL database dump complete
--

