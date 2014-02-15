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

DROP TRIGGER evdo_daily_leg_cluster_evdo_stats_trigger_part ON evdo.daily_leg_cluster_evdo_stats;
DROP INDEX evdo.daily_leg_cluster_evdo_stats_idx;
ALTER TABLE ONLY evdo.daily_leg_cluster_evdo_stats DROP CONSTRAINT daily_leg_cluster_evdo_stats_pk;
DROP TABLE evdo.daily_leg_cluster_evdo_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: daily_leg_cluster_evdo_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE daily_leg_cluster_evdo_stats (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    cluster character varying(50) NOT NULL,
    clsuter_group character varying(20) NOT NULL,
    drops bigint,
    failures bigint,
    attempts bigint,
    successes bigint,
    total_data_transmitted double precision,
    fwddatatransmitted double precision,
    revdatatrnasmitted double precision,
    drc_n double precision,
    drc_d double precision,
    volume double precision,
    burstn double precision,
    burstd bigint,
    activeusersn integer,
    activeusersd integer,
    revdatavolume double precision,
    revburstn double precision,
    revburstd bigint,
    evdoperuserthroughput_n integer,
    evdoperuserthroughput_d integer,
    fwdperestimation_n bigint,
    fwdperestimation_d bigint,
    controlslot_n real,
    controlslot_d bigint,
    totalslotutilization_n double precision,
    totalslotutilization_d double precision,
    avgfwdsectorthroughput_n double precision,
    avgfwdsectorthroughput_d double precision,
    avgrevsectorthroughput_n double precision,
    avgrevsectorthroughput_d double precision,
    peakrot real,
    macid real,
    ach_occupancy_n real,
    ach_occupancy_d bigint,
    session_attempts bigint,
    avgactiveusers real,
    avgdrc real,
    avgfwdburst real,
    avgrevburst real
)
WITH (autovacuum_enabled=true);


SET default_tablespace = p2_evdoindex;

--
-- Name: daily_leg_cluster_evdo_stats_pk; Type: CONSTRAINT; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

ALTER TABLE ONLY daily_leg_cluster_evdo_stats
    ADD CONSTRAINT daily_leg_cluster_evdo_stats_pk PRIMARY KEY (item_date, market, cluster, clsuter_group);


--
-- Name: daily_leg_cluster_evdo_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_leg_cluster_evdo_stats_idx ON daily_leg_cluster_evdo_stats USING btree (item_date);


--
-- Name: evdo_daily_leg_cluster_evdo_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER evdo_daily_leg_cluster_evdo_stats_trigger_part
    BEFORE INSERT ON daily_leg_cluster_evdo_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_leg_cluster_evdo_stats_part();


--
-- PostgreSQL database dump complete
--

