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

ALTER TABLE ONLY public.z_sm_atp_cl_templates DROP CONSTRAINT sm_atp_cl_templates_fk;
ALTER TABLE ONLY public.z_sm_atp_cl_templates DROP CONSTRAINT sm_atp_cl_templates_pkey;
ALTER TABLE public.z_sm_atp_cl_templates ALTER COLUMN cl_template_id DROP DEFAULT;
DROP SEQUENCE public.z_sm_atp_cl_templates_cl_template_id_seq;
DROP TABLE public.z_sm_atp_cl_templates;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_cl_templates; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_cl_templates (
    cl_template_id integer NOT NULL,
    description character varying(150),
    technology_type_id integer,
    status integer,
    created timestamp(0) with time zone,
    modified timestamp(0) with time zone
);


--
-- Name: z_sm_atp_cl_templates_cl_template_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_sm_atp_cl_templates_cl_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_sm_atp_cl_templates_cl_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_sm_atp_cl_templates_cl_template_id_seq OWNED BY z_sm_atp_cl_templates.cl_template_id;


--
-- Name: cl_template_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_sm_atp_cl_templates ALTER COLUMN cl_template_id SET DEFAULT nextval('z_sm_atp_cl_templates_cl_template_id_seq'::regclass);


--
-- Name: sm_atp_cl_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_cl_templates
    ADD CONSTRAINT sm_atp_cl_templates_pkey PRIMARY KEY (cl_template_id);


--
-- Name: sm_atp_cl_templates_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_cl_templates
    ADD CONSTRAINT sm_atp_cl_templates_fk FOREIGN KEY (technology_type_id) REFERENCES z_technology_types(technology_type_id);


--
-- PostgreSQL database dump complete
--

