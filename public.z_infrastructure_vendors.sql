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

DROP TRIGGER infrastructure_vendors_ins_upd ON public.z_infrastructure_vendors;
ALTER TABLE ONLY public.z_infrastructure_vendors DROP CONSTRAINT infrastructure_vendors_pkey;
ALTER TABLE ONLY public.z_infrastructure_vendors DROP CONSTRAINT infrastructure_vendors_ext_ref_key;
ALTER TABLE public.z_infrastructure_vendors ALTER COLUMN infrastructure_vendor_id DROP DEFAULT;
DROP SEQUENCE public.z_infrastructure_vendors_infrastructure_vendor_id_seq;
DROP TABLE public.z_infrastructure_vendors;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: z_infrastructure_vendors; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_infrastructure_vendors (
    infrastructure_vendor_id integer NOT NULL,
    ext_ref character varying(20) NOT NULL,
    description character varying(100),
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL
);


--
-- Name: z_infrastructure_vendors_infrastructure_vendor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_infrastructure_vendors_infrastructure_vendor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_infrastructure_vendors_infrastructure_vendor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_infrastructure_vendors_infrastructure_vendor_id_seq OWNED BY z_infrastructure_vendors.infrastructure_vendor_id;


--
-- Name: infrastructure_vendor_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_infrastructure_vendors ALTER COLUMN infrastructure_vendor_id SET DEFAULT nextval('z_infrastructure_vendors_infrastructure_vendor_id_seq'::regclass);


--
-- Name: infrastructure_vendors_ext_ref_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_infrastructure_vendors
    ADD CONSTRAINT infrastructure_vendors_ext_ref_key UNIQUE (ext_ref);


--
-- Name: infrastructure_vendors_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_infrastructure_vendors
    ADD CONSTRAINT infrastructure_vendors_pkey PRIMARY KEY (infrastructure_vendor_id);


--
-- Name: infrastructure_vendors_ins_upd; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER infrastructure_vendors_ins_upd
    BEFORE INSERT OR UPDATE ON z_infrastructure_vendors
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- PostgreSQL database dump complete
--

