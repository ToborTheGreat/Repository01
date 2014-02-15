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

DROP TRIGGER hourly_sam_do_session_a_stats_trigger_part ON evdo.hourly_sam_do_session_a_stats;
DROP INDEX evdo.hourly_sam_do_session_a_stats_idx4;
DROP INDEX evdo.hourly_sam_do_session_a_stats_idx;
ALTER TABLE ONLY evdo.hourly_sam_do_session_a_stats DROP CONSTRAINT hourly_sam_do_session_a_stats_pk;
DROP TABLE evdo.hourly_sam_do_session_a_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: hourly_sam_do_session_a_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE hourly_sam_do_session_a_stats (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    bsc integer,
    bts integer NOT NULL,
    uati_at_att integer,
    at_uati_suc integer,
    na_uati integer,
    uati_to_asgn_cmpl integer,
    fal_a13_cmpl integer,
    sess_reg_att integer,
    sess_reg_fal integer,
    at_auth_att integer,
    at_init_sess_flsh integer,
    an_init_sess_flsh integer,
    tot_loc_reg integer,
    reg_call_seup integer,
    reg_call_rel integer,
    reg_keep_alve integer,
    sess_aqur integer,
    reg_distance integer
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_evdoindex;

--
-- Name: hourly_sam_do_session_a_stats_pk; Type: CONSTRAINT; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

ALTER TABLE ONLY hourly_sam_do_session_a_stats
    ADD CONSTRAINT hourly_sam_do_session_a_stats_pk PRIMARY KEY (item_date, hour, bsc_name, bts);


--
-- Name: hourly_sam_do_session_a_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_session_a_stats_idx ON hourly_sam_do_session_a_stats USING btree (item_date);

ALTER TABLE hourly_sam_do_session_a_stats CLUSTER ON hourly_sam_do_session_a_stats_idx;


--
-- Name: hourly_sam_do_session_a_stats_idx4; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE UNIQUE INDEX hourly_sam_do_session_a_stats_idx4 ON hourly_sam_do_session_a_stats USING btree (item_date, market, hour, bsc_name, bts);


--
-- Name: hourly_sam_do_session_a_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER hourly_sam_do_session_a_stats_trigger_part
    BEFORE INSERT ON hourly_sam_do_session_a_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_do_session_a_stats_part();


--
-- PostgreSQL database dump complete
--

