--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw_voice, pg_catalog;

DROP TRIGGER dw_voice_sam_voice_bts_shelf_slot_params_fact_trigger_part ON dw_voice.sam_voice_bts_shelf_slot_params_fact;
DROP INDEX dw_voice.sam_voice_bts_shelf_slot_params_fact_cid;
ALTER TABLE ONLY dw_voice.sam_voice_bts_shelf_slot_params_fact DROP CONSTRAINT sam_voice_bts_shelf_slot_params_pk;
DROP TABLE dw_voice.sam_voice_bts_shelf_slot_params_fact;
SET search_path = dw_voice, pg_catalog;

SET default_tablespace = p2_dw_voicedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_shelf_slot_params_fact; Type: TABLE; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voicedata
--

CREATE TABLE sam_voice_bts_shelf_slot_params_fact (
    day_dim_id integer NOT NULL,
    prev_sam_voice_bts_shelf_slot_params_dim_id integer NOT NULL,
    curr_sam_voice_bts_shelf_slot_params_dim_id integer,
    parameter_name character varying(70) NOT NULL,
    dw_columnname character varying(70) NOT NULL,
    parameter_datatype character varying(20) NOT NULL,
    prev_value_str character varying(100) NOT NULL,
    curr_value_str character varying(100) NOT NULL,
    prev_value_int integer,
    curr_value_int integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_voice_bts_shelf_slot_params_pk; Type: CONSTRAINT; Schema: dw_voice; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_voice_bts_shelf_slot_params_fact
    ADD CONSTRAINT sam_voice_bts_shelf_slot_params_pk PRIMARY KEY (day_dim_id, prev_sam_voice_bts_shelf_slot_params_dim_id, parameter_name);


SET default_tablespace = p2_dw_voiceindex;

--
-- Name: sam_voice_bts_shelf_slot_params_fact_cid; Type: INDEX; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

CREATE INDEX sam_voice_bts_shelf_slot_params_fact_cid ON sam_voice_bts_shelf_slot_params_fact USING btree (curr_sam_voice_bts_shelf_slot_params_dim_id);


--
-- Name: dw_voice_sam_voice_bts_shelf_slot_params_fact_trigger_part; Type: TRIGGER; Schema: dw_voice; Owner: -
--

CREATE TRIGGER dw_voice_sam_voice_bts_shelf_slot_params_fact_trigger_part
    BEFORE INSERT ON sam_voice_bts_shelf_slot_params_fact
    FOR EACH ROW
    EXECUTE PROCEDURE trg_sam_voice_bts_shelf_slot_params_fact_part();


--
-- PostgreSQL database dump complete
--

