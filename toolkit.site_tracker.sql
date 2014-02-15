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

ALTER TABLE ONLY toolkit.site_tracker DROP CONSTRAINT site_tracker_pkey;
DROP TABLE toolkit.site_tracker;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: site_tracker; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE site_tracker (
    cascade_id character varying(20) NOT NULL,
    ground_mounted character varying(1) DEFAULT 'F'::character varying NOT NULL
);


--
-- Name: site_tracker_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY site_tracker
    ADD CONSTRAINT site_tracker_pkey PRIMARY KEY (cascade_id);


--
-- PostgreSQL database dump complete
--

