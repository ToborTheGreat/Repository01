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

ALTER TABLE ONLY public.z_sm_atp_pass_profile_img_map_metric_cols DROP CONSTRAINT sm_atp_pass_profile_img_map_metric_cols_fk3;
ALTER TABLE ONLY public.z_sm_atp_pass_profile_img_map_metric_cols DROP CONSTRAINT sm_atp_pass_profile_img_map_metric_cols_fk2;
ALTER TABLE ONLY public.z_sm_atp_pass_profile_img_map_metric_cols DROP CONSTRAINT sm_atp_pass_profile_img_map_metric_cols_fk1;
ALTER TABLE ONLY public.z_sm_atp_pass_profile_img_map_metric_cols DROP CONSTRAINT sm_atp_pass_profile_img_map_metric_cols_fk;
DROP TABLE public.z_sm_atp_pass_profile_img_map_metric_cols;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_pass_profile_img_map_metric_cols; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_pass_profile_img_map_metric_cols (
    pass_profile_id integer NOT NULL,
    technology_type_id integer NOT NULL,
    dt_file_template_id integer NOT NULL,
    column_name character varying(65) NOT NULL,
    map_layer_name character varying NOT NULL,
    metric_type_id integer,
    ws_default_status character(1) DEFAULT 'I'::bpchar NOT NULL,
    sort_order integer NOT NULL,
    pass_profile_img_map_id integer
);


--
-- Name: sm_atp_pass_profile_img_map_metric_cols_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_pass_profile_img_map_metric_cols
    ADD CONSTRAINT sm_atp_pass_profile_img_map_metric_cols_fk FOREIGN KEY (pass_profile_id) REFERENCES z_sm_atp_pass_profiles(pass_profile_id);


--
-- Name: sm_atp_pass_profile_img_map_metric_cols_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_pass_profile_img_map_metric_cols
    ADD CONSTRAINT sm_atp_pass_profile_img_map_metric_cols_fk1 FOREIGN KEY (technology_type_id) REFERENCES z_technology_types(technology_type_id);


--
-- Name: sm_atp_pass_profile_img_map_metric_cols_fk2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_pass_profile_img_map_metric_cols
    ADD CONSTRAINT sm_atp_pass_profile_img_map_metric_cols_fk2 FOREIGN KEY (dt_file_template_id) REFERENCES z_sm_atp_dt_file_templates(dt_file_template_id);


--
-- Name: sm_atp_pass_profile_img_map_metric_cols_fk3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_pass_profile_img_map_metric_cols
    ADD CONSTRAINT sm_atp_pass_profile_img_map_metric_cols_fk3 FOREIGN KEY (pass_profile_img_map_id) REFERENCES z_sm_atp_pass_profile_img_map_preset(pass_profile_img_map_id);


--
-- PostgreSQL database dump complete
--

