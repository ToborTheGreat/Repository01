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

DROP TRIGGER hourly_sam_pn_ho_stats_archive_trigger_part ON voice.hourly_sam_pn_ho_stats_archive;
DROP TABLE voice.hourly_sam_pn_ho_stats_archive;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_pn_ho_stats_archive; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE hourly_sam_pn_ho_stats_archive (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    s_nid integer NOT NULL,
    s_bsc integer,
    s_bts integer NOT NULL,
    s_sector integer NOT NULL,
    s_pn integer NOT NULL,
    d_pn integer NOT NULL,
    pn_att integer,
    pn_suc integer,
    pn_ngbr_fail integer
)
WITH (autovacuum_analyze_scale_factor=0.4);


--
-- Name: hourly_sam_pn_ho_stats_archive_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER hourly_sam_pn_ho_stats_archive_trigger_part
    BEFORE INSERT ON hourly_sam_pn_ho_stats_archive
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_pn_ho_stats_archive_part();


--
-- PostgreSQL database dump complete
--

