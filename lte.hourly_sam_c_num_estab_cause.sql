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

DROP TRIGGER hourly_sam_c_num_estab_cause_trigger_part ON lte.hourly_sam_c_num_estab_cause;
DROP INDEX lte.ix01_hourly_sam_c_num_estab_cause;
DROP INDEX lte.hourly_sam_c_num_estab_cause_itmdt_ix;
DROP INDEX lte.hourly_sam_c_num_estab_cause_idx1;
DROP INDEX lte.hourly_sam_c_num_estab_cause_idx;
DROP TABLE lte.hourly_sam_c_num_estab_cause;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_c_num_estab_cause; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE hourly_sam_c_num_estab_cause (
    item_date date,
    lsm_name character varying(30),
    sw_release character varying(32),
    enodeb_id integer,
    hour integer,
    minute integer,
    c_num character varying(32),
    estab_cause character varying(32),
    call_drop_eccb_arq_max_re_transmission bigint,
    call_drop_eccb_dsp_audit_mac_call_release bigint,
    call_drop_eccb_dsp_audit_rlc_call_release bigint,
    call_drop_eccb_dsp_audit_rlc_mac_call_release bigint,
    call_drop_eccb_radio_link_failure bigint,
    call_drop_eccb_rcv_cell_release_ind_from_ecmb bigint,
    call_drop_eccb_rcv_reset_request_from_ecmb bigint,
    call_drop_eccb_s1_sctp_out_of_service bigint,
    call_drop_eccb_tmout_rrc_connection_re_establish bigint,
    call_drop_eccb_tmout_rrc_connection_reconfig bigint,
    estab_time_cause real,
    estab_time_cnt_cause real,
    estab_time_max_cause real,
    estab_time_tot_cause real,
    conn_estab_att bigint,
    conn_estab_succ bigint,
    conn_estab_time real,
    conn_estab_time_cnt bigint,
    conn_estab_time_tot real,
    s1_sig_time_avg real,
    s1_sig_time_cnt bigint,
    s1_sig_time_max real,
    s1_sig_time_tot real,
    s1_conn_estab_att bigint,
    s1_conn_estab_succ bigint,
    conn_estab_time_max real
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_lteindex;

--
-- Name: hourly_sam_c_num_estab_cause_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_estab_cause_idx ON hourly_sam_c_num_estab_cause USING btree (enodeb_id);


--
-- Name: hourly_sam_c_num_estab_cause_idx1; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_estab_cause_idx1 ON hourly_sam_c_num_estab_cause USING btree (item_date, enodeb_id);


--
-- Name: hourly_sam_c_num_estab_cause_itmdt_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_estab_cause_itmdt_ix ON hourly_sam_c_num_estab_cause USING btree (item_date);


--
-- Name: ix01_hourly_sam_c_num_estab_cause; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX ix01_hourly_sam_c_num_estab_cause ON hourly_sam_c_num_estab_cause USING btree (lsm_name, item_date, hour, minute);


--
-- Name: hourly_sam_c_num_estab_cause_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER hourly_sam_c_num_estab_cause_trigger_part
    BEFORE INSERT ON hourly_sam_c_num_estab_cause
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_c_num_estab_cause_part();


--
-- PostgreSQL database dump complete
--

