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

DROP TRIGGER hourly_sam_c_num_csfb_indicator_trigger_part ON lte.hourly_sam_c_num_csfb_indicator;
DROP INDEX lte.hourly_sam_c_num_csfb_indicator_ix;
DROP INDEX lte.hourly_sam_c_num_csfb_indicator_idx;
DROP TABLE lte.hourly_sam_c_num_csfb_indicator;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_c_num_csfb_indicator; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE hourly_sam_c_num_csfb_indicator (
    item_date date NOT NULL,
    lsm_name character varying(30) NOT NULL,
    sw_release character varying(32) NOT NULL,
    enodeb_id integer NOT NULL,
    hour integer NOT NULL,
    minute integer NOT NULL,
    c_num character varying(32) NOT NULL,
    csfb_indicator character varying(32) NOT NULL,
    ecsfb_att_c1_xrtt bigint,
    ecsfb_fail1_xrtt_cp_cc_fail bigint,
    ecsfb_fail1_xrtt_cp_cc_to bigint,
    ecsfb_fail1_xrtt_s1_ap_ro_to bigint,
    ecsfb_fail1_xrtt_up_gtp_fail bigint,
    ecsfb_fail1_xrtt_up_mac_fail bigint,
    ecsfb_fail1_xrtt_up_pdcp_fail bigint,
    ecsfb_fail1_xrtt_up_rlc_fail bigint,
    ecsfb_prep_fail1_xrtt_rrc_sig_to bigint,
    ecsfb_prep_fail1_xrtt_s1_ap_cu_fail bigint,
    ecsfb_prep_fail1_xrtt_s1_ap_sig_to bigint,
    ecsfb_prep_succ_c1_xrtt bigint,
    ecsfb_succ_c1_xrtt bigint
)
WITH (autovacuum_analyze_scale_factor=0.4);


SET default_tablespace = p2_lteindex;

--
-- Name: hourly_sam_c_num_csfb_indicator_idx; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_csfb_indicator_idx ON hourly_sam_c_num_csfb_indicator USING btree (enodeb_id);


--
-- Name: hourly_sam_c_num_csfb_indicator_ix; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX hourly_sam_c_num_csfb_indicator_ix ON hourly_sam_c_num_csfb_indicator USING btree (item_date);


--
-- Name: hourly_sam_c_num_csfb_indicator_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER hourly_sam_c_num_csfb_indicator_trigger_part
    BEFORE INSERT ON hourly_sam_c_num_csfb_indicator
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_c_num_csfb_indicator_part();


--
-- PostgreSQL database dump complete
--

