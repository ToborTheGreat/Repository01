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

DROP TRIGGER hourly_sam_c_num_tc_id_ho_cause_trigger_part ON lte.hourly_sam_c_num_tc_id_ho_cause;
DROP INDEX lte.ix1_hourly_sam_c_num_tc_id_ho_cause;
DROP INDEX lte.hourly_sam_c_num_tc_id_ho_cause_itmdt_ix;
DROP INDEX lte.hourly_sam_c_num_tc_id_ho_cause_idx2;
DROP INDEX lte.hourly_sam_c_num_tc_id_ho_cause_idx;
DROP TABLE lte.hourly_sam_c_num_tc_id_ho_cause;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = true;

--
-- Name: hourly_sam_c_num_tc_id_ho_cause; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE hourly_sam_c_num_tc_id_ho_cause (
    item_date date NOT NULL,
    lsm_name character varying(30) NOT NULL,
    sw_release character varying(32) NOT NULL,
    enodeb_id integer NOT NULL,
    hour integer NOT NULL,
    minute integer NOT NULL,
    c_num character varying(32) NOT NULL,
    tc_id character varying(32) NOT NULL,
    ho_cause character varying(32) NOT NULL,
    intra_enb_att bigint,
    intra_enb_prep_succ bigint,
    intra_enb_succ bigint,
    inter_s1_out_att bigint,
    inter_s1_out_prep_succ bigint,
    inter_s1_out_succ bigint,
    inter_x2_out_att bigint,
    inter_x2_out_prep_succ bigint,
    inter_x2_out_succ bigint,
    intra_enb_cnt bigint,
    inter_s1_out_cnt bigint,
    inter_x2_out_cnt bigint
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_lteindex;

--
-- Name: hourly_sam_c_num_tc_id_ho_cause_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_tc_id_ho_cause_idx ON hourly_sam_c_num_tc_id_ho_cause USING btree (enodeb_id);


--
-- Name: hourly_sam_c_num_tc_id_ho_cause_idx2; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_tc_id_ho_cause_idx2 ON hourly_sam_c_num_tc_id_ho_cause USING btree (item_date, enodeb_id);


--
-- Name: hourly_sam_c_num_tc_id_ho_cause_itmdt_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_tc_id_ho_cause_itmdt_ix ON hourly_sam_c_num_tc_id_ho_cause USING btree (item_date);


--
-- Name: ix1_hourly_sam_c_num_tc_id_ho_cause; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX ix1_hourly_sam_c_num_tc_id_ho_cause ON hourly_sam_c_num_tc_id_ho_cause USING btree (lsm_name, item_date, hour, minute);


--
-- Name: hourly_sam_c_num_tc_id_ho_cause_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER hourly_sam_c_num_tc_id_ho_cause_trigger_part
    BEFORE INSERT ON hourly_sam_c_num_tc_id_ho_cause
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_c_num_tc_id_ho_cause_part();


--
-- PostgreSQL database dump complete
--

