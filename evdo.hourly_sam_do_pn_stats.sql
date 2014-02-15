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

DROP TRIGGER hourly_sam_do_pn_stats_trigger_part ON evdo.hourly_sam_do_pn_stats;
DROP INDEX evdo.hourly_sam_do_pn_stats_ux;
DROP INDEX evdo.hourly_sam_do_pn_stats_idx2;
DROP INDEX evdo.hourly_sam_do_pn_stats_idx1;
ALTER TABLE ONLY evdo.hourly_sam_do_pn_stats DROP CONSTRAINT hourly_sam_do_pn_stats_pk;
DROP TABLE evdo.hourly_sam_do_pn_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: hourly_sam_do_pn_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE hourly_sam_do_pn_stats (
    market character varying(50) NOT NULL,
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    bsc character varying(50),
    item_date date NOT NULL,
    hour integer NOT NULL,
    s_bts integer NOT NULL,
    s_sector integer NOT NULL,
    s_pn integer NOT NULL,
    d_pn integer NOT NULL,
    pn_att integer,
    pn_suc integer,
    pn_ngbr_rej integer
)
WITH (autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_evdoindex;

--
-- Name: hourly_sam_do_pn_stats_pk; Type: CONSTRAINT; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

ALTER TABLE ONLY hourly_sam_do_pn_stats
    ADD CONSTRAINT hourly_sam_do_pn_stats_pk PRIMARY KEY (item_date, market, bsc_name, s_bts, s_sector, s_pn, d_pn, hour);


--
-- Name: hourly_sam_do_pn_stats_idx1; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_pn_stats_idx1 ON hourly_sam_do_pn_stats USING btree (item_date);


--
-- Name: hourly_sam_do_pn_stats_idx2; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_pn_stats_idx2 ON hourly_sam_do_pn_stats USING btree (market);


SET default_tablespace = '';

--
-- Name: hourly_sam_do_pn_stats_ux; Type: INDEX; Schema: evdo; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX hourly_sam_do_pn_stats_ux ON hourly_sam_do_pn_stats USING btree (item_date, hour, bsc_name, s_bts, s_sector, s_pn, d_pn);


--
-- Name: hourly_sam_do_pn_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER hourly_sam_do_pn_stats_trigger_part
    BEFORE INSERT ON hourly_sam_do_pn_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_do_pn_stats_part();


--
-- PostgreSQL database dump complete
--

