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

DROP TRIGGER evdo_daily_market_nbr_quality_agg_trigger_part ON evdo.daily_market_nbr_quality_agg;
DROP INDEX evdo.daily_market_nbr_quality_agg_ix1;
DROP TABLE evdo.daily_market_nbr_quality_agg;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: daily_market_nbr_quality_agg; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE daily_market_nbr_quality_agg (
    item_date date NOT NULL,
    market character varying(50) NOT NULL,
    total_sectors integer NOT NULL,
    total_targets integer NOT NULL,
    incomplete_sectors integer NOT NULL,
    missing_targets integer NOT NULL,
    ind_contrib_rule double precision NOT NULL,
    cum_contrib_rule double precision
);


SET default_tablespace = p2_evdoindex;

--
-- Name: daily_market_nbr_quality_agg_ix1; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_market_nbr_quality_agg_ix1 ON daily_market_nbr_quality_agg USING btree (item_date, market);


--
-- Name: evdo_daily_market_nbr_quality_agg_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER evdo_daily_market_nbr_quality_agg_trigger_part
    BEFORE INSERT ON daily_market_nbr_quality_agg
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_market_nbr_quality_agg_part();


--
-- PostgreSQL database dump complete
--

