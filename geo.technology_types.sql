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

DROP TRIGGER technology_types_ins_upd ON geo.technology_types;
DROP TRIGGER technology_types_del ON geo.technology_types;
ALTER TABLE ONLY geo.technology_types DROP CONSTRAINT technology_types_pkey;
ALTER TABLE ONLY geo.technology_types DROP CONSTRAINT technology_types_ext_ref_key;
ALTER TABLE geo.technology_types ALTER COLUMN technology_type_id DROP DEFAULT;
DROP SEQUENCE geo.technology_types_technology_type_id_seq;
DROP TABLE geo.technology_types;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: technology_types; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE technology_types (
    technology_type_id integer NOT NULL,
    description character varying(20) NOT NULL,
    ext_ref character varying(20) NOT NULL,
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL
);


--
-- Name: technology_types_technology_type_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE technology_types_technology_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: technology_types_technology_type_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE technology_types_technology_type_id_seq OWNED BY technology_types.technology_type_id;


--
-- Name: technology_type_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE technology_types ALTER COLUMN technology_type_id SET DEFAULT nextval('technology_types_technology_type_id_seq'::regclass);


--
-- Name: technology_types_ext_ref_key; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY technology_types
    ADD CONSTRAINT technology_types_ext_ref_key UNIQUE (ext_ref);


--
-- Name: technology_types_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY technology_types
    ADD CONSTRAINT technology_types_pkey PRIMARY KEY (technology_type_id);


--
-- Name: technology_types_del; Type: TRIGGER; Schema: geo; Owner: -
--

CREATE TRIGGER technology_types_del
    BEFORE DELETE ON technology_types
    FOR EACH ROW
    EXECUTE PROCEDURE trg_del_technology_types();


--
-- Name: technology_types_ins_upd; Type: TRIGGER; Schema: geo; Owner: -
--

CREATE TRIGGER technology_types_ins_upd
    BEFORE INSERT OR UPDATE ON technology_types
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- PostgreSQL database dump complete
--

