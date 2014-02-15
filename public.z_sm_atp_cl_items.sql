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

ALTER TABLE ONLY public.z_sm_atp_cl_items DROP CONSTRAINT sm_atp_cl_items_fk1;
ALTER TABLE ONLY public.z_sm_atp_cl_items DROP CONSTRAINT sm_atp_cl_items_fk;
ALTER TABLE ONLY public.z_sm_atp_cl_items DROP CONSTRAINT sm_atp_cl_items_idx;
ALTER TABLE public.z_sm_atp_cl_items ALTER COLUMN cl_item_id DROP DEFAULT;
DROP SEQUENCE public.z_sm_atp_cl_items_cl_item_id_seq;
DROP TABLE public.z_sm_atp_cl_items;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_cl_items; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_cl_items (
    cl_item_id integer NOT NULL,
    cl_item_class_id integer,
    description character varying(150),
    instruction character varying(1000),
    element_class_id integer
);


--
-- Name: z_sm_atp_cl_items_cl_item_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_sm_atp_cl_items_cl_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_sm_atp_cl_items_cl_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_sm_atp_cl_items_cl_item_id_seq OWNED BY z_sm_atp_cl_items.cl_item_id;


--
-- Name: cl_item_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_sm_atp_cl_items ALTER COLUMN cl_item_id SET DEFAULT nextval('z_sm_atp_cl_items_cl_item_id_seq'::regclass);


--
-- Name: sm_atp_cl_items_idx; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_cl_items
    ADD CONSTRAINT sm_atp_cl_items_idx PRIMARY KEY (cl_item_id);


--
-- Name: sm_atp_cl_items_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_cl_items
    ADD CONSTRAINT sm_atp_cl_items_fk FOREIGN KEY (cl_item_class_id) REFERENCES z_sm_atp_cl_item_classes(cl_item_class_id);


--
-- Name: sm_atp_cl_items_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_cl_items
    ADD CONSTRAINT sm_atp_cl_items_fk1 FOREIGN KEY (element_class_id) REFERENCES z_sm_atp_cl_item_element_classes(element_class_id);


--
-- PostgreSQL database dump complete
--

