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

ALTER TABLE ONLY toolkit.megachart_kpi_profile DROP CONSTRAINT kpi_profile_dim_pkey;
DROP TABLE toolkit.megachart_kpi_profile;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = true;

--
-- Name: megachart_kpi_profile; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE megachart_kpi_profile (
    kpi_profile_dim_id integer DEFAULT nextval('megachart_kpi_profile_seq'::regclass) NOT NULL,
    user_id integer,
    profile_name character varying(100),
    profile_description character varying(255),
    profile_type character varying(100),
    created date
);


--
-- Name: kpi_profile_dim_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY megachart_kpi_profile
    ADD CONSTRAINT kpi_profile_dim_pkey PRIMARY KEY (kpi_profile_dim_id);


--
-- PostgreSQL database dump complete
--

