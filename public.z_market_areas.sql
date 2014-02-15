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

ALTER TABLE ONLY public.z_market_areas DROP CONSTRAINT market_areas_fk;
DROP TRIGGER new_trigger ON public.z_market_areas;
DROP TRIGGER market_areas_del ON public.z_market_areas;
DROP INDEX public.uniq_ma_id;
DROP INDEX public.geo_index;
ALTER TABLE ONLY public.z_market_areas DROP CONSTRAINT market_areas_pkey;
ALTER TABLE public.z_market_areas ALTER COLUMN market_area_id DROP DEFAULT;
DROP SEQUENCE public.z_market_areas_market_area_id_seq;
DROP TABLE public.z_market_areas;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: z_market_areas; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_market_areas (
    market_area_id integer NOT NULL,
    market_id integer NOT NULL,
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL,
    geoloc geometry,
    area_name character varying(20) NOT NULL,
    CONSTRAINT market_areas_geoloc_check CHECK ((srid(geoloc) = 4326)),
    CONSTRAINT market_areas_geoloc_check1 CHECK (((geometrytype(geoloc) = 'POLYGON'::text) OR (geoloc IS NULL)))
);


--
-- Name: z_market_areas_market_area_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_market_areas_market_area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_market_areas_market_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_market_areas_market_area_id_seq OWNED BY z_market_areas.market_area_id;


--
-- Name: market_area_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_market_areas ALTER COLUMN market_area_id SET DEFAULT nextval('z_market_areas_market_area_id_seq'::regclass);


--
-- Name: market_areas_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_market_areas
    ADD CONSTRAINT market_areas_pkey PRIMARY KEY (market_area_id, market_id);

ALTER TABLE z_market_areas CLUSTER ON market_areas_pkey;


--
-- Name: geo_index; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX geo_index ON z_market_areas USING gist (geoloc);


--
-- Name: uniq_ma_id; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE UNIQUE INDEX uniq_ma_id ON z_market_areas USING btree (market_area_id);


--
-- Name: market_areas_del; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER market_areas_del
    BEFORE DELETE ON z_market_areas
    FOR EACH ROW
    EXECUTE PROCEDURE trg_del_market_areas();


--
-- Name: new_trigger; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER new_trigger
    BEFORE INSERT OR UPDATE ON z_market_areas
    FOR EACH ROW
    EXECUTE PROCEDURE trg_create_modified_vals();


--
-- Name: market_areas_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_market_areas
    ADD CONSTRAINT market_areas_fk FOREIGN KEY (market_id) REFERENCES z_markets(market_id);


--
-- PostgreSQL database dump complete
--

