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

DROP TRIGGER hourly_sam_c_num_qci_trigger_part ON lte.hourly_sam_c_num_qci;
DROP INDEX lte.ix01_hourly_sam_c_num_qci;
DROP INDEX lte.hourly_sam_c_num_qci_itmdt_ix;
DROP INDEX lte.hourly_sam_c_num_qci_idx2;
DROP INDEX lte.hourly_sam_c_num_qci_idx;
DROP TABLE lte.hourly_sam_c_num_qci;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_c_num_qci; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE hourly_sam_c_num_qci (
    item_date date,
    lsm_name character varying(30),
    sw_release character varying(32),
    enodeb_id integer,
    hour integer,
    minute integer,
    c_num character varying(32),
    qci character varying(32),
    ueactive_dl real,
    ueactive_dl_cnt bigint,
    ueactive_dl_tot real,
    ueactive_ul real,
    ueactive_ul_cnt bigint,
    ueactive_ul_tot real,
    prb_dl real,
    prb_dl_cnt bigint,
    prb_dl_tot real,
    prb_ul real,
    prb_ul_cnt bigint,
    prb_ul_tot real,
    rel_active bigint,
    rel_fail_nbr_cp_cc_fail bigint,
    rel_succ_nbr bigint,
    estab_add_att_nbr bigint,
    estab_add_succ_nbr bigint,
    estab_time bigint,
    estab_time_cnt bigint,
    estab_time_tot bigint,
    usage_nbr_cnt bigint,
    usage_nbr_max real,
    usage_nbr_tot real,
    ip_late_dl real,
    ip_late_dl_cnt bigint,
    ip_late_dl_tot real,
    thru_dle_nbqci_cnt bigint,
    thru_dle_nbqci_tot real,
    thru_ule_nbqci_cnt bigint,
    thru_ule_nbqci_tot real,
    air_dl_thru_cnt bigint,
    air_dl_thru_tot real,
    air_ul_thru real,
    air_ul_thru_cnt bigint,
    air_ul_thru_tot real,
    ip_thru_cnt bigint,
    ip_thru_tot real
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_lteindex;

--
-- Name: hourly_sam_c_num_qci_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_qci_idx ON hourly_sam_c_num_qci USING btree (enodeb_id);


--
-- Name: hourly_sam_c_num_qci_idx2; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_qci_idx2 ON hourly_sam_c_num_qci USING btree (item_date, enodeb_id);


--
-- Name: hourly_sam_c_num_qci_itmdt_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_qci_itmdt_ix ON hourly_sam_c_num_qci USING btree (item_date);


--
-- Name: ix01_hourly_sam_c_num_qci; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX ix01_hourly_sam_c_num_qci ON hourly_sam_c_num_qci USING btree (lsm_name, item_date, hour, minute);


--
-- Name: hourly_sam_c_num_qci_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER hourly_sam_c_num_qci_trigger_part
    BEFORE INSERT ON hourly_sam_c_num_qci
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_c_num_qci_part();


--
-- PostgreSQL database dump complete
--

