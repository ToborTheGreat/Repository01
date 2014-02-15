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

ALTER TABLE ONLY geo.sm_atp_dt_file_cols DROP CONSTRAINT sm_atp_dt_file_cols_fk1;
ALTER TABLE ONLY geo.sm_atp_dt_file_cols DROP CONSTRAINT sm_atp_dt_file_cols_fk;
ALTER TABLE ONLY geo.sm_atp_dt_file_cols DROP CONSTRAINT sm_atp_dt_file_cols_pkey;
DROP TABLE geo.sm_atp_dt_file_cols;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_dt_file_cols; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_dt_file_cols (
    technology_type_id integer NOT NULL,
    dt_file_template_id integer NOT NULL,
    column_name character varying(75) NOT NULL,
    units_type character varying(50),
    column_type character varying(75)
);


--
-- Name: sm_atp_dt_file_cols_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_dt_file_cols
    ADD CONSTRAINT sm_atp_dt_file_cols_pkey PRIMARY KEY (technology_type_id, dt_file_template_id, column_name);


--
-- Name: sm_atp_dt_file_cols_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_dt_file_cols
    ADD CONSTRAINT sm_atp_dt_file_cols_fk FOREIGN KEY (technology_type_id) REFERENCES technology_types(technology_type_id);


--
-- Name: sm_atp_dt_file_cols_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_dt_file_cols
    ADD CONSTRAINT sm_atp_dt_file_cols_fk1 FOREIGN KEY (dt_file_template_id) REFERENCES sm_atp_dt_file_templates(dt_file_template_id);


--
-- PostgreSQL database dump complete
--

