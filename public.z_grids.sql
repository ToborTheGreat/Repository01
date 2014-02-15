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

ALTER TABLE ONLY public.z_grids DROP CONSTRAINT grids_market_id_fkey;
DROP TRIGGER grids_ins_upd ON public.z_grids;
DROP INDEX public.z_grids_size_market_idx;
DROP INDEX public.market_id;
DROP INDEX public.grids_grid_id_key;
DROP INDEX public.geo;
ALTER TABLE ONLY public.z_grids DROP CONSTRAINT grids_pkey;
ALTER TABLE public.z_grids ALTER COLUMN grid_id DROP DEFAULT;
DROP SEQUENCE public.z_grids_grid_id_seq;
DROP TABLE public.z_grids;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: z_grids; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_grids (
    grid_id integer NOT NULL,
    market_id integer NOT NULL,
    size real NOT NULL,
    geoloc geometry,
    created timestamp(0) without time zone NOT NULL,
    modified timestamp(0) without time zone NOT NULL,
    CONSTRAINT grids_geoloc_check CHECK ((srid(geoloc) = 4326)),
    CONSTRAINT grids_geoloc_check1 CHECK (((geometrytype(geoloc) = 'POLYGON'::text) OR (geoloc IS NULL)))
);


--
-- Name: z_grids_grid_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_grids_grid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_grids_grid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_grids_grid_id_seq OWNED BY z_grids.grid_id;


--
-- Name: grid_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_grids ALTER COLUMN grid_id SET DEFAULT nextval('z_grids_grid_id_seq'::regclass);


--
-- Name: grids_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_grids
    ADD CONSTRAINT grids_pkey PRIMARY KEY (grid_id, market_id);


--
-- Name: geo; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX geo ON z_grids USING gist (geoloc);


--
-- Name: grids_grid_id_key; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE UNIQUE INDEX grids_grid_id_key ON z_grids USING btree (grid_id);


--
-- Name: market_id; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX market_id ON z_grids USING btree (market_id);


--
-- Name: z_grids_size_market_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX z_grids_size_market_idx ON z_grids USING btree (size, market_id);


--
-- Name: grids_ins_upd; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER grids_ins_upd
    BEFORE INSERT OR UPDATE ON z_grids
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- Name: grids_market_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_grids
    ADD CONSTRAINT grids_market_id_fkey FOREIGN KEY (market_id) REFERENCES z_markets(market_id);


--
-- PostgreSQL database dump complete
--

