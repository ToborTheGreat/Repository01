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

DROP TRIGGER hourly_sam_do_ter_a_eat_stats_trigger_part ON evdo.hourly_sam_do_ter_a_eat_stats;
DROP INDEX evdo.hourly_sam_do_ter_a_eat_stats_idx4;
DROP INDEX evdo.hourly_sam_do_ter_a_eat_stats_idx1;
DROP INDEX evdo.hourly_sam_do_ter_a_eat_stats_idx;
ALTER TABLE ONLY evdo.hourly_sam_do_ter_a_eat_stats DROP CONSTRAINT hourly_sam_do_ter_a_eat_stats_pk;
DROP TABLE evdo.hourly_sam_do_ter_a_eat_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: hourly_sam_do_ter_a_eat_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE hourly_sam_do_ter_a_eat_stats (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    bsc character varying(50),
    bts integer NOT NULL,
    sector integer NOT NULL,
    band integer NOT NULL,
    fa integer NOT NULL,
    attempt integer,
    seizure integer,
    success integer,
    avg_setup_time integer,
    avg_hold integer,
    ms_rel1 integer,
    ms_rel2 integer,
    ms_rel3 integer,
    at_lost integer,
    sel_una integer,
    net_fail integer,
    tc_fail integer,
    ccp_scp_to integer,
    ccp_atp_to integer,
    ccp_bcp_to integer,
    bcp_cep_to integer,
    atp_cep_to integer,
    at_acq_fail integer,
    bad_fr integer,
    sel_err integer,
    tcc_to integer,
    hwidr_to integer,
    rpp_proc_fail integer,
    ccp_rpp_to integer,
    trans_to_1x integer,
    an_rel1 integer,
    an_rel2 integer,
    an_rel3 integer,
    conn_r real,
    suc_r real,
    drop_r real,
    hwid_mis integer,
    page_1x_drop integer,
    sess_unrch integer,
    vt_intercept integer,
    setup_1x integer,
    setup_2x integer,
    setup_3x integer,
    non_bts_blocking integer
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_evdoindex;

--
-- Name: hourly_sam_do_ter_a_eat_stats_pk; Type: CONSTRAINT; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

ALTER TABLE ONLY hourly_sam_do_ter_a_eat_stats
    ADD CONSTRAINT hourly_sam_do_ter_a_eat_stats_pk PRIMARY KEY (item_date, hour, bsc_name, bts, sector, fa);


--
-- Name: hourly_sam_do_ter_a_eat_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_ter_a_eat_stats_idx ON hourly_sam_do_ter_a_eat_stats USING btree (bsc_name, bts, sector);


--
-- Name: hourly_sam_do_ter_a_eat_stats_idx1; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_ter_a_eat_stats_idx1 ON hourly_sam_do_ter_a_eat_stats USING btree (item_date);


--
-- Name: hourly_sam_do_ter_a_eat_stats_idx4; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE UNIQUE INDEX hourly_sam_do_ter_a_eat_stats_idx4 ON hourly_sam_do_ter_a_eat_stats USING btree (item_date, market, hour, bsc_name, bts, sector, fa);


--
-- Name: hourly_sam_do_ter_a_eat_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER hourly_sam_do_ter_a_eat_stats_trigger_part
    BEFORE INSERT ON hourly_sam_do_ter_a_eat_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_do_ter_a_eat_stats_part();


--
-- PostgreSQL database dump complete
--

