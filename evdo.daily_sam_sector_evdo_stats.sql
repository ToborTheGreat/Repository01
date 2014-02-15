--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = evdo, pg_catalog;

DROP TRIGGER evdo_daily_sam_sector_evdo_stats_trigger_part ON evdo.daily_sam_sector_evdo_stats;
DROP INDEX evdo.daily_sam_sector_stats_idx;
DROP INDEX evdo.daily_sam_sector_evdo_stats_idx;
DROP TABLE evdo.daily_sam_sector_evdo_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: daily_sam_sector_evdo_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE daily_sam_sector_evdo_stats (
    item_date date,
    vendor character varying(30),
    market character varying(50),
    bsc character varying(50),
    bsc_name character varying(30),
    cascade_id character varying(30),
    bts integer,
    sector integer,
    total_conn_attempts bigint,
    total_conn_attempts_org bigint,
    total_conn_attempts_ter bigint,
    total_conn_failures bigint,
    total_conn_failures_pct real,
    total_blks bigint,
    total_blks_pct real,
    ce_blks bigint,
    rnc_blks bigint,
    cust_blks bigint,
    equip_blks bigint,
    equip_blks_pct real,
    non_bts_equip_blks bigint,
    successful_conn bigint,
    successful_call_pct real,
    total_normal_conn_close bigint,
    total_dropped_conn bigint,
    dropped_conn_pct real,
    tot_fwd_data_trans_megbyte bigint,
    tot_rev_data_trans_megbyte bigint,
    avg_fwd_phy_sect_tput real,
    avg_rev_phy_sect_tput real,
    avg_req_drc_rate_kbs real,
    bh_hour integer,
    bh_total_conn_attempts bigint,
    bh_total_conn_attempts_org bigint,
    bh_total_conn_attempts_ter bigint,
    bh_total_conn_failures bigint,
    bh_total_conn_failures_pct real,
    bh_total_blks bigint,
    bh_total_blks_pct real,
    bh_ce_blks bigint,
    bh_rnc_blks bigint,
    bh_cust_blks bigint,
    bh_equip_blks bigint,
    bh_equip_blks_pct real,
    bh_non_bts_equip_blks bigint,
    bh_successful_conn bigint,
    bh_successful_call_pct real,
    bh_total_normal_conn_close bigint,
    bh_total_dropped_conn bigint,
    bh_dropped_conn_pct real,
    bh_tot_fwd_data_trans_megbyte bigint,
    bh_tot_rev_data_trans_megbyte bigint,
    bh_avg_fwd_phy_sect_tput real,
    bh_avg_rev_phy_sect_tput real,
    bh_avg_req_drc_rate_kbs real,
    f_tx_tot bigint,
    fwd_hold bigint,
    r_rx_tot bigint,
    rev_hold bigint,
    bsc_sector integer,
    at_acq_fail integer,
    ccp_atp_to integer,
    bcp_cep_to integer,
    sel_err integer,
    sel_una integer,
    bh_at_acq_fail integer,
    bh_ccp_atp_to integer,
    bh_bcp_cep_to integer,
    bh_sel_err integer,
    bh_sel_una integer,
    bsc_market character varying(50),
    hours integer
)
WITH (autovacuum_enabled=true);


SET default_tablespace = p2_evdoindex;

--
-- Name: daily_sam_sector_evdo_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_sam_sector_evdo_stats_idx ON daily_sam_sector_evdo_stats USING btree (item_date);


--
-- Name: daily_sam_sector_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_sam_sector_stats_idx ON daily_sam_sector_evdo_stats USING btree (item_date, cascade_id, sector);


--
-- Name: evdo_daily_sam_sector_evdo_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER evdo_daily_sam_sector_evdo_stats_trigger_part
    BEFORE INSERT ON daily_sam_sector_evdo_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_sam_sector_evdo_stats_part();


--
-- PostgreSQL database dump complete
--

