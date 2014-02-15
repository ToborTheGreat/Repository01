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

ALTER TABLE ONLY geo.sm_atp_template_user_maps DROP CONSTRAINT sm_atp_template_user_maps_fk1;
ALTER TABLE ONLY geo.sm_atp_template_user_maps DROP CONSTRAINT sm_atp_template_user_maps_fk;
ALTER TABLE ONLY geo.sm_atp_template_user_maps DROP CONSTRAINT sm_atp_template_user_maps_idx;
DROP TABLE geo.sm_atp_template_user_maps;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_template_user_maps; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_template_user_maps (
    dt_file_template_id integer NOT NULL,
    user_map_id integer NOT NULL
);


--
-- Name: sm_atp_template_user_maps_idx; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_template_user_maps
    ADD CONSTRAINT sm_atp_template_user_maps_idx PRIMARY KEY (dt_file_template_id, user_map_id);


--
-- Name: sm_atp_template_user_maps_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_template_user_maps
    ADD CONSTRAINT sm_atp_template_user_maps_fk FOREIGN KEY (dt_file_template_id) REFERENCES sm_atp_dt_file_templates(dt_file_template_id);


--
-- Name: sm_atp_template_user_maps_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_template_user_maps
    ADD CONSTRAINT sm_atp_template_user_maps_fk1 FOREIGN KEY (user_map_id) REFERENCES user_maps(user_map_id);


--
-- PostgreSQL database dump complete
--

