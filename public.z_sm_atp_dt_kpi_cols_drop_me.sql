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

ALTER TABLE ONLY public.z_sm_atp_dt_kpi_cols_drop_me DROP CONSTRAINT sm_atp_kpi_cols_fk1;
ALTER TABLE ONLY public.z_sm_atp_dt_kpi_cols_drop_me DROP CONSTRAINT sm_atp_kpi_cols_fk;
ALTER TABLE ONLY public.z_sm_atp_dt_kpi_cols_drop_me DROP CONSTRAINT sm_atp_kpi_cols_pkey;
ALTER TABLE public.z_sm_atp_dt_kpi_cols_drop_me ALTER COLUMN kpi_col_id DROP DEFAULT;
DROP SEQUENCE public.z_sm_atp_dt_kpi_cols_kpi_col_id_seq;
DROP TABLE public.z_sm_atp_dt_kpi_cols_drop_me;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_dt_kpi_cols_drop_me; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_dt_kpi_cols_drop_me (
    kpi_col_id integer NOT NULL,
    dt_file_template_id integer,
    technology_type_id integer,
    expression character varying(150),
    col_name character varying(150)
);


--
-- Name: z_sm_atp_dt_kpi_cols_kpi_col_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_sm_atp_dt_kpi_cols_kpi_col_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_sm_atp_dt_kpi_cols_kpi_col_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_sm_atp_dt_kpi_cols_kpi_col_id_seq OWNED BY z_sm_atp_dt_kpi_cols_drop_me.kpi_col_id;


--
-- Name: kpi_col_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_sm_atp_dt_kpi_cols_drop_me ALTER COLUMN kpi_col_id SET DEFAULT nextval('z_sm_atp_dt_kpi_cols_kpi_col_id_seq'::regclass);


--
-- Name: sm_atp_kpi_cols_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_dt_kpi_cols_drop_me
    ADD CONSTRAINT sm_atp_kpi_cols_pkey PRIMARY KEY (kpi_col_id);


--
-- Name: sm_atp_kpi_cols_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_dt_kpi_cols_drop_me
    ADD CONSTRAINT sm_atp_kpi_cols_fk FOREIGN KEY (dt_file_template_id) REFERENCES z_sm_atp_dt_file_templates(dt_file_template_id);


--
-- Name: sm_atp_kpi_cols_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_dt_kpi_cols_drop_me
    ADD CONSTRAINT sm_atp_kpi_cols_fk1 FOREIGN KEY (technology_type_id) REFERENCES z_technology_types(technology_type_id);


--
-- PostgreSQL database dump complete
--

