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

DROP TRIGGER evdo_daily_nbr_list_trigger_part ON evdo.daily_nbr_list;
DROP INDEX evdo.daily_nbr_list_idx1;
DROP INDEX evdo.daily_nbr_list_idx;
DROP TABLE evdo.daily_nbr_list;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: daily_nbr_list; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
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
    nchannel_incl integer,
    nchannel integer,
    nband integer,
    search_win_size_nbr integer,
    search_win_offset_nbr integer,
    service_mode integer,
    color_code integer,
    search_win_size_nbr_incl integer,
    search_win_offset_nbr_incl integer,
    s_cascade_id character varying(20),
    d_cascade_id character varying(20),
    logical_market character varying(50)
)
WITH (autovacuum_enabled=true);


SET default_tablespace = p2_evdoindex;

--
-- Name: daily_nbr_list_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_nbr_list_idx ON daily_nbr_list USING btree (item_date);


--
-- Name: daily_nbr_list_idx1; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_nbr_list_idx1 ON daily_nbr_list USING btree (item_date, s_cascade_id);


--
-- Name: evdo_daily_nbr_list_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER evdo_daily_nbr_list_trigger_part
    BEFORE INSERT ON daily_nbr_list
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_nbr_list_part();


--
-- PostgreSQL database dump complete
--

