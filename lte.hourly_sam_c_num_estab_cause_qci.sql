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

DROP TRIGGER hourly_sam_c_num_estab_cause_qci_trigger_part ON lte.hourly_sam_c_num_estab_cause_qci;
DROP INDEX lte.ix01_hourly_sam_c_num_estab_cause_qci;
DROP INDEX lte.hourly_sam_c_num_estab_cause_qci_itmdt_ix;
DROP INDEX lte.hourly_sam_c_num_estab_cause_qci_idx2;
DROP INDEX lte.hourly_sam_c_num_estab_cause_qci_idx;
DROP TABLE lte.hourly_sam_c_num_estab_cause_qci;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_c_num_estab_cause_qci; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE hourly_sam_c_num_estab_cause_qci (
    item_date date,
    lsm_name character varying(30),
    sw_release character varying(32),
    enodeb_id integer,
    hour integer,
    minute integer,
    c_num character varying(32),
    estab_cause character varying(32),
    qci character varying(32),
    estab_init_att_nbr bigint,
    estab_init_succ_nbr bigint
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);
ALTER TABLE ONLY hourly_sam_c_num_estab_cause_qci ALTER COLUMN enodeb_id SET STATISTICS 1000;


SET default_tablespace = p2_lteindex;

--
-- Name: hourly_sam_c_num_estab_cause_qci_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_estab_cause_qci_idx ON hourly_sam_c_num_estab_cause_qci USING btree (enodeb_id);


--
-- Name: hourly_sam_c_num_estab_cause_qci_idx2; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_estab_cause_qci_idx2 ON hourly_sam_c_num_estab_cause_qci USING btree (item_date, enodeb_id);


--
-- Name: hourly_sam_c_num_estab_cause_qci_itmdt_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_estab_cause_qci_itmdt_ix ON hourly_sam_c_num_estab_cause_qci USING btree (item_date);


--
-- Name: ix01_hourly_sam_c_num_estab_cause_qci; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX ix01_hourly_sam_c_num_estab_cause_qci ON hourly_sam_c_num_estab_cause_qci USING btree (lsm_name, item_date, hour, minute);


--
-- Name: hourly_sam_c_num_estab_cause_qci_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER hourly_sam_c_num_estab_cause_qci_trigger_part
    BEFORE INSERT ON hourly_sam_c_num_estab_cause_qci
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_c_num_estab_cause_qci_part();


--
-- PostgreSQL database dump complete
--

