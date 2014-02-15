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

ALTER TABLE ONLY geo.grids DROP CONSTRAINT grids_market_id_fkey;
DROP TRIGGER grids_ins_upd ON geo.grids;
DROP INDEX geo.market_id;
DROP INDEX geo.grids_size_market;
DROP INDEX geo.grids_grid_id_key;
DROP INDEX geo.geo;
ALTER TABLE ONLY geo.grids DROP CONSTRAINT grids_pkey;
ALTER TABLE geo.grids ALTER COLUMN grid_id DROP DEFAULT;
DROP SEQUENCE geo.grids_grid_id_seq;
DROP TABLE geo.grids;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: grids; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE grids (
    grid_id integer NOT NULL,
    market_id integer NOT NULL,
    size real NOT NULL,
    geoloc public.geometry,
    created timestamp(0) without time zone NOT NULL,
    modified timestamp(0) without time zone NOT NULL,
    CONSTRAINT grids_geoloc_check CHECK ((public.srid(geoloc) = 4326)),
    CONSTRAINT grids_geoloc_check1 CHECK (((public.geometrytype(geoloc) = 'POLYGON'::text) OR (geoloc IS NULL)))
);


--
-- Name: grids_grid_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE grids_grid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: grids_grid_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE grids_grid_id_seq OWNED BY grids.grid_id;


--
-- Name: grid_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE grids ALTER COLUMN grid_id SET DEFAULT nextval('grids_grid_id_seq'::regclass);


--
-- Name: grids_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY grids
    ADD CONSTRAINT grids_pkey PRIMARY KEY (grid_id, market_id);


--
-- Name: geo; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX geo ON grids USING gist (geoloc);


--
-- Name: grids_grid_id_key; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE UNIQUE INDEX grids_grid_id_key ON grids USING btree (grid_id);


--
-- Name: grids_size_market; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX grids_size_market ON grids USING btree (size, market_id);


--
-- Name: market_id; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX market_id ON grids USING btree (market_id);


--
-- Name: grids_ins_upd; Type: TRIGGER; Schema: geo; Owner: -
--

CREATE TRIGGER grids_ins_upd
    BEFORE INSERT OR UPDATE ON grids
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- Name: grids_market_id_fkey; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY grids
    ADD CONSTRAINT grids_market_id_fkey FOREIGN KEY (market_id) REFERENCES markets(market_id);


--
-- PostgreSQL database dump complete
--

