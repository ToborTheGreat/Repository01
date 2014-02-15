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

DROP TRIGGER hourly_sam_c_num_dl_layer_trigger_part ON lte.hourly_sam_c_num_dl_layer;
DROP INDEX lte.ix1_hourly_sam_c_num_dl_layer;
DROP INDEX lte.hourly_sam_c_num_dl_layer_itmdt_ix;
DROP TABLE lte.hourly_sam_c_num_dl_layer;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = true;

--
-- Name: hourly_sam_c_num_dl_layer; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE hourly_sam_c_num_dl_layer (
    item_date date NOT NULL,
    lsm_name character varying(30) NOT NULL,
    sw_release character varying(32) NOT NULL,
    enodeb_id integer NOT NULL,
    hour integer NOT NULL,
    minute integer NOT NULL,
    c_num character varying(32) NOT NULL,
    dl_layer character varying(32) NOT NULL,
    pdsch_ble_rper_layer real,
    pdsch_ble_rper_layer_cnt bigint,
    pdsch_ble_rper_layer_tot real,
    pusch_ble_rper_layer real,
    pusch_ble_rper_layer_cnt bigint,
    pusch_ble_rper_layer_tot real
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_lteindex;

--
-- Name: hourly_sam_c_num_dl_layer_itmdt_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_dl_layer_itmdt_ix ON hourly_sam_c_num_dl_layer USING btree (item_date);


--
-- Name: ix1_hourly_sam_c_num_dl_layer; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX ix1_hourly_sam_c_num_dl_layer ON hourly_sam_c_num_dl_layer USING btree (lsm_name, item_date, hour, minute);


--
-- Name: hourly_sam_c_num_dl_layer_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER hourly_sam_c_num_dl_layer_trigger_part
    BEFORE INSERT ON hourly_sam_c_num_dl_layer
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_c_num_dl_layer_part();


--
-- PostgreSQL database dump complete
--

