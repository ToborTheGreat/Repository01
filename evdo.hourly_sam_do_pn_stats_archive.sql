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

DROP TRIGGER hourly_sam_do_pn_stats_archive_trigger_part ON evdo.hourly_sam_do_pn_stats_archive;
DROP INDEX evdo.hourly_sam_do_pn_stats_archive_idx1;
DROP TABLE evdo.hourly_sam_do_pn_stats_archive;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: hourly_sam_do_pn_stats_archive; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE hourly_sam_do_pn_stats_archive (
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
-- Name: hourly_sam_do_pn_stats_archive_idx1; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX hourly_sam_do_pn_stats_archive_idx1 ON hourly_sam_do_pn_stats_archive USING btree (item_date);


--
-- Name: hourly_sam_do_pn_stats_archive_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER hourly_sam_do_pn_stats_archive_trigger_part
    BEFORE INSERT ON hourly_sam_do_pn_stats_archive
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_do_pn_stats_archive_part();


--
-- PostgreSQL database dump complete
--

