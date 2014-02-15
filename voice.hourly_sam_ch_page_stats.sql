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

DROP TRIGGER hourly_sam_ch_page_stats_trigger_part ON voice.hourly_sam_ch_page_stats;
DROP INDEX voice.hourly_sam_ch_page_stats_idx4;
DROP INDEX voice.hourly_sam_ch_page_stats_idx;
ALTER TABLE ONLY voice.hourly_sam_ch_page_stats DROP CONSTRAINT hourly_sam_ch_page_stats_pk;
DROP TABLE voice.hourly_sam_ch_page_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_ch_page_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE hourly_sam_ch_page_stats (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    bts integer NOT NULL,
    band integer,
    fa integer NOT NULL,
    pch_avl integer,
    max_lod integer,
    msg_cnt integer,
    avg_lod real,
    a_tot_msg integer,
    a_gpm_msg integer,
    a_ord_msg integer,
    a_asn_msg integer,
    a_dab_msg integer,
    a_ser_msg integer,
    a_fnm_msg integer,
    a_sdb_msg integer,
    b_tot_msg integer,
    b_gpm_msg integer,
    b_odr_msg integer,
    b_asn_msg integer,
    b_dab_msg integer,
    b_ser_msg integer,
    b_fnm_msg integer,
    b_sdb_msg integer,
    g_tot_msg integer,
    g_gpm_msg integer,
    g_odr_msg integer,
    g_asn_msg integer,
    g_dab_msg integer,
    g_ser_msg integer,
    g_fnm_msg integer,
    g_sdb_msg integer
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);
ALTER TABLE ONLY hourly_sam_ch_page_stats ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: hourly_sam_ch_page_stats_pk; Type: CONSTRAINT; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

ALTER TABLE ONLY hourly_sam_ch_page_stats
    ADD CONSTRAINT hourly_sam_ch_page_stats_pk PRIMARY KEY (item_date, hour, bsc_name, bts, fa);


--
-- Name: hourly_sam_ch_page_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_ch_page_stats_idx ON hourly_sam_ch_page_stats USING btree (item_date);


--
-- Name: hourly_sam_ch_page_stats_idx4; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE UNIQUE INDEX hourly_sam_ch_page_stats_idx4 ON hourly_sam_ch_page_stats USING btree (item_date, market, hour, bsc_name, bts, fa);


--
-- Name: hourly_sam_ch_page_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER hourly_sam_ch_page_stats_trigger_part
    BEFORE INSERT ON hourly_sam_ch_page_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_ch_page_stats_part();


--
-- PostgreSQL database dump complete
--

