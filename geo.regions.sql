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

DROP TRIGGER region_ins_upd ON geo.regions;
ALTER TABLE ONLY geo.regions DROP CONSTRAINT regions_pkey;
ALTER TABLE ONLY geo.regions DROP CONSTRAINT regions_ext_ref_key;
ALTER TABLE geo.regions ALTER COLUMN region_id DROP DEFAULT;
DROP SEQUENCE geo.regions_region_id_seq;
DROP TABLE geo.regions;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: regions; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE regions (
    region_id integer NOT NULL,
    ext_ref character varying(30) NOT NULL,
    description character varying(100) NOT NULL,
    created timestamp without time zone NOT NULL,
    modified timestamp(0) without time zone NOT NULL
);


--
-- Name: regions_region_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE regions_region_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: regions_region_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE regions_region_id_seq OWNED BY regions.region_id;


--
-- Name: region_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE regions ALTER COLUMN region_id SET DEFAULT nextval('regions_region_id_seq'::regclass);


--
-- Name: regions_ext_ref_key; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY regions
    ADD CONSTRAINT regions_ext_ref_key UNIQUE (ext_ref);


--
-- Name: regions_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (region_id);


--
-- Name: region_ins_upd; Type: TRIGGER; Schema: geo; Owner: -
--

CREATE TRIGGER region_ins_upd
    BEFORE INSERT OR UPDATE ON regions
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- PostgreSQL database dump complete
--

