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

ALTER TABLE ONLY geo.market_grid_sizes DROP CONSTRAINT market_grid_sizes_market_id_fkey;
DROP TRIGGER market_grid_sizes_ins_upd ON geo.market_grid_sizes;
DROP INDEX geo.mgs_geo;
ALTER TABLE ONLY geo.market_grid_sizes DROP CONSTRAINT market_grid_sizes_pkey;
ALTER TABLE geo.market_grid_sizes ALTER COLUMN market_grid_sizes_id DROP DEFAULT;
DROP SEQUENCE geo.market_grid_sizes_market_grid_sizes_id_seq;
DROP TABLE geo.market_grid_sizes;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: market_grid_sizes; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE market_grid_sizes (
    market_grid_sizes_id integer NOT NULL,
    market_id integer NOT NULL,
    size real NOT NULL,
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL,
    geoloc public.geometry,
    grid_origin_lon double precision,
    grid_origin_lat double precision,
    CONSTRAINT market_grid_sizes_geoloc_check CHECK ((public.srid(geoloc) = 4326)),
    CONSTRAINT market_grid_sizes_geoloc_check1 CHECK (((public.geometrytype(geoloc) = 'POLYGON'::text) OR (geoloc IS NULL)))
);


--
-- Name: market_grid_sizes_market_grid_sizes_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE market_grid_sizes_market_grid_sizes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: market_grid_sizes_market_grid_sizes_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE market_grid_sizes_market_grid_sizes_id_seq OWNED BY market_grid_sizes.market_grid_sizes_id;


--
-- Name: market_grid_sizes_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE market_grid_sizes ALTER COLUMN market_grid_sizes_id SET DEFAULT nextval('market_grid_sizes_market_grid_sizes_id_seq'::regclass);


--
-- Name: market_grid_sizes_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY market_grid_sizes
    ADD CONSTRAINT market_grid_sizes_pkey PRIMARY KEY (market_grid_sizes_id, market_id, size);


--
-- Name: mgs_geo; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX mgs_geo ON market_grid_sizes USING gist (geoloc);


--
-- Name: market_grid_sizes_ins_upd; Type: TRIGGER; Schema: geo; Owner: -
--

CREATE TRIGGER market_grid_sizes_ins_upd
    BEFORE INSERT OR UPDATE ON market_grid_sizes
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- Name: market_grid_sizes_market_id_fkey; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY market_grid_sizes
    ADD CONSTRAINT market_grid_sizes_market_id_fkey FOREIGN KEY (market_id) REFERENCES markets(market_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

