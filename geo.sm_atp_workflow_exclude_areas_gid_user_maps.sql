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

ALTER TABLE ONLY geo.sm_atp_workflow_exclude_areas_gid_user_maps DROP CONSTRAINT sm_atp_workflow_include_user_maps_pkey;
DROP TABLE geo.sm_atp_workflow_exclude_areas_gid_user_maps;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_workflow_exclude_areas_gid_user_maps; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_workflow_exclude_areas_gid_user_maps (
    workflow_run_id integer NOT NULL,
    orig_user_map_id integer NOT NULL,
    gid integer NOT NULL
);


--
-- Name: sm_atp_workflow_include_user_maps_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_workflow_exclude_areas_gid_user_maps
    ADD CONSTRAINT sm_atp_workflow_include_user_maps_pkey PRIMARY KEY (workflow_run_id, orig_user_map_id, gid);


--
-- PostgreSQL database dump complete
--

