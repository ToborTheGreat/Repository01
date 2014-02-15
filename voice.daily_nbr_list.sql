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

DROP TRIGGER voice_daily_nbr_list_trigger_part ON voice.daily_nbr_list;
DROP INDEX voice.daily_nbr_list_idx1;
DROP INDEX voice.daily_nbr_list_idx;
DROP TABLE voice.daily_nbr_list;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: daily_nbr_list; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE daily_nbr_list (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    bsc_name character varying(20) NOT NULL,
    bsc integer,
    bts integer,
    bandclass integer,
    sector integer,
    nbr_index integer,
    nbtsname character varying(30),
    npn integer,
    nsid integer,
    nnid integer,
    nbsc integer,
    nbts integer,
    nsector integer,
    nconfig integer,
    search_priority integer,
    freq_incl0 integer,
    freq_incl1 integer,
    freq_incl2 integer,
    freq_incl3 integer,
    freq_incl4 integer,
    freq_incl5 integer,
    freq_incl6 integer,
    freq_incl7 integer,
    freq_incl8 integer,
    freq_incl9 integer,
    freq_incl10 integer,
    freq_incl11 integer,
    freq_incl12 integer,
    freq_incl13 integer,
    freq_incl14 integer,
    freq_incl15 integer,
    nband integer,
    nfreq integer,
    search_set integer,
    search_win_nbr integer,
    timing_incl integer,
    ntx_offset integer,
    ntx_duration integer,
    ntx_period integer,
    use_add_pilot_rec integer,
    notd_power_level integer,
    srch_offset_nghbr integer,
    nho_type integer,
    s_cascade_id character varying(20),
    d_cascade_id character varying(20),
    logical_market character varying(50)
)
WITH (autovacuum_enabled=true);
ALTER TABLE ONLY daily_nbr_list ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: daily_nbr_list_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_nbr_list_idx ON daily_nbr_list USING btree (item_date);


--
-- Name: daily_nbr_list_idx1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_nbr_list_idx1 ON daily_nbr_list USING btree (item_date, s_cascade_id);


--
-- Name: voice_daily_nbr_list_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER voice_daily_nbr_list_trigger_part
    BEFORE INSERT ON daily_nbr_list
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_nbr_list_part();


--
-- PostgreSQL database dump complete
--

