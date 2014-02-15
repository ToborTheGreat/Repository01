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

ALTER TABLE ONLY geo.sm_atp_site_sectors DROP CONSTRAINT sm_atp_site_sectors_fk1;
ALTER TABLE ONLY geo.sm_atp_site_sectors DROP CONSTRAINT sm_atp_site_sectors_fk;
DROP INDEX geo.sm_atp_site_sectors_ix3;
DROP INDEX geo.sm_atp_site_sectors_ix2;
DROP INDEX geo.sm_atp_site_sectors_ix;
ALTER TABLE ONLY geo.sm_atp_site_sectors DROP CONSTRAINT sm_atp_site_sectors_sector_id_key;
ALTER TABLE ONLY geo.sm_atp_site_sectors DROP CONSTRAINT sm_atp_site_sectors_pkey;
ALTER TABLE geo.sm_atp_site_sectors ALTER COLUMN sector_id DROP DEFAULT;
DROP SEQUENCE geo.sm_atp_site_sectors_sector_id_seq;
DROP TABLE geo.sm_atp_site_sectors;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_site_sectors; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_site_sectors (
    sector_id integer NOT NULL,
    site_id integer NOT NULL,
    market_id integer NOT NULL,
    sector_number character varying(150),
    azimuth integer,
    h_ant_bw real,
    pn_offset integer,
    geoloc public.geometry,
    pci integer
);


--
-- Name: sm_atp_site_sectors_sector_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE sm_atp_site_sectors_sector_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: sm_atp_site_sectors_sector_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE sm_atp_site_sectors_sector_id_seq OWNED BY sm_atp_site_sectors.sector_id;


--
-- Name: sector_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE sm_atp_site_sectors ALTER COLUMN sector_id SET DEFAULT nextval('sm_atp_site_sectors_sector_id_seq'::regclass);


--
-- Name: sm_atp_site_sectors_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_site_sectors
    ADD CONSTRAINT sm_atp_site_sectors_pkey PRIMARY KEY (sector_id, site_id, market_id);


--
-- Name: sm_atp_site_sectors_sector_id_key; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_site_sectors
    ADD CONSTRAINT sm_atp_site_sectors_sector_id_key UNIQUE (sector_id);


--
-- Name: sm_atp_site_sectors_ix; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX sm_atp_site_sectors_ix ON sm_atp_site_sectors USING btree (market_id);


--
-- Name: sm_atp_site_sectors_ix2; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX sm_atp_site_sectors_ix2 ON sm_atp_site_sectors USING btree (sector_id);


--
-- Name: sm_atp_site_sectors_ix3; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX sm_atp_site_sectors_ix3 ON sm_atp_site_sectors USING btree (site_id);


--
-- Name: sm_atp_site_sectors_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_site_sectors
    ADD CONSTRAINT sm_atp_site_sectors_fk FOREIGN KEY (site_id) REFERENCES sm_atp_sites(site_id);


--
-- Name: sm_atp_site_sectors_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_site_sectors
    ADD CONSTRAINT sm_atp_site_sectors_fk1 FOREIGN KEY (market_id) REFERENCES markets(market_id);


--
-- PostgreSQL database dump complete
--

