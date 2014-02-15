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

DROP TRIGGER hourly_sam_plmn_c_num_trigger_part ON lte.hourly_sam_plmn_c_num;
DROP INDEX lte.ix01_hourly_sam_plmn_c_num;
DROP INDEX lte.hourly_sam_plmn_c_num_itmdt_ix;
DROP INDEX lte.hourly_sam_plmn_c_num_idx1;
DROP INDEX lte.hourly_sam_plmn_c_num_idx;
DROP TABLE lte.hourly_sam_plmn_c_num;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_plmn_c_num; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE hourly_sam_plmn_c_num (
    item_date date,
    lsm_name character varying(30),
    sw_release character varying(32),
    enodeb_id integer,
    hour integer,
    minute integer,
    plmn character varying(32),
    c_num character varying(32),
    conn_cnt_plmn real,
    conn_max_plmn real,
    conn_no_plmn real,
    conn_tot_plmn real
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_lteindex;

--
-- Name: hourly_sam_plmn_c_num_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_plmn_c_num_idx ON hourly_sam_plmn_c_num USING btree (enodeb_id);


--
-- Name: hourly_sam_plmn_c_num_idx1; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_plmn_c_num_idx1 ON hourly_sam_plmn_c_num USING btree (item_date, enodeb_id);


--
-- Name: hourly_sam_plmn_c_num_itmdt_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_plmn_c_num_itmdt_ix ON hourly_sam_plmn_c_num USING btree (item_date);


--
-- Name: ix01_hourly_sam_plmn_c_num; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX ix01_hourly_sam_plmn_c_num ON hourly_sam_plmn_c_num USING btree (lsm_name, item_date, hour, minute);


--
-- Name: hourly_sam_plmn_c_num_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER hourly_sam_plmn_c_num_trigger_part
    BEFORE INSERT ON hourly_sam_plmn_c_num
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_plmn_c_num_part();


--
-- PostgreSQL database dump complete
--

