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

ALTER TABLE ONLY public.z_sm_atp_sites DROP CONSTRAINT sm_atp_sites_fk;
DROP INDEX public.sm_atp_sites_idx;
ALTER TABLE ONLY public.z_sm_atp_sites DROP CONSTRAINT sm_atp_sites_site_name_key;
ALTER TABLE ONLY public.z_sm_atp_sites DROP CONSTRAINT sm_atp_sites_site_id_key;
ALTER TABLE ONLY public.z_sm_atp_sites DROP CONSTRAINT sm_atp_sites_pkey;
ALTER TABLE public.z_sm_atp_sites ALTER COLUMN site_id DROP DEFAULT;
DROP SEQUENCE public.z_sm_atp_sites_site_id_seq;
DROP TABLE public.z_sm_atp_sites;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_sites; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_sites (
    site_id integer NOT NULL,
    market_id integer NOT NULL,
    site_name character varying(150),
    site_identifier character varying(150),
    lat double precision,
    lng double precision,
    geoloc geometry,
    bsc character varying(50),
    avg_tire1_dist_mtrs double precision DEFAULT 850 NOT NULL
);


--
-- Name: z_sm_atp_sites_site_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_sm_atp_sites_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_sm_atp_sites_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_sm_atp_sites_site_id_seq OWNED BY z_sm_atp_sites.site_id;


--
-- Name: site_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_sm_atp_sites ALTER COLUMN site_id SET DEFAULT nextval('z_sm_atp_sites_site_id_seq'::regclass);


--
-- Name: sm_atp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_sites
    ADD CONSTRAINT sm_atp_sites_pkey PRIMARY KEY (site_id, market_id);


--
-- Name: sm_atp_sites_site_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_sites
    ADD CONSTRAINT sm_atp_sites_site_id_key UNIQUE (site_id);


--
-- Name: sm_atp_sites_site_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_sites
    ADD CONSTRAINT sm_atp_sites_site_name_key UNIQUE (site_name);


--
-- Name: sm_atp_sites_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX sm_atp_sites_idx ON z_sm_atp_sites USING btree (site_identifier);


--
-- Name: sm_atp_sites_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_sites
    ADD CONSTRAINT sm_atp_sites_fk FOREIGN KEY (market_id) REFERENCES z_markets(market_id);


--
-- PostgreSQL database dump complete
--

