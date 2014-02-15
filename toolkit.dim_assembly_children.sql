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

ALTER TABLE ONLY toolkit.dim_assembly_children DROP CONSTRAINT dim_assembly_children_pk;
DROP TABLE toolkit.dim_assembly_children;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: dim_assembly_children; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE dim_assembly_children (
    dim_name character varying(128) NOT NULL,
    dim_parent_id integer NOT NULL,
    child_id integer,
    step_id integer,
    refresh_type character varying(10),
    step_name character varying(32) NOT NULL,
    step_order integer,
    step_depends integer,
    step_details text
);


--
-- Name: dim_assembly_children_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY dim_assembly_children
    ADD CONSTRAINT dim_assembly_children_pk PRIMARY KEY (dim_name, dim_parent_id, step_name);


--
-- PostgreSQL database dump complete
--

