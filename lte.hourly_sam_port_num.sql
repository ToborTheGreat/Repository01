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

DROP TRIGGER hourly_sam_port_num_trigger_part ON lte.hourly_sam_port_num;
DROP INDEX lte.ix01_hourly_sam_port_num;
DROP INDEX lte.hourly_sam_port_num_itmdt_ix;
DROP INDEX lte.hourly_sam_port_num_idx2;
DROP INDEX lte.hourly_sam_port_num_idx;
DROP TABLE lte.hourly_sam_port_num;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_port_num; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE hourly_sam_port_num (
    item_date date,
    lsm_name character varying(30),
    sw_release character varying(32),
    enodeb_id integer,
    hour integer,
    minute integer,
    port_num character varying(32),
    rx_bad_crc bigint,
    rx_broadcast_packet bigint,
    rx_collision bigint,
    rx_error_frame bigint,
    rx_error_rate real,
    rx_fifo_overrun bigint,
    rx_fragment bigint,
    rx_good_octet bigint,
    rx_good_octet_sum_bad_octet_cnt bigint,
    rx_good_octet_sum_bad_octet_tot bigint,
    rx_jabber bigint,
    rx_late_collision bigint,
    rx_multicast_packet bigint,
    rx_oversize bigint,
    rx_undersize bigint,
    rx_unicast_packet bigint,
    tx_broadcast_packet bigint,
    tx_deferred bigint,
    tx_e_collisions bigint,
    tx_error_rate real,
    tx_good_octet bigint,
    tx_good_octet_sum_bad_octet_cnt bigint,
    tx_good_octet_sum_bad_octet_tot bigint,
    tx_multicast_packet bigint,
    tx_underrun_bad_crc bigint,
    tx_unicast_packet bigint,
    rx_link_utilization real,
    rx_link_utilization_max real,
    tx_link_utilization real,
    tx_link_utilization_max real
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_lteindex;

--
-- Name: hourly_sam_port_num_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_port_num_idx ON hourly_sam_port_num USING btree (enodeb_id);


--
-- Name: hourly_sam_port_num_idx2; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_port_num_idx2 ON hourly_sam_port_num USING btree (item_date, enodeb_id);


--
-- Name: hourly_sam_port_num_itmdt_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_port_num_itmdt_ix ON hourly_sam_port_num USING btree (item_date);


--
-- Name: ix01_hourly_sam_port_num; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX ix01_hourly_sam_port_num ON hourly_sam_port_num USING btree (lsm_name, item_date, hour, minute);


--
-- Name: hourly_sam_port_num_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER hourly_sam_port_num_trigger_part
    BEFORE INSERT ON hourly_sam_port_num
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_port_num_part();


--
-- PostgreSQL database dump complete
--

