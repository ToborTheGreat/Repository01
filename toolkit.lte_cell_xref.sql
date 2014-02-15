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

ALTER TABLE ONLY toolkit.lte_cell_xref DROP CONSTRAINT lte_cell_xref_pkey;
DROP TABLE toolkit.lte_cell_xref;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: lte_cell_xref; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE lte_cell_xref (
    cell_id integer NOT NULL,
    sector integer NOT NULL,
    band integer NOT NULL,
    min_dl_center_freq integer NOT NULL,
    max_dl_center_freq integer NOT NULL,
    carrier integer NOT NULL
);


--
-- Name: lte_cell_xref_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY lte_cell_xref
    ADD CONSTRAINT lte_cell_xref_pkey PRIMARY KEY (cell_id);


--
-- PostgreSQL database dump complete
--

