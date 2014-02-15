--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = geo, pg_catalog;

ALTER TABLE ONLY geo.sm_atp_pass_profile_img_map_preset DROP CONSTRAINT sm_atp_pass_profile_img_map_fk1;
ALTER TABLE ONLY geo.sm_atp_pass_profile_img_map_preset DROP CONSTRAINT sm_atp_pass_profile_img_map_fk;
ALTER TABLE ONLY geo.sm_atp_pass_profile_img_map_preset DROP CONSTRAINT sm_atp_pass_profile_pass_profile_img_map_id_key;
ALTER TABLE ONLY geo.sm_atp_pass_profile_img_map_preset DROP CONSTRAINT sm_atp_pass_profile_img_map_idx;
ALTER TABLE geo.sm_atp_pass_profile_img_map_preset ALTER COLUMN pass_profile_img_map_id DROP DEFAULT;
DROP SEQUENCE geo.sm_atp_pass_profile_img_map_preset_pass_profile_img_map_id_seq;
DROP TABLE geo.sm_atp_pass_profile_img_map_preset;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_pass_profile_img_map_preset; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_pass_profile_img_map_preset (
    pass_profile_id integer NOT NULL,
    technology_type_id integer NOT NULL,
    pass_profile_img_map_id integer NOT NULL,
    image_map_name character varying(150),
    img_map_layer_kpi_name character varying(150),
    ws_default_status character(1) DEFAULT 'I'::bpchar NOT NULL,
    template_img_name character varying(50),
    legend_creation_required character(1) DEFAULT 'N'::bpchar,
    legend_img_name character varying(50),
    CONSTRAINT chk_legend_image CHECK ((((legend_creation_required = 'Y'::bpchar) AND (length(btrim((legend_img_name)::text)) > 0)) OR ((legend_creation_required = 'N'::bpchar) AND (length(btrim((legend_img_name)::text)) <= 0))))
);


--
-- Name: sm_atp_pass_profile_img_map_preset_pass_profile_img_map_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE sm_atp_pass_profile_img_map_preset_pass_profile_img_map_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: sm_atp_pass_profile_img_map_preset_pass_profile_img_map_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE sm_atp_pass_profile_img_map_preset_pass_profile_img_map_id_seq OWNED BY sm_atp_pass_profile_img_map_preset.pass_profile_img_map_id;


--
-- Name: pass_profile_img_map_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE sm_atp_pass_profile_img_map_preset ALTER COLUMN pass_profile_img_map_id SET DEFAULT nextval('sm_atp_pass_profile_img_map_preset_pass_profile_img_map_id_seq'::regclass);


--
-- Name: sm_atp_pass_profile_img_map_idx; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_pass_profile_img_map_preset
    ADD CONSTRAINT sm_atp_pass_profile_img_map_idx PRIMARY KEY (pass_profile_img_map_id);


--
-- Name: sm_atp_pass_profile_pass_profile_img_map_id_key; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_pass_profile_img_map_preset
    ADD CONSTRAINT sm_atp_pass_profile_pass_profile_img_map_id_key UNIQUE (pass_profile_id, technology_type_id, pass_profile_img_map_id);


--
-- Name: sm_atp_pass_profile_img_map_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_img_map_preset
    ADD CONSTRAINT sm_atp_pass_profile_img_map_fk FOREIGN KEY (pass_profile_id) REFERENCES sm_atp_pass_profiles(pass_profile_id);


--
-- Name: sm_atp_pass_profile_img_map_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_pass_profile_img_map_preset
    ADD CONSTRAINT sm_atp_pass_profile_img_map_fk1 FOREIGN KEY (technology_type_id) REFERENCES technology_types(technology_type_id);


--
-- PostgreSQL database dump complete
--

