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

DROP TRIGGER evdo_daily_leg_evdo_stats_trigger_part ON evdo.daily_leg_evdo_stats;
DROP INDEX evdo.daily_leg_evdo_stats_itmdt_ix;
DROP INDEX evdo.daily_leg_evdo_stats_idx2;
DROP INDEX evdo.daily_leg_evdo_stats_idx;
DROP TABLE evdo.daily_leg_evdo_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: daily_leg_evdo_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE daily_leg_evdo_stats (
    vendor character varying(30),
    marketname character varying(30),
    item_date date NOT NULL,
    rncmanagername character varying(30),
    rncname character varying(30) NOT NULL,
    cascadeid character varying(30) NOT NULL,
    sector integer NOT NULL,
    carrier integer NOT NULL,
    carrierfreq integer,
    drops integer,
    failures integer,
    attempts integer NOT NULL,
    successes integer,
    total_data_transmitted double precision,
    fwddatatransmitted double precision,
    revdatatrnasmitted double precision,
    drc_n double precision,
    drc_d double precision,
    volume double precision,
    burstn double precision,
    burstd double precision,
    activeusersn integer,
    activeusersd integer,
    revdatavolume double precision,
    revburstn double precision,
    revburstd double precision,
    evdoperuserthroughput_n real,
    evdoperuserthroughput_d real,
    fwdperestimation_n real,
    fwdperestimation_d real,
    controlslot_n real,
    controlslot_d real,
    totalslotutilization_n double precision,
    totalslotutilization_d double precision,
    avgfwdsectorthroughput_n double precision,
    avgfwdsectorthroughput_d double precision,
    avgrevsectorthroughput_n double precision,
    avgrevsectorthroughput_d double precision,
    peakrot real,
    macid real,
    ach_occupancy_n real,
    ach_occupancy_d real,
    session_attempts real,
    avgactiveusers real,
    avgdrc real,
    avgfwdburst real,
    avgrevburst real,
    bh_attempts integer,
    bh_successes integer,
    bh_failures integer,
    bh_drops integer,
    bh_total_data_transmitted real,
    bh_drc_n double precision,
    bh_drc_d double precision,
    bh_avgdrc real,
    bh_fwd_burst_n double precision,
    bh_fwd_burst_d double precision,
    bh_avgfwdburst real,
    bh_rev_burst_n double precision,
    bh_rev_burst_d double precision,
    bh_revavgburst real,
    bh_activeusersn integer,
    bh_activeusersd integer,
    bh_avgactiveusers real,
    bh_fwddatatransmitted real,
    bh_revdatatrnasmitted real,
    bh_peruserthroughput_n real,
    bh_peruserthroughput_d real,
    bh_controlslot real,
    bh_totalslotutilization real,
    bh_avgfwdsectorthroughput real,
    bh_avgrevsectorthroughput real,
    bh_peakrot real,
    bh_macid real,
    do_modem_ip_addr character varying(30),
    cell integer
)
WITH (autovacuum_enabled=true);


SET default_tablespace = p2_evdoindex;

--
-- Name: daily_leg_evdo_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_leg_evdo_stats_idx ON daily_leg_evdo_stats USING btree (item_date, cascadeid);


--
-- Name: daily_leg_evdo_stats_idx2; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_leg_evdo_stats_idx2 ON daily_leg_evdo_stats USING btree (cascadeid);


--
-- Name: daily_leg_evdo_stats_itmdt_ix; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_leg_evdo_stats_itmdt_ix ON daily_leg_evdo_stats USING btree (item_date);


--
-- Name: evdo_daily_leg_evdo_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER evdo_daily_leg_evdo_stats_trigger_part
    BEFORE INSERT ON daily_leg_evdo_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_leg_evdo_stats_part();


--
-- PostgreSQL database dump complete
--

