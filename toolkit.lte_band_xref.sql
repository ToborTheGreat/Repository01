--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = toolkit, pg_catalog;

ALTER TABLE ONLY toolkit.lte_band_xref DROP CONSTRAINT lte_band_xref_pkey;
DROP TABLE toolkit.lte_band_xref;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: lte_band_xref; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE lte_band_xref (
    min_dl_center_freq real NOT NULL,
    max_dl_center_freq real NOT NULL,
    bandclass integer NOT NULL
);


--
-- Name: lte_band_xref_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY lte_band_xref
    ADD CONSTRAINT lte_band_xref_pkey PRIMARY KEY (min_dl_center_freq, max_dl_center_freq);


--
-- PostgreSQL database dump complete
--

