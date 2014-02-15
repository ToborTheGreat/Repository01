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

DROP TRIGGER hourly_sam_do_packet_stats_trigger_part ON evdo.hourly_sam_do_packet_stats;
DROP INDEX evdo.hourly_sam_do_packet_stats_idx4;
DROP INDEX evdo.hourly_sam_do_packet_stats_idx2;
DROP INDEX evdo.hourly_sam_do_packet_stats_idx1;
DROP INDEX evdo.hourly_sam_do_packet_stats_idx;
ALTER TABLE ONLY evdo.hourly_sam_do_packet_stats DROP CONSTRAINT hourly_sam_do_packet_stats_pk;
DROP TABLE evdo.hourly_sam_do_packet_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: hourly_sam_do_packet_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE hourly_sam_do_packet_stats (
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
    fwd_pkt bigint,
    rev_pkt bigint,
    reva_pkt_tot bigint,
    reva_pkt_err bigint,
    sub_pkt_suc0 bigint,
    sub_pkt_suc1 bigint,
    sub_pkt_suc2 bigint,
    sub_pkt_suc3 bigint,
    f_los_pkt bigint,
    f_re_pkt bigint,
    drc0 bigint,
    drc1 bigint,
    drc2 bigint,
    drc3 bigint,
    drc4 bigint,
    drc5 bigint,
    drc6 bigint,
    drc7 bigint,
    drc8 bigint,
    drc9 bigint,
    drc10 bigint,
    drc11 bigint,
    drc12 bigint,
    drc13 bigint,
    drc14 bigint,
    drc_erasure bigint,
    rx_drc bigint,
    avg_drc real,
    drc16 bigint,
    drc17 bigint,
    drc18 bigint,
    drc19 bigint,
    drc20 bigint,
    drc21 bigint,
    drc22 bigint,
    drc23 bigint,
    drc24 bigint,
    drc25 bigint,
    drc26 bigint,
    drc27 bigint
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_evdoindex;

--
-- Name: hourly_sam_do_packet_stats_pk; Type: CONSTRAINT; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

ALTER TABLE ONLY hourly_sam_do_packet_stats
    ADD CONSTRAINT hourly_sam_do_packet_stats_pk PRIMARY KEY (item_date, hour, bsc_name, bts, sector, fa);


--
-- Name: hourly_sam_do_packet_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_packet_stats_idx ON hourly_sam_do_packet_stats USING btree (bsc_name, bts, sector);


--
-- Name: hourly_sam_do_packet_stats_idx1; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_packet_stats_idx1 ON hourly_sam_do_packet_stats USING btree (item_date);


--
-- Name: hourly_sam_do_packet_stats_idx2; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_packet_stats_idx2 ON hourly_sam_do_packet_stats USING btree (item_date, market);


--
-- Name: hourly_sam_do_packet_stats_idx4; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE UNIQUE INDEX hourly_sam_do_packet_stats_idx4 ON hourly_sam_do_packet_stats USING btree (item_date, market, hour, bsc_name, bts, sector, fa);


--
-- Name: hourly_sam_do_packet_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER hourly_sam_do_packet_stats_trigger_part
    BEFORE INSERT ON hourly_sam_do_packet_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_do_packet_stats_part();


--
-- PostgreSQL database dump complete
--

