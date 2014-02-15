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

DROP TRIGGER hourly_sam_c_num_dl_layer_codeword_trigger_part ON lte.hourly_sam_c_num_dl_layer_codeword;
DROP INDEX lte.ix1_hourly_sam_c_num_dl_layer_codeword;
DROP INDEX lte.hourly_sam_c_num_dl_layer_codeword_ix;
DROP INDEX lte.hourly_sam_c_num_dl_layer_codeword_idx;
DROP TABLE lte.hourly_sam_c_num_dl_layer_codeword;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_c_num_dl_layer_codeword; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE hourly_sam_c_num_dl_layer_codeword (
    item_date date NOT NULL,
    lsm_name character varying(30) NOT NULL,
    sw_release character varying(32) NOT NULL,
    enodeb_id integer NOT NULL,
    hour integer NOT NULL,
    minute integer NOT NULL,
    c_num character varying(32) NOT NULL,
    dl_layer character varying(32) NOT NULL,
    codeword character varying(32) NOT NULL,
    dl_received_cqi0 bigint,
    dl_received_cqi1 bigint,
    dl_received_cqi10 bigint,
    dl_received_cqi11 bigint,
    dl_received_cqi12 bigint,
    dl_received_cqi13 bigint,
    dl_received_cqi14 bigint,
    dl_received_cqi15 bigint,
    dl_received_cqi2 bigint,
    dl_received_cqi3 bigint,
    dl_received_cqi4 bigint,
    dl_received_cqi5 bigint,
    dl_received_cqi6 bigint,
    dl_received_cqi7 bigint,
    dl_received_cqi8 bigint,
    dl_received_cqi9 bigint,
    dl_received_cqi_avg real,
    dl_received_cqi_max bigint,
    dl_received_cqi_min bigint
)
WITH (autovacuum_analyze_scale_factor=0.4);
ALTER TABLE ONLY hourly_sam_c_num_dl_layer_codeword ALTER COLUMN enodeb_id SET STATISTICS 1000;


SET default_tablespace = p2_lteindex;

--
-- Name: hourly_sam_c_num_dl_layer_codeword_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_dl_layer_codeword_idx ON hourly_sam_c_num_dl_layer_codeword USING btree (enodeb_id);


--
-- Name: hourly_sam_c_num_dl_layer_codeword_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_dl_layer_codeword_ix ON hourly_sam_c_num_dl_layer_codeword USING btree (item_date);


--
-- Name: ix1_hourly_sam_c_num_dl_layer_codeword; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX ix1_hourly_sam_c_num_dl_layer_codeword ON hourly_sam_c_num_dl_layer_codeword USING btree (lsm_name, item_date, hour, minute);


--
-- Name: hourly_sam_c_num_dl_layer_codeword_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER hourly_sam_c_num_dl_layer_codeword_trigger_part
    BEFORE INSERT ON hourly_sam_c_num_dl_layer_codeword
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_c_num_dl_layer_codeword_part();


--
-- PostgreSQL database dump complete
--

