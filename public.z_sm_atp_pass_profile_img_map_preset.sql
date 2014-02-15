--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.z_sm_atp_pass_profile_img_map_preset DROP CONSTRAINT sm_atp_pass_profile_img_map_fk1;
ALTER TABLE ONLY public.z_sm_atp_pass_profile_img_map_preset DROP CONSTRAINT sm_atp_pass_profile_img_map_fk;
ALTER TABLE ONLY public.z_sm_atp_pass_profile_img_map_preset DROP CONSTRAINT sm_atp_pass_profile_pass_profile_img_map_id_key;
ALTER TABLE ONLY public.z_sm_atp_pass_profile_img_map_preset DROP CONSTRAINT sm_atp_pass_profile_img_map_idx;
ALTER TABLE public.z_sm_atp_pass_profile_img_map_preset ALTER COLUMN pass_profile_img_map_id DROP DEFAULT;
DROP SEQUENCE public.z_sm_atp_pass_profile_img_map_preset_pass_profile_img_map_id_se;
DROP TABLE public.z_sm_atp_pass_profile_img_map_preset;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_pass_profile_img_map_preset; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_pass_profile_img_map_preset (
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
-- Name: z_sm_atp_pass_profile_img_map_preset_pass_profile_img_map_id_se; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_sm_atp_pass_profile_img_map_preset_pass_profile_img_map_id_se
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_sm_atp_pass_profile_img_map_preset_pass_profile_img_map_id_se; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_sm_atp_pass_profile_img_map_preset_pass_profile_img_map_id_se OWNED BY z_sm_atp_pass_profile_img_map_preset.pass_profile_img_map_id;


--
-- Name: pass_profile_img_map_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_sm_atp_pass_profile_img_map_preset ALTER COLUMN pass_profile_img_map_id SET DEFAULT nextval('z_sm_atp_pass_profile_img_map_preset_pass_profile_img_map_id_se'::regclass);


--
-- Name: sm_atp_pass_profile_img_map_idx; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_pass_profile_img_map_preset
    ADD CONSTRAINT sm_atp_pass_profile_img_map_idx PRIMARY KEY (pass_profile_img_map_id);


--
-- Name: sm_atp_pass_profile_pass_profile_img_map_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_pass_profile_img_map_preset
    ADD CONSTRAINT sm_atp_pass_profile_pass_profile_img_map_id_key UNIQUE (pass_profile_id, technology_type_id, pass_profile_img_map_id);


--
-- Name: sm_atp_pass_profile_img_map_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_pass_profile_img_map_preset
    ADD CONSTRAINT sm_atp_pass_profile_img_map_fk FOREIGN KEY (pass_profile_id) REFERENCES z_sm_atp_pass_profiles(pass_profile_id);


--
-- Name: sm_atp_pass_profile_img_map_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_pass_profile_img_map_preset
    ADD CONSTRAINT sm_atp_pass_profile_img_map_fk1 FOREIGN KEY (technology_type_id) REFERENCES z_technology_types(technology_type_id);


--
-- PostgreSQL database dump complete
--

