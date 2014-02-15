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

DROP INDEX evdo.daily_leg_evdo_stats_temp_idx2;
DROP TABLE evdo.daily_leg_evdo_stats_temp;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: daily_leg_evdo_stats_temp; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE daily_leg_evdo_stats_temp (
    vendor character varying(30),
    marketname character varying(30),
    item_date date,
    rncmanagername character varying(30),
    rncname character varying(30),
    cascadeid character varying(30),
    sector integer,
    carrier integer,
    carrierfreq integer,
    drops character varying(50),
    failures character varying(50),
    attempts character varying(50),
    successes character varying(50),
    total_data_transmitted character varying(50),
    fwddatatransmitted character varying(50),
    revdatatrnasmitted character varying(50),
    drc_n character varying(50),
    drc_d character varying(50),
    volume character varying(50),
    burstn character varying(50),
    burstd character varying(50),
    activeusersn character varying(50),
    activeusersd character varying(50),
    revdatavolume character varying(50),
    revburstn character varying(50),
    revburstd character varying(50),
    evdoperuserthroughput_n character varying(50),
    evdoperuserthroughput_d character varying(50),
    fwdperestimation_n character varying(50),
    fwdperestimation_d character varying(50),
    controlslot_n character varying(50),
    controlslot_d character varying(50),
    totalslotutilization_n character varying(50),
    totalslotutilization_d character varying(50),
    avgfwdsectorthroughput_n character varying(50),
    avgfwdsectorthroughput_d character varying(50),
    avgrevsectorthroughput_n character varying(50),
    avgrevsectorthroughput_d character varying(50),
    peakrot character varying(50),
    macid character varying(50),
    ach_occupancy_n character varying(50),
    ach_occupancy_d character varying(50),
    session_attempts character varying(50),
    avgactiveusers character varying(50),
    avgdrc character varying(50),
    avgfwdburst character varying(50),
    avgrevburst character varying(50),
    bh_attempts character varying(50),
    bh_successes character varying(50),
    bh_failures character varying(50),
    bh_drops character varying(50),
    bh_total_data_transmitted character varying(50),
    bh_drc_n character varying(50),
    bh_drc_d character varying(50),
    bh_avgdrc character varying(50),
    bh_fwd_burst_n character varying(50),
    bh_fwd_burst_d character varying(50),
    bh_avgfwdburst character varying(50),
    bh_rev_burst_n character varying(50),
    bh_rev_burst_d character varying(50),
    bh_revavgburst character varying(50),
    bh_activeusersn character varying(50),
    bh_activeusersd character varying(50),
    bh_avgactiveusers character varying(50),
    bh_fwddatatransmitted character varying(50),
    bh_revdatatrnasmitted character varying(50),
    bh_peruserthroughput_n character varying(50),
    bh_peruserthroughput_d character varying(50),
    bh_controlslot character varying(50),
    bh_totalslotutilization character varying(50),
    bh_avgfwdsectorthroughput character varying(50),
    bh_avgrevsectorthroughput character varying(50),
    bh_peakrot character varying(50),
    bh_macid character varying(50)
)
WITH (autovacuum_enabled=true, toast.autovacuum_enabled=true);


SET default_tablespace = p2_evdoindex;

--
-- Name: daily_leg_evdo_stats_temp_idx2; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_leg_evdo_stats_temp_idx2 ON daily_leg_evdo_stats_temp USING btree (cascadeid);


--
-- PostgreSQL database dump complete
--

