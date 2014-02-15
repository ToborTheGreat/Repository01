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

DROP TRIGGER technology_types_ins_upd ON public.z_technology_types;
DROP TRIGGER technology_types_del ON public.z_technology_types;
ALTER TABLE ONLY public.z_technology_types DROP CONSTRAINT technology_types_pkey;
ALTER TABLE ONLY public.z_technology_types DROP CONSTRAINT technology_types_ext_ref_key;
ALTER TABLE public.z_technology_types ALTER COLUMN technology_type_id DROP DEFAULT;
DROP SEQUENCE public.z_technology_types_technology_type_id_seq;
DROP TABLE public.z_technology_types;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: z_technology_types; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_technology_types (
    technology_type_id integer NOT NULL,
    description character varying(20) NOT NULL,
    ext_ref character varying(20) NOT NULL,
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL
);


--
-- Name: z_technology_types_technology_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_technology_types_technology_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_technology_types_technology_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_technology_types_technology_type_id_seq OWNED BY z_technology_types.technology_type_id;


--
-- Name: technology_type_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_technology_types ALTER COLUMN technology_type_id SET DEFAULT nextval('z_technology_types_technology_type_id_seq'::regclass);


--
-- Name: technology_types_ext_ref_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_technology_types
    ADD CONSTRAINT technology_types_ext_ref_key UNIQUE (ext_ref);


--
-- Name: technology_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_technology_types
    ADD CONSTRAINT technology_types_pkey PRIMARY KEY (technology_type_id);


--
-- Name: technology_types_del; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER technology_types_del
    BEFORE DELETE ON z_technology_types
    FOR EACH ROW
    EXECUTE PROCEDURE trg_del_technology_types();


--
-- Name: technology_types_ins_upd; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER technology_types_ins_upd
    BEFORE INSERT OR UPDATE ON z_technology_types
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- PostgreSQL database dump complete
--

