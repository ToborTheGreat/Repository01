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

DROP TRIGGER voice_daily_cluster_nbr_quality_agg_trigger_part ON voice.daily_cluster_nbr_quality_agg;
DROP INDEX voice.daily_cluster_nbr_quality_agg_ix1;
DROP TABLE voice.daily_cluster_nbr_quality_agg;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: daily_cluster_nbr_quality_agg; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE daily_cluster_nbr_quality_agg (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    cluster character varying(50) NOT NULL,
    cluster_group character varying(20) NOT NULL,
    total_sectors integer NOT NULL,
    total_targets integer NOT NULL,
    incomplete_sectors integer NOT NULL,
    missing_targets integer NOT NULL,
    ind_contrib_rule double precision NOT NULL,
    cum_contrib_rule double precision NOT NULL
);


SET default_tablespace = p2_voiceindex;

--
-- Name: daily_cluster_nbr_quality_agg_ix1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_cluster_nbr_quality_agg_ix1 ON daily_cluster_nbr_quality_agg USING btree (item_date, market, cluster);


--
-- Name: voice_daily_cluster_nbr_quality_agg_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER voice_daily_cluster_nbr_quality_agg_trigger_part
    BEFORE INSERT ON daily_cluster_nbr_quality_agg
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_cluster_nbr_quality_agg_part();


--
-- PostgreSQL database dump complete
--

