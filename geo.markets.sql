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

ALTER TABLE ONLY geo.markets DROP CONSTRAINT "$4";
ALTER TABLE ONLY geo.markets DROP CONSTRAINT "$3";
DROP TRIGGER market_ins_upd ON geo.markets;
DROP INDEX geo.market_geo;
ALTER TABLE ONLY geo.markets DROP CONSTRAINT markets_pkey;
ALTER TABLE ONLY geo.markets DROP CONSTRAINT markets_ext_ref_key;
ALTER TABLE geo.markets ALTER COLUMN market_id DROP DEFAULT;
DROP SEQUENCE geo.markets_market_id_seq;
DROP TABLE geo.markets;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: markets; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE markets (
    market_id integer NOT NULL,
    description character varying NOT NULL,
    ext_ref character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL,
    geoloc public.geometry,
    infrastructure_vendor_id integer NOT NULL,
    region_id integer NOT NULL,
    short_name character varying(8),
    CONSTRAINT "$1" CHECK ((public.srid(geoloc) = 4326)),
    CONSTRAINT "$2" CHECK (((public.geometrytype(geoloc) = 'POLYGON'::text) OR (geoloc IS NULL)))
);


--
-- Name: markets_market_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE markets_market_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: markets_market_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE markets_market_id_seq OWNED BY markets.market_id;


--
-- Name: market_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE markets ALTER COLUMN market_id SET DEFAULT nextval('markets_market_id_seq'::regclass);


--
-- Name: markets_ext_ref_key; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY markets
    ADD CONSTRAINT markets_ext_ref_key UNIQUE (ext_ref);


--
-- Name: markets_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY markets
    ADD CONSTRAINT markets_pkey PRIMARY KEY (market_id);


--
-- Name: market_geo; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX market_geo ON markets USING gist (geoloc);


--
-- Name: market_ins_upd; Type: TRIGGER; Schema: geo; Owner: -
--

CREATE TRIGGER market_ins_upd
    BEFORE INSERT OR UPDATE ON markets
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- Name: $3; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY markets
    ADD CONSTRAINT "$3" FOREIGN KEY (infrastructure_vendor_id) REFERENCES infrastructure_vendors(infrastructure_vendor_id);


--
-- Name: $4; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY markets
    ADD CONSTRAINT "$4" FOREIGN KEY (region_id) REFERENCES regions(region_id);


--
-- PostgreSQL database dump complete
--

