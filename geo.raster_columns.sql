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

ALTER TABLE ONLY geo.raster_columns DROP CONSTRAINT raster_columns_pk;
DROP TABLE geo.raster_columns;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: raster_columns; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE raster_columns (
    r_table_catalog character varying(256) NOT NULL,
    r_table_schema character varying(256) NOT NULL,
    r_table_name character varying(256) NOT NULL,
    r_column character varying(256) NOT NULL,
    srid integer NOT NULL,
    pixel_types character varying[] NOT NULL,
    out_db boolean NOT NULL,
    regular_blocking boolean NOT NULL,
    nodata_values double precision[],
    pixelsize_x double precision,
    pixelsize_y double precision,
    blocksize_x integer,
    blocksize_y integer,
    extent public.geometry
);


--
-- Name: raster_columns_pk; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY raster_columns
    ADD CONSTRAINT raster_columns_pk PRIMARY KEY (r_table_catalog, r_table_schema, r_table_name, r_column);


--
-- PostgreSQL database dump complete
--

