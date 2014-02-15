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

ALTER TABLE ONLY public.z_market_grid_sizes DROP CONSTRAINT market_grid_sizes_market_id_fkey;
DROP TRIGGER market_grid_sizes_ins_upd ON public.z_market_grid_sizes;
DROP INDEX public.mgs_geo;
ALTER TABLE ONLY public.z_market_grid_sizes DROP CONSTRAINT market_grid_sizes_pkey;
ALTER TABLE public.z_market_grid_sizes ALTER COLUMN market_grid_sizes_id DROP DEFAULT;
DROP SEQUENCE public.z_market_grid_sizes_market_grid_sizes_id_seq;
DROP TABLE public.z_market_grid_sizes;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: z_market_grid_sizes; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_market_grid_sizes (
    market_grid_sizes_id integer NOT NULL,
    market_id integer NOT NULL,
    size real NOT NULL,
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL,
    geoloc geometry,
    grid_origin_lon double precision,
    grid_origin_lat double precision,
    CONSTRAINT market_grid_sizes_geoloc_check CHECK ((srid(geoloc) = 4326)),
    CONSTRAINT market_grid_sizes_geoloc_check1 CHECK (((geometrytype(geoloc) = 'POLYGON'::text) OR (geoloc IS NULL)))
);


--
-- Name: z_market_grid_sizes_market_grid_sizes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_market_grid_sizes_market_grid_sizes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_market_grid_sizes_market_grid_sizes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_market_grid_sizes_market_grid_sizes_id_seq OWNED BY z_market_grid_sizes.market_grid_sizes_id;


--
-- Name: market_grid_sizes_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_market_grid_sizes ALTER COLUMN market_grid_sizes_id SET DEFAULT nextval('z_market_grid_sizes_market_grid_sizes_id_seq'::regclass);


--
-- Name: market_grid_sizes_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_market_grid_sizes
    ADD CONSTRAINT market_grid_sizes_pkey PRIMARY KEY (market_grid_sizes_id, market_id, size);


--
-- Name: mgs_geo; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX mgs_geo ON z_market_grid_sizes USING gist (geoloc);


--
-- Name: market_grid_sizes_ins_upd; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER market_grid_sizes_ins_upd
    BEFORE INSERT OR UPDATE ON z_market_grid_sizes
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- Name: market_grid_sizes_market_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_market_grid_sizes
    ADD CONSTRAINT market_grid_sizes_market_id_fkey FOREIGN KEY (market_id) REFERENCES z_markets(market_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

