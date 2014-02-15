--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = lte, pg_catalog;

DROP TRIGGER lte_daily_nbr_list_trigger_part ON lte.daily_nbr_list;
DROP INDEX lte.daily_nbr_list_idx;
DROP TABLE lte.daily_nbr_list;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: daily_nbr_list; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE daily_nbr_list (
    item_date date NOT NULL,
    market character varying(50),
    lsm_name character varying(30) NOT NULL,
    s_enodeb_id integer NOT NULL,
    cell_id integer,
    relation_idx integer,
    status character varying(10),
    enodeb_id integer,
    target_cell_id integer,
    enodeb_type character varying(15),
    enodeb_mcc integer,
    enodeb_mnc integer,
    phy_cell_id integer,
    tac character varying(30),
    mcc0 integer,
    mnc0 integer,
    mcc1 integer,
    mnc1 integer,
    mcc2 integer,
    mnc2 integer,
    mcc3 integer,
    mnc3 integer,
    mcc4 integer,
    mnc4 integer,
    mcc5 integer,
    mnc5 integer,
    earfcn_ul integer,
    earfcn_dl integer,
    bandwidth_ul character varying(25),
    bandwidth_dl character varying(25),
    ind_offset character varying(10),
    qoffset_cell character varying(10),
    is_remove_allowed boolean,
    is_hoallowed boolean,
    s_cascade_id character varying(20),
    d_cascade_id character varying(20)
)
WITH (autovacuum_enabled=true);
ALTER TABLE ONLY daily_nbr_list ALTER COLUMN enodeb_id SET STATISTICS 1000;


SET default_tablespace = p2_lteindex;

--
-- Name: daily_nbr_list_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX daily_nbr_list_idx ON daily_nbr_list USING btree (item_date);


--
-- Name: lte_daily_nbr_list_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER lte_daily_nbr_list_trigger_part
    BEFORE INSERT ON daily_nbr_list
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_nbr_list_part();


--
-- PostgreSQL database dump complete
--

