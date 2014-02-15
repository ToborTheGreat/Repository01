--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = voice, pg_catalog;

DROP TRIGGER hourly_sam_ecsfb_stats_trigger_part ON voice.hourly_sam_ecsfb_stats;
ALTER TABLE ONLY voice.hourly_sam_ecsfb_stats DROP CONSTRAINT hourly_sam_ecsfb_stats_pk;
DROP TABLE voice.hourly_sam_ecsfb_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_ecsfb_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE hourly_sam_ecsfb_stats (
    market character varying(50) NOT NULL,
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    bsc integer,
    rack integer NOT NULL,
    iwp integer NOT NULL,
    mme integer NOT NULL,
    msc integer NOT NULL,
    a21_1x_air_intf_rcv integer,
    a21_ack_snd_for1xair integer,
    a21_1x_air_intf_snd integer,
    a21_ack_rcv integer,
    a21_event_noti_rcv integer,
    a21_ack_snd_fornoti integer,
    a21_ue_reject integer,
    a21_unknown_ue integer,
    a1_cm_svc_req integer,
    a1_paging_req integer,
    a1_paging_rsp integer,
    a1_assign_req integer,
    a1_cref_rcv integer,
    a1_assign_cmpl integer,
    a1_clr_req integer,
    a1_clr_cmd integer,
    a1_clr_cmpl integer,
    a1_auth_req integer,
    a1_auth_rsp integer,
    a1_status_req integer,
    a1_status_rsp integer,
    a1_loc_upd_req integer,
    a1_loc_upd_act integer,
    a1_loc_upd_rej integer,
    a1_regi_req integer,
    a1_hoff_rqrd integer,
    a1_hoff_cmd integer,
    a1_hoff_rqrd_rej integer,
    a1_hoff_cmmenc integer,
    a1_adds_page integer,
    a1_adds_trans integer,
    a1_adds_page_ack integer,
    a1_adds_trans_ack integer,
    a1_reject integer
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_voiceindex;

--
-- Name: hourly_sam_ecsfb_stats_pk; Type: CONSTRAINT; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

ALTER TABLE ONLY hourly_sam_ecsfb_stats
    ADD CONSTRAINT hourly_sam_ecsfb_stats_pk PRIMARY KEY (item_date, market, hour, bsc_name, rack, iwp, mme, msc);


--
-- Name: hourly_sam_ecsfb_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER hourly_sam_ecsfb_stats_trigger_part
    BEFORE INSERT ON hourly_sam_ecsfb_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_ecsfb_stats_part();


--
-- PostgreSQL database dump complete
--

