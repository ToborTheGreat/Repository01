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

DROP TRIGGER dw_voice_sam_voice_bts_port_shelf_slot_parm_aud_ff_trigger_part ON dw_voice.sam_voice_bts_port_shelf_slot_parm_aud_ff;
ALTER TABLE ONLY dw_voice.sam_voice_bts_port_shelf_slot_parm_aud_ff DROP CONSTRAINT sam_voice_bts_port_shelf_slot_parm_aud_ff_pk;
DROP TABLE dw_voice.sam_voice_bts_port_shelf_slot_parm_aud_ff;
SET search_path = dw_voice, pg_catalog;

SET default_tablespace = p2_dw_voicedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_port_shelf_slot_parm_aud_ff; Type: TABLE; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voicedata
--

CREATE TABLE sam_voice_bts_port_shelf_slot_parm_aud_ff (
    day_dim_id integer NOT NULL,
    sam_voice_bts_port_shelf_slot_params_dim_id integer NOT NULL,
    parameter_catalog_dim_id integer NOT NULL
);


SET default_tablespace = p2_dw_voiceindex;

--
-- Name: sam_voice_bts_port_shelf_slot_parm_aud_ff_pk; Type: CONSTRAINT; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

ALTER TABLE ONLY sam_voice_bts_port_shelf_slot_parm_aud_ff
    ADD CONSTRAINT sam_voice_bts_port_shelf_slot_parm_aud_ff_pk PRIMARY KEY (day_dim_id, sam_voice_bts_port_shelf_slot_params_dim_id, parameter_catalog_dim_id);


--
-- Name: dw_voice_sam_voice_bts_port_shelf_slot_parm_aud_ff_trigger_part; Type: TRIGGER; Schema: dw_voice; Owner: -
--

CREATE TRIGGER dw_voice_sam_voice_bts_port_shelf_slot_parm_aud_ff_trigger_part
    BEFORE INSERT ON sam_voice_bts_port_shelf_slot_parm_aud_ff
    FOR EACH ROW
    EXECUTE PROCEDURE trg_sam_voice_bts_port_shelf_slot_parm_aud_ff_part();


--
-- PostgreSQL database dump complete
--

