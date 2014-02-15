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

DROP TRIGGER hourly_sam_c_num_tc_id_step_trigger_part ON lte.hourly_sam_c_num_tc_id_step;
DROP INDEX lte.ix1_hourly_sam_c_num_tc_id_step;
DROP INDEX lte.hourly_sam_c_num_tc_id_step_itmdt_ix;
DROP INDEX lte.hourly_sam_c_num_tc_id_step_idx1;
DROP INDEX lte.hourly_sam_c_num_tc_id_step_idx;
DROP TABLE lte.hourly_sam_c_num_tc_id_step;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = true;

--
-- Name: hourly_sam_c_num_tc_id_step; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE hourly_sam_c_num_tc_id_step (
    item_date date NOT NULL,
    lsm_name character varying(30) NOT NULL,
    sw_release character varying(32) NOT NULL,
    enodeb_id integer NOT NULL,
    hour integer NOT NULL,
    minute integer NOT NULL,
    c_num character varying(32) NOT NULL,
    tc_id character varying(32) NOT NULL,
    step character varying(32) NOT NULL,
    mlb_ho_att bigint,
    mlb_ho_succ bigint
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);
ALTER TABLE ONLY hourly_sam_c_num_tc_id_step ALTER COLUMN enodeb_id SET STATISTICS 1000;


SET default_tablespace = p2_lteindex;

--
-- Name: hourly_sam_c_num_tc_id_step_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_tc_id_step_idx ON hourly_sam_c_num_tc_id_step USING btree (enodeb_id);


--
-- Name: hourly_sam_c_num_tc_id_step_idx1; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_tc_id_step_idx1 ON hourly_sam_c_num_tc_id_step USING btree (item_date, enodeb_id);


--
-- Name: hourly_sam_c_num_tc_id_step_itmdt_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_tc_id_step_itmdt_ix ON hourly_sam_c_num_tc_id_step USING btree (item_date);


--
-- Name: ix1_hourly_sam_c_num_tc_id_step; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX ix1_hourly_sam_c_num_tc_id_step ON hourly_sam_c_num_tc_id_step USING btree (lsm_name, item_date, hour, minute);


--
-- Name: hourly_sam_c_num_tc_id_step_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER hourly_sam_c_num_tc_id_step_trigger_part
    BEFORE INSERT ON hourly_sam_c_num_tc_id_step
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_c_num_tc_id_step_part();


--
-- PostgreSQL database dump complete
--

