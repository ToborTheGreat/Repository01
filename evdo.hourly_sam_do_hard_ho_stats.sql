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

DROP TRIGGER hourly_sam_do_hard_ho_stats_trigger_part ON evdo.hourly_sam_do_hard_ho_stats;
DROP INDEX evdo.hourly_sam_do_hard_ho_stats_idx4;
DROP INDEX evdo.hourly_sam_do_hard_ho_stats_idx;
ALTER TABLE ONLY evdo.hourly_sam_do_hard_ho_stats DROP CONSTRAINT hourly_sam_do_hard_ho_stats_pk;
DROP TABLE evdo.hourly_sam_do_hard_ho_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: hourly_sam_do_hard_ho_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE hourly_sam_do_hard_ho_stats (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    bsc character varying(50),
    s_bsc integer,
    s_bts integer NOT NULL,
    s_fa integer NOT NULL,
    d_nid integer NOT NULL,
    d_bsc integer,
    d_bts integer NOT NULL,
    d_fa integer NOT NULL,
    attempt integer,
    success real,
    avg_suc real,
    ccp_bcp_to integer,
    tc_fail integer,
    etc integer,
    add_2x_att integer,
    add_2x_suc real,
    add_3x_att integer,
    add_3x_suc real,
    add_2x_suc_r real,
    add_3x_suc_r real,
    drop_2x_att integer,
    drop_2x_suc real,
    drop_3x_att integer,
    drop_3x_suc real,
    drop_2x_suc_r real,
    drop_3x_suc_r real
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_evdoindex;

--
-- Name: hourly_sam_do_hard_ho_stats_pk; Type: CONSTRAINT; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

ALTER TABLE ONLY hourly_sam_do_hard_ho_stats
    ADD CONSTRAINT hourly_sam_do_hard_ho_stats_pk PRIMARY KEY (item_date, hour, bsc_name, s_bts, s_fa, d_nid, d_bts, d_fa);


--
-- Name: hourly_sam_do_hard_ho_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_hard_ho_stats_idx ON hourly_sam_do_hard_ho_stats USING btree (item_date);

ALTER TABLE hourly_sam_do_hard_ho_stats CLUSTER ON hourly_sam_do_hard_ho_stats_idx;


--
-- Name: hourly_sam_do_hard_ho_stats_idx4; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE UNIQUE INDEX hourly_sam_do_hard_ho_stats_idx4 ON hourly_sam_do_hard_ho_stats USING btree (item_date, market, hour, bsc_name, s_bts, s_fa, d_nid, d_bts, d_fa);


--
-- Name: hourly_sam_do_hard_ho_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER hourly_sam_do_hard_ho_stats_trigger_part
    BEFORE INSERT ON hourly_sam_do_hard_ho_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_do_hard_ho_stats_part();


--
-- PostgreSQL database dump complete
--

