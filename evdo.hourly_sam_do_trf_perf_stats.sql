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

DROP TRIGGER hourly_sam_do_trf_perf_stats_trigger_part ON evdo.hourly_sam_do_trf_perf_stats;
DROP INDEX evdo.hourly_sam_do_trf_perf_stats_idx4;
DROP INDEX evdo.hourly_sam_do_trf_perf_stats_idx;
ALTER TABLE ONLY evdo.hourly_sam_do_trf_perf_stats DROP CONSTRAINT hourly_sam_do_trf_perf_stats_pk;
DROP TABLE evdo.hourly_sam_do_trf_perf_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: hourly_sam_do_trf_perf_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE hourly_sam_do_trf_perf_stats (
    market character varying(50) NOT NULL,
    bsm character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    bsc character varying(50),
    bts integer NOT NULL,
    sector integer NOT NULL,
    band integer NOT NULL,
    fa integer NOT NULL,
    avg_pkt_dly integer,
    avg_sch_dly integer,
    avg_non_emptq_user integer,
    min_user_cnt integer,
    max_user_cnt integer,
    avg_user_cnt integer,
    min_tx_bytes_for_1min integer,
    max_tx_bytes_for_1min integer,
    tot_tx_bytes integer,
    min_tx_time_for_1min integer,
    max_tx_time_for_1min integer,
    tot_tx_time integer,
    min_rx_bytes_for_1min integer,
    max_rx_bytes_for_1min integer,
    tot_rx_bytes integer,
    min_rx_time_for_1min integer,
    max_rx_time_for_1min integer,
    tot_rx_time integer,
    min_fwd_thp integer,
    max_fwd_thp integer,
    avg_fwd_thp integer,
    min_rvs_thp integer,
    max_rvs_thp integer,
    avg_rvs_thp integer,
    avg_fwd_burst_thp integer,
    avg_rvs_burst_thp integer,
    avg_fwd_user_thp integer,
    avg_rvs_user_thp integer,
    avg_fl_sector_load real
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_evdoindex;

--
-- Name: hourly_sam_do_trf_perf_stats_pk; Type: CONSTRAINT; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

ALTER TABLE ONLY hourly_sam_do_trf_perf_stats
    ADD CONSTRAINT hourly_sam_do_trf_perf_stats_pk PRIMARY KEY (market, bsc_name, item_date, hour, bts, sector, band, fa);


--
-- Name: hourly_sam_do_trf_perf_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_trf_perf_stats_idx ON hourly_sam_do_trf_perf_stats USING btree (item_date);


--
-- Name: hourly_sam_do_trf_perf_stats_idx4; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE UNIQUE INDEX hourly_sam_do_trf_perf_stats_idx4 ON hourly_sam_do_trf_perf_stats USING btree (item_date, market, hour, bsc_name, bts, sector, fa);


--
-- Name: hourly_sam_do_trf_perf_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER hourly_sam_do_trf_perf_stats_trigger_part
    BEFORE INSERT ON hourly_sam_do_trf_perf_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_do_trf_perf_stats_part();


--
-- PostgreSQL database dump complete
--

