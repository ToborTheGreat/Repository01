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

DROP TABLE public.z_raster_overviews;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: z_raster_overviews; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_raster_overviews (
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
-- PostgreSQL database dump complete
--

