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

ALTER TABLE ONLY public.raster_overviews DROP CONSTRAINT raster_overviews_pk;
DROP TABLE public.raster_overviews;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- Name: raster_overviews; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE raster_overviews (
    o_table_catalog character varying(256) NOT NULL,
    o_table_schema character varying(256) NOT NULL,
    o_table_name character varying(256) NOT NULL,
    o_column character varying(256) NOT NULL,
    r_table_catalog character varying(256) NOT NULL,
    r_table_schema character varying(256) NOT NULL,
    r_table_name character varying(256) NOT NULL,
    r_column character varying(256) NOT NULL,
    out_db boolean NOT NULL,
    overview_factor integer NOT NULL
);


--
-- Name: raster_overviews_pk; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY raster_overviews
    ADD CONSTRAINT raster_overviews_pk PRIMARY KEY (o_table_catalog, o_table_schema, o_table_name, o_column, overview_factor);


--
-- PostgreSQL database dump complete
--

