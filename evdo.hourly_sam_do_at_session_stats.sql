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

DROP TRIGGER hourly_sam_do_at_session_stats_trigger_part ON evdo.hourly_sam_do_at_session_stats;
DROP INDEX evdo.hourly_sam_do_at_session_stats_idx4;
DROP INDEX evdo.hourly_sam_do_at_session_stats_idx;
ALTER TABLE ONLY evdo.hourly_sam_do_at_session_stats DROP CONSTRAINT hourly_sam_do_at_session_stats_pk;
DROP TABLE evdo.hourly_sam_do_at_session_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: hourly_sam_do_at_session_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE hourly_sam_do_at_session_stats (
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
    attempt integer,
    seizure integer,
    success integer,
    avg_setup_time integer,
    avg_hold integer,
    nor_rel integer,
    call_drop integer,
    sel_una integer,
    net_fail integer,
    tc_fail integer,
    ccp_scp_to integer,
    ccp_atp_to integer,
    ccp_bcp_to integer,
    bcp_cep_to integer,
    atp_cep_to integer,
    acq_fail integer,
    bad_fr integer,
    sel_err integer,
    tcc_to integer,
    hwidr_to integer,
    ss_nego_fail integer,
    ss_reg_fail integer,
    an_rel integer,
    sess_unrch integer,
    non_bts_blocking integer
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_evdoindex;

--
-- Name: hourly_sam_do_at_session_stats_pk; Type: CONSTRAINT; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

ALTER TABLE ONLY hourly_sam_do_at_session_stats
    ADD CONSTRAINT hourly_sam_do_at_session_stats_pk PRIMARY KEY (item_date, hour, bsc_name, bts, sector, fa);


--
-- Name: hourly_sam_do_at_session_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_at_session_stats_idx ON hourly_sam_do_at_session_stats USING btree (item_date);


--
-- Name: hourly_sam_do_at_session_stats_idx4; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE UNIQUE INDEX hourly_sam_do_at_session_stats_idx4 ON hourly_sam_do_at_session_stats USING btree (item_date, market, hour, bsc_name, bts, sector, fa);


--
-- Name: hourly_sam_do_at_session_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER hourly_sam_do_at_session_stats_trigger_part
    BEFORE INSERT ON hourly_sam_do_at_session_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_do_at_session_stats_part();


--
-- PostgreSQL database dump complete
--

