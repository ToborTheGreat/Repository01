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

DROP TRIGGER region_ins_upd ON public.z_regions;
ALTER TABLE ONLY public.z_regions DROP CONSTRAINT regions_pkey;
ALTER TABLE ONLY public.z_regions DROP CONSTRAINT regions_ext_ref_key;
ALTER TABLE public.z_regions ALTER COLUMN region_id DROP DEFAULT;
DROP SEQUENCE public.z_regions_region_id_seq;
DROP TABLE public.z_regions;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: z_regions; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_regions (
    region_id integer NOT NULL,
    ext_ref character varying(30) NOT NULL,
    description character varying(100) NOT NULL,
    created timestamp without time zone NOT NULL,
    modified timestamp(0) without time zone NOT NULL
);


--
-- Name: z_regions_region_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_regions_region_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_regions_region_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_regions_region_id_seq OWNED BY z_regions.region_id;


--
-- Name: region_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_regions ALTER COLUMN region_id SET DEFAULT nextval('z_regions_region_id_seq'::regclass);


--
-- Name: regions_ext_ref_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_regions
    ADD CONSTRAINT regions_ext_ref_key UNIQUE (ext_ref);


--
-- Name: regions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (region_id);


--
-- Name: region_ins_upd; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER region_ins_upd
    BEFORE INSERT OR UPDATE ON z_regions
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- PostgreSQL database dump complete
--

