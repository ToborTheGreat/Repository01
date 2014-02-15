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

DROP TRIGGER infrastructure_vendors_ins_upd ON geo.infrastructure_vendors;
ALTER TABLE ONLY geo.infrastructure_vendors DROP CONSTRAINT infrastructure_vendors_pkey;
ALTER TABLE ONLY geo.infrastructure_vendors DROP CONSTRAINT infrastructure_vendors_ext_ref_key;
ALTER TABLE geo.infrastructure_vendors ALTER COLUMN infrastructure_vendor_id DROP DEFAULT;
DROP SEQUENCE geo.infrastructure_vendors_infrastructure_vendor_id_seq;
DROP TABLE geo.infrastructure_vendors;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: infrastructure_vendors; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE infrastructure_vendors (
    infrastructure_vendor_id integer NOT NULL,
    ext_ref character varying(20) NOT NULL,
    description character varying(100),
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL
);


--
-- Name: infrastructure_vendors_infrastructure_vendor_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE infrastructure_vendors_infrastructure_vendor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: infrastructure_vendors_infrastructure_vendor_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE infrastructure_vendors_infrastructure_vendor_id_seq OWNED BY infrastructure_vendors.infrastructure_vendor_id;


--
-- Name: infrastructure_vendor_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE infrastructure_vendors ALTER COLUMN infrastructure_vendor_id SET DEFAULT nextval('infrastructure_vendors_infrastructure_vendor_id_seq'::regclass);


--
-- Name: infrastructure_vendors_ext_ref_key; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY infrastructure_vendors
    ADD CONSTRAINT infrastructure_vendors_ext_ref_key UNIQUE (ext_ref);


--
-- Name: infrastructure_vendors_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY infrastructure_vendors
    ADD CONSTRAINT infrastructure_vendors_pkey PRIMARY KEY (infrastructure_vendor_id);


--
-- Name: infrastructure_vendors_ins_upd; Type: TRIGGER; Schema: geo; Owner: -
--

CREATE TRIGGER infrastructure_vendors_ins_upd
    BEFORE INSERT OR UPDATE ON infrastructure_vendors
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- PostgreSQL database dump complete
--

