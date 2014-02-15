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

DROP TRIGGER voice_daily_ho_matrix_trigger_part ON voice.daily_ho_matrix;
DROP INDEX voice.daily_ho_matrix_idx1;
DROP INDEX voice.daily_ho_matrix_idx;
DROP TABLE voice.daily_ho_matrix;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: daily_ho_matrix; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE daily_ho_matrix (
    item_date date NOT NULL,
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    s_cascade_id character varying(30),
    s_nid integer NOT NULL,
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
)
WITH (autovacuum_enabled=true);
ALTER TABLE ONLY daily_ho_matrix ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: daily_ho_matrix_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_ho_matrix_idx ON daily_ho_matrix USING btree (item_date);


--
-- Name: daily_ho_matrix_idx1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX daily_ho_matrix_idx1 ON daily_ho_matrix USING btree (item_date, s_cascade_id);


--
-- Name: voice_daily_ho_matrix_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER voice_daily_ho_matrix_trigger_part
    BEFORE INSERT ON daily_ho_matrix
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_ho_matrix_part();


--
-- PostgreSQL database dump complete
--

