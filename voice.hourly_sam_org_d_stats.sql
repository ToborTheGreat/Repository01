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

DROP TRIGGER hourly_sam_org_d_stats_trigger_part ON voice.hourly_sam_org_d_stats;
DROP INDEX voice.hourly_sam_org_d_stats_idx4;
DROP INDEX voice.hourly_sam_org_d_stats_idx2;
DROP INDEX voice.hourly_sam_org_d_stats_idx1;
DROP INDEX voice.hourly_sam_org_d_stats_idx;
DROP TABLE voice.hourly_sam_org_d_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_org_d_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE hourly_sam_org_d_stats (
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
    d_att integer,
    d_re_org integer,
    d_ovd_cmp integer,
    d_ovd_bcp integer,
    d_a1_oos integer,
    d_cmp_msc integer,
    d_bs_rel1 integer,
    d_msc_rel1 integer,
    d_mob_rel1 integer,
    d_asr integer,
    d_atp_una integer,
    d_pcf_rsc_una integer,
    d_pcf_pdsn_una integer,
    d_cmp_atp integer,
    d_ce_una integer,
    d_walsh_una integer,
    d_tch_ovp integer,
    d_syn_to integer,
    d_bcp_cep integer,
    d_cmp_bcp integer,
    d_cmp_pcf integer,
    d_pcf_pdsn integer,
    d_pdsn_reject integer,
    d_not_acq integer,
    d_ms_atp1 integer,
    d_ms_atp2 integer,
    d_so_rej integer,
    d_rev_no_frm_from_cep2 integer,
    d_fwd_no_frm_from_atp2 integer,
    d_bad_frm2 integer,
    d_bs_rel2 integer,
    d_msc_rel2 integer,
    d_mob_rel2 integer,
    d_asc1 integer,
    d_asc2 integer,
    d_rev_no_frm_from_cep3 integer,
    d_fwd_no_frm_from_atp3 integer,
    d_fwd_no_frm_from_pcf3 integer,
    d_bad_frm3 integer,
    d_bs_rel3 integer,
    d_msc_rel3 integer,
    d_mob_rel3 integer,
    d_pdsn_rel3 integer,
    d_ans integer,
    d_rev_no_frm_from_cep4 integer,
    d_fwd_no_frm_from_atp4 integer,
    d_fwd_no_frm_from_pcf4 integer,
    d_bad_frm4 integer,
    d_bs_rel4 integer,
    d_msc_rel4 integer,
    d_mob_rel4 integer,
    d_pdsn_rel4 integer,
    d_avg_ans real,
    d_avg_cpl real,
    d_avg_drp real,
    d_avg_trf real,
    d_avg_hld real,
    d_avg_dly real,
    d_link_una integer,
    assgn_band integer DEFAULT 0 NOT NULL
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);
ALTER TABLE ONLY hourly_sam_org_d_stats ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: hourly_sam_org_d_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_org_d_stats_idx ON hourly_sam_org_d_stats USING btree (bsc_name, bts, sector);


--
-- Name: hourly_sam_org_d_stats_idx1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_org_d_stats_idx1 ON hourly_sam_org_d_stats USING btree (item_date);


--
-- Name: hourly_sam_org_d_stats_idx2; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_org_d_stats_idx2 ON hourly_sam_org_d_stats USING btree (market, item_date);


--
-- Name: hourly_sam_org_d_stats_idx4; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_org_d_stats_idx4 ON hourly_sam_org_d_stats USING btree (item_date, market, bsc_name, bts, hour, sector, fa, assgn_band);


--
-- Name: hourly_sam_org_d_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER hourly_sam_org_d_stats_trigger_part
    BEFORE INSERT ON hourly_sam_org_d_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_org_d_stats_part();


--
-- PostgreSQL database dump complete
--

