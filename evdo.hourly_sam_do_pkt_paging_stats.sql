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

DROP TRIGGER hourly_sam_do_pkt_paging_stats_trigger_part ON evdo.hourly_sam_do_pkt_paging_stats;
DROP INDEX evdo.hourly_sam_do_pkt_paging_stats_idx4;
DROP INDEX evdo.hourly_sam_do_pkt_paging_stats_idx1;
DROP INDEX evdo.hourly_sam_do_pkt_paging_stats_idx;
ALTER TABLE ONLY evdo.hourly_sam_do_pkt_paging_stats DROP CONSTRAINT hourly_sam_do_pkt_paging_stats_pk;
DROP TABLE evdo.hourly_sam_do_pkt_paging_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: hourly_sam_do_pkt_paging_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE hourly_sam_do_pkt_paging_stats (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    bsc integer,
    bts integer NOT NULL,
    fst_pag_att integer,
    fst_pag_suc integer,
    snd_pag_att integer,
    snd_pag_suc integer,
    trd_pag_att integer,
    trd_pag_suc integer,
    fst_to integer,
    snd_to integer,
    trd_to integer,
    qchat_fst_pag_att integer,
    qchat_fst_pag_suc integer,
    qchat_snd_pag_att integer,
    qchat_snd_pag_suc integer,
    qchat_trd_pag_att integer,
    qchat_trd_pag_suc integer,
    qchat_fst_to integer,
    qchat_snd_to integer,
    qchat_trd_to integer
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_evdoindex;

--
-- Name: hourly_sam_do_pkt_paging_stats_pk; Type: CONSTRAINT; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

ALTER TABLE ONLY hourly_sam_do_pkt_paging_stats
    ADD CONSTRAINT hourly_sam_do_pkt_paging_stats_pk PRIMARY KEY (item_date, hour, bsc_name, bts);


--
-- Name: hourly_sam_do_pkt_paging_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_pkt_paging_stats_idx ON hourly_sam_do_pkt_paging_stats USING btree (bsc_name, bts);


--
-- Name: hourly_sam_do_pkt_paging_stats_idx1; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_pkt_paging_stats_idx1 ON hourly_sam_do_pkt_paging_stats USING btree (item_date);

ALTER TABLE hourly_sam_do_pkt_paging_stats CLUSTER ON hourly_sam_do_pkt_paging_stats_idx1;


--
-- Name: hourly_sam_do_pkt_paging_stats_idx4; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE UNIQUE INDEX hourly_sam_do_pkt_paging_stats_idx4 ON hourly_sam_do_pkt_paging_stats USING btree (item_date, market, hour, bsc_name, bts);


--
-- Name: hourly_sam_do_pkt_paging_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER hourly_sam_do_pkt_paging_stats_trigger_part
    BEFORE INSERT ON hourly_sam_do_pkt_paging_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_do_pkt_paging_stats_part();


--
-- PostgreSQL database dump complete
--

