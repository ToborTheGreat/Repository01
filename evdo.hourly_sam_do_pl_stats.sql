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

DROP TRIGGER hourly_sam_do_pl_stats_trigger_part ON evdo.hourly_sam_do_pl_stats;
DROP INDEX evdo.hourly_sam_do_pl_stats_idx4;
DROP INDEX evdo.hourly_sam_do_pl_stats_idx1;
DROP INDEX evdo.hourly_sam_do_pl_stats_idx;
ALTER TABLE ONLY evdo.hourly_sam_do_pl_stats DROP CONSTRAINT hourly_sam_do_pl_stats_pk;
DROP TABLE evdo.hourly_sam_do_pl_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: hourly_sam_do_pl_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE hourly_sam_do_pl_stats (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    bsc character varying(50),
    bts integer NOT NULL,
    sector integer NOT NULL,
    band integer,
    fa integer NOT NULL,
    fwd_hold real,
    fwd_conn_hold real,
    rev_hold real,
    f_tx_tot integer,
    r_rx_tot integer,
    f_hold_ratio real,
    f_throut integer,
    r_throut integer,
    f_384 integer,
    f_768 integer,
    f_1536 integer,
    f_3072s integer,
    f_6144s integer,
    f_3072l integer,
    f_6144l integer,
    f_12288s integer,
    f_9216 integer,
    f_18432 integer,
    f_12288l integer,
    f_24576 integer,
    f_15360 integer,
    f_30720 integer,
    r_128 integer,
    r_256 integer,
    r_512 integer,
    r_768 integer,
    r_1024 integer,
    r_1536 integer,
    r_2048 real,
    r_3072 real,
    r_4096 integer,
    r_6144 integer,
    r_8192 integer,
    r_12288 integer,
    f_4608 integer,
    f_6144a integer,
    f_7680 integer,
    f_9216a integer,
    f_10752 integer,
    f_12288a integer,
    f_18432a integer,
    f_21504 integer,
    f_24576a integer,
    f_36864 integer,
    f_43008 integer,
    f_49152 integer,
    ach_avail_cnt real,
    ach_rx_cnt real,
    avg_ach_ratio real,
    drclock_normal_cnt integer,
    drclock_unlock_cnt integer,
    fwdmac_comb_enb_cnt integer,
    fwdmac_comb_dis_cnt integer,
    fwd_be_tx_tot_in_ho real,
    hold_time_in_ho integer,
    throughput_in_ho integer,
    fwd_be_tx_tot_in_mc integer,
    hold_time_in_mc integer,
    throughput_in_mc integer
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_evdoindex;

--
-- Name: hourly_sam_do_pl_stats_pk; Type: CONSTRAINT; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

ALTER TABLE ONLY hourly_sam_do_pl_stats
    ADD CONSTRAINT hourly_sam_do_pl_stats_pk PRIMARY KEY (item_date, hour, bsc_name, bts, sector, fa);


--
-- Name: hourly_sam_do_pl_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_pl_stats_idx ON hourly_sam_do_pl_stats USING btree (bsc_name, bts, sector);


--
-- Name: hourly_sam_do_pl_stats_idx1; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_pl_stats_idx1 ON hourly_sam_do_pl_stats USING btree (item_date);


--
-- Name: hourly_sam_do_pl_stats_idx4; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE UNIQUE INDEX hourly_sam_do_pl_stats_idx4 ON hourly_sam_do_pl_stats USING btree (item_date, market, hour, bsc_name, bts, sector, fa);


--
-- Name: hourly_sam_do_pl_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER hourly_sam_do_pl_stats_trigger_part
    BEFORE INSERT ON hourly_sam_do_pl_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_do_pl_stats_part();


--
-- PostgreSQL database dump complete
--

