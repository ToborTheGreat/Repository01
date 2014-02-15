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

ALTER TABLE ONLY geo.market_areas DROP CONSTRAINT market_areas_fk;
DROP TRIGGER new_trigger ON geo.market_areas;
DROP TRIGGER market_areas_del ON geo.market_areas;
DROP INDEX geo.uniq_ma_id;
DROP INDEX geo.geo_index;
ALTER TABLE ONLY geo.market_areas DROP CONSTRAINT market_areas_pkey;
ALTER TABLE geo.market_areas ALTER COLUMN market_area_id DROP DEFAULT;
DROP SEQUENCE geo.market_areas_market_area_id_seq;
DROP TABLE geo.market_areas;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: market_areas; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE market_areas (
    market_area_id integer NOT NULL,
    market_id integer NOT NULL,
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL,
    geoloc public.geometry,
    area_name character varying(20) NOT NULL,
    CONSTRAINT market_areas_geoloc_check CHECK ((public.srid(geoloc) = 4326)),
    CONSTRAINT market_areas_geoloc_check1 CHECK (((public.geometrytype(geoloc) = 'POLYGON'::text) OR (geoloc IS NULL)))
);


--
-- Name: market_areas_market_area_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE market_areas_market_area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: market_areas_market_area_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE market_areas_market_area_id_seq OWNED BY market_areas.market_area_id;


--
-- Name: market_area_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE market_areas ALTER COLUMN market_area_id SET DEFAULT nextval('market_areas_market_area_id_seq'::regclass);


--
-- Name: market_areas_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY market_areas
    ADD CONSTRAINT market_areas_pkey PRIMARY KEY (market_area_id, market_id);

ALTER TABLE market_areas CLUSTER ON market_areas_pkey;


--
-- Name: geo_index; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX geo_index ON market_areas USING gist (geoloc);


--
-- Name: uniq_ma_id; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE UNIQUE INDEX uniq_ma_id ON market_areas USING btree (market_area_id);


--
-- Name: market_areas_del; Type: TRIGGER; Schema: geo; Owner: -
--

CREATE TRIGGER market_areas_del
    BEFORE DELETE ON market_areas
    FOR EACH ROW
    EXECUTE PROCEDURE trg_del_market_areas();


--
-- Name: new_trigger; Type: TRIGGER; Schema: geo; Owner: -
--

CREATE TRIGGER new_trigger
    BEFORE INSERT OR UPDATE ON market_areas
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- Name: market_areas_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY market_areas
    ADD CONSTRAINT market_areas_fk FOREIGN KEY (market_id) REFERENCES markets(market_id);


--
-- PostgreSQL database dump complete
--

