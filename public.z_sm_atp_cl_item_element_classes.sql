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

ALTER TABLE ONLY public.z_sm_atp_cl_item_element_classes DROP CONSTRAINT sm_atp_cl_item_element_classes_pkey;
ALTER TABLE public.z_sm_atp_cl_item_element_classes ALTER COLUMN element_class_id DROP DEFAULT;
DROP SEQUENCE public.z_sm_atp_cl_item_element_classes_element_class_id_seq;
DROP TABLE public.z_sm_atp_cl_item_element_classes;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_cl_item_element_classes; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_cl_item_element_classes (
    element_class_id integer NOT NULL,
    description character varying(150)
);


--
-- Name: z_sm_atp_cl_item_element_classes_element_class_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_sm_atp_cl_item_element_classes_element_class_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_sm_atp_cl_item_element_classes_element_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_sm_atp_cl_item_element_classes_element_class_id_seq OWNED BY z_sm_atp_cl_item_element_classes.element_class_id;


--
-- Name: element_class_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_sm_atp_cl_item_element_classes ALTER COLUMN element_class_id SET DEFAULT nextval('z_sm_atp_cl_item_element_classes_element_class_id_seq'::regclass);


--
-- Name: sm_atp_cl_item_element_classes_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_cl_item_element_classes
    ADD CONSTRAINT sm_atp_cl_item_element_classes_pkey PRIMARY KEY (element_class_id);


--
-- PostgreSQL database dump complete
--

