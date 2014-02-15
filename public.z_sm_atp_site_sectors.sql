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

ALTER TABLE ONLY public.z_sm_atp_site_sectors DROP CONSTRAINT sm_atp_site_sectors_fk1;
ALTER TABLE ONLY public.z_sm_atp_site_sectors DROP CONSTRAINT sm_atp_site_sectors_fk;
ALTER TABLE ONLY public.z_sm_atp_site_sectors DROP CONSTRAINT sm_atp_site_sectors_sector_id_key;
ALTER TABLE ONLY public.z_sm_atp_site_sectors DROP CONSTRAINT sm_atp_site_sectors_pkey;
ALTER TABLE public.z_sm_atp_site_sectors ALTER COLUMN sector_id DROP DEFAULT;
DROP SEQUENCE public.z_sm_atp_site_sectors_sector_id_seq;
DROP TABLE public.z_sm_atp_site_sectors;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_site_sectors; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_site_sectors (
    sector_id integer NOT NULL,
    site_id integer NOT NULL,
    market_id integer NOT NULL,
    sector_number character varying(150),
    azimuth integer,
    h_ant_bw real,
    pn_offset integer,
    geoloc geometry,
    pci integer
);


--
-- Name: z_sm_atp_site_sectors_sector_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_sm_atp_site_sectors_sector_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_sm_atp_site_sectors_sector_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_sm_atp_site_sectors_sector_id_seq OWNED BY z_sm_atp_site_sectors.sector_id;


--
-- Name: sector_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_sm_atp_site_sectors ALTER COLUMN sector_id SET DEFAULT nextval('z_sm_atp_site_sectors_sector_id_seq'::regclass);


--
-- Name: sm_atp_site_sectors_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_site_sectors
    ADD CONSTRAINT sm_atp_site_sectors_pkey PRIMARY KEY (sector_id, site_id, market_id);


--
-- Name: sm_atp_site_sectors_sector_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_site_sectors
    ADD CONSTRAINT sm_atp_site_sectors_sector_id_key UNIQUE (sector_id);


--
-- Name: sm_atp_site_sectors_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_site_sectors
    ADD CONSTRAINT sm_atp_site_sectors_fk FOREIGN KEY (site_id) REFERENCES z_sm_atp_sites(site_id);


--
-- Name: sm_atp_site_sectors_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_site_sectors
    ADD CONSTRAINT sm_atp_site_sectors_fk1 FOREIGN KEY (market_id) REFERENCES z_markets(market_id);


--
-- PostgreSQL database dump complete
--

