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

DROP TRIGGER hourly_sam_ter_o_stats_trigger_part ON voice.hourly_sam_ter_o_stats;
DROP INDEX voice.hourly_sam_ter_o_stats_idx4;
DROP INDEX voice.hourly_sam_ter_o_stats_idx3;
DROP INDEX voice.hourly_sam_ter_o_stats_idx;
DROP TABLE voice.hourly_sam_ter_o_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_ter_o_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE hourly_sam_ter_o_stats (
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
    att integer,
    re_org integer,
    ovd_cmp integer,
    ovd_bcp integer,
    a1_oos integer,
    cmp_msc integer,
    bs_rel1 integer,
    msc_rel1 integer,
    mob_rel1 integer,
    asr integer,
    atp_una integer,
    cmp_atp integer,
    ce_una integer,
    walsh_una integer,
    tch_ovp integer,
    syn_to integer,
    bcp_cep integer,
    cmp_bcp integer,
    not_acq integer,
    ms_atp1 integer,
    ms_atp2 integer,
    so_rej integer,
    rev_no_frm_from_cep2 integer,
    fwd_no_frm_from_atp2 integer,
    bad_frm2 integer,
    bs_rel2 integer,
    msc_rel2 integer,
    mob_rel2 integer,
    asc1 integer,
    asc2 integer,
    rev_no_frm_from_cep3 integer,
    fwd_no_frm_from_atp3 integer,
    fwd_no_frm_from_mgw3 integer,
    bad_frm3 integer,
    bs_rel3 integer,
    msc_rel3 integer,
    mob_rel3 integer,
    ans integer,
    rev_no_frm_from_cep4 integer,
    fwd_no_frm_from_atp4 integer,
    fwd_no_frm_from_mgw4 integer,
    bad_frm4 integer,
    bs_rel4 integer,
    msc_rel4 integer,
    mob_rel4 integer,
    avg_ans real,
    avg_cpl real,
    avg_drp real,
    avg_trf real,
    avg_hld real,
    avg_dly real,
    link_una integer,
    assgn_band integer DEFAULT 0 NOT NULL
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);
ALTER TABLE ONLY hourly_sam_ter_o_stats ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: hourly_sam_ter_o_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_ter_o_stats_idx ON hourly_sam_ter_o_stats USING btree (item_date);


--
-- Name: hourly_sam_ter_o_stats_idx3; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_ter_o_stats_idx3 ON hourly_sam_ter_o_stats USING btree (bsc_name, bts);


--
-- Name: hourly_sam_ter_o_stats_idx4; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE UNIQUE INDEX hourly_sam_ter_o_stats_idx4 ON hourly_sam_ter_o_stats USING btree (item_date, market, bsc_name, bts, hour, sector, fa, assgn_band);


--
-- Name: hourly_sam_ter_o_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER hourly_sam_ter_o_stats_trigger_part
    BEFORE INSERT ON hourly_sam_ter_o_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_ter_o_stats_part();


--
-- PostgreSQL database dump complete
--

