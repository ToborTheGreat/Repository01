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

DROP TRIGGER evdo_daily_ho_matrix_trigger_part ON evdo.daily_ho_matrix;
DROP INDEX evdo.daily_ho_matrix_evdo_idx1;
DROP INDEX evdo.daily_ho_matrix_evdo_idx;
DROP TABLE evdo.daily_ho_matrix;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: daily_ho_matrix; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE daily_ho_matrix (
    item_date date NOT NULL,
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    s_cascade_id character varying(30),
    s_bsc integer,
    s_bts integer NOT NULL,
    s_sector integer NOT NULL,
    s_pn integer NOT NULL,
    d_pn integer NOT NULL,
    d_cascade_id character varying(30),
    d_sector integer,
    pn_att integer,
    pn_suc integer,
    pn_ngbr_fail integer,
    ind_contrib real,
    cum_contrib real,
    dist_km real,
    rev_bearing_delta real,
    ho_rank integer,
    bsc_market character varying(50)
);


SET default_tablespace = p2_evdoindex;

--
-- Name: daily_ho_matrix_evdo_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_ho_matrix_evdo_idx ON daily_ho_matrix USING btree (item_date);


--
-- Name: daily_ho_matrix_evdo_idx1; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_ho_matrix_evdo_idx1 ON daily_ho_matrix USING btree (item_date, s_cascade_id);


--
-- Name: evdo_daily_ho_matrix_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER evdo_daily_ho_matrix_trigger_part
    BEFORE INSERT ON daily_ho_matrix
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_ho_matrix_part();


--
-- PostgreSQL database dump complete
--

