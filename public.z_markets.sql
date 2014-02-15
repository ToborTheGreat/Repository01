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

ALTER TABLE ONLY public.z_markets DROP CONSTRAINT "$4";
ALTER TABLE ONLY public.z_markets DROP CONSTRAINT "$3";
DROP TRIGGER market_ins_upd ON public.z_markets;
DROP INDEX public.market_geo;
ALTER TABLE ONLY public.z_markets DROP CONSTRAINT markets_pkey;
ALTER TABLE ONLY public.z_markets DROP CONSTRAINT markets_ext_ref_key;
ALTER TABLE public.z_markets ALTER COLUMN market_id DROP DEFAULT;
DROP SEQUENCE public.z_markets_market_id_seq;
DROP TABLE public.z_markets;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: z_markets; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_markets (
    market_id integer NOT NULL,
    description character varying NOT NULL,
    ext_ref character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL,
    geoloc geometry,
    infrastructure_vendor_id integer NOT NULL,
    region_id integer NOT NULL,
    short_name character varying(8),
    CONSTRAINT "$1" CHECK ((srid(geoloc) = 4326)),
    CONSTRAINT "$2" CHECK (((geometrytype(geoloc) = 'POLYGON'::text) OR (geoloc IS NULL)))
);


--
-- Name: z_markets_market_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_markets_market_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_markets_market_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_markets_market_id_seq OWNED BY z_markets.market_id;


--
-- Name: market_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_markets ALTER COLUMN market_id SET DEFAULT nextval('z_markets_market_id_seq'::regclass);


--
-- Name: markets_ext_ref_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_markets
    ADD CONSTRAINT markets_ext_ref_key UNIQUE (ext_ref);


--
-- Name: markets_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_markets
    ADD CONSTRAINT markets_pkey PRIMARY KEY (market_id);


--
-- Name: market_geo; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX market_geo ON z_markets USING gist (geoloc);


--
-- Name: market_ins_upd; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER market_ins_upd
    BEFORE INSERT OR UPDATE ON z_markets
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- Name: $3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_markets
    ADD CONSTRAINT "$3" FOREIGN KEY (infrastructure_vendor_id) REFERENCES z_infrastructure_vendors(infrastructure_vendor_id);


--
-- Name: $4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_markets
    ADD CONSTRAINT "$4" FOREIGN KEY (region_id) REFERENCES z_regions(region_id);


--
-- PostgreSQL database dump complete
--

