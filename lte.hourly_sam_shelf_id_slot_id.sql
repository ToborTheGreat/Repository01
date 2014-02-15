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

DROP TRIGGER hourly_sam_shelf_id_slot_id_trigger_part ON lte.hourly_sam_shelf_id_slot_id;
DROP INDEX lte.ix01_hourly_sam_shelf_id_slot_id;
DROP INDEX lte.hourly_sam_shelf_id_slot_id_itmdt_ix;
DROP INDEX lte.hourly_sam_shelf_id_slot_id_idx1;
DROP INDEX lte.hourly_sam_shelf_id_slot_id_idx;
DROP TABLE lte.hourly_sam_shelf_id_slot_id;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_shelf_id_slot_id; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE hourly_sam_shelf_id_slot_id (
    item_date date,
    lsm_name character varying(30),
    sw_release character varying(32),
    enodeb_id integer,
    hour integer,
    minute integer,
    shelf_id character varying(32),
    slot_id character varying(32),
    cpu_usage_cnt bigint,
    cpu_usage_max_duration real,
    cpu_usage_tot real,
    disk_usage_cnt bigint,
    disk_usage_tot real,
    mem_usage_cnt bigint,
    mem_usage_tot real
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_lteindex;

--
-- Name: hourly_sam_shelf_id_slot_id_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_shelf_id_slot_id_idx ON hourly_sam_shelf_id_slot_id USING btree (enodeb_id);


--
-- Name: hourly_sam_shelf_id_slot_id_idx1; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_shelf_id_slot_id_idx1 ON hourly_sam_shelf_id_slot_id USING btree (item_date, enodeb_id);


--
-- Name: hourly_sam_shelf_id_slot_id_itmdt_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_shelf_id_slot_id_itmdt_ix ON hourly_sam_shelf_id_slot_id USING btree (item_date);


--
-- Name: ix01_hourly_sam_shelf_id_slot_id; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX ix01_hourly_sam_shelf_id_slot_id ON hourly_sam_shelf_id_slot_id USING btree (lsm_name, item_date, hour, minute);


--
-- Name: hourly_sam_shelf_id_slot_id_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER hourly_sam_shelf_id_slot_id_trigger_part
    BEFORE INSERT ON hourly_sam_shelf_id_slot_id
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_shelf_id_slot_id_part();


--
-- PostgreSQL database dump complete
--

