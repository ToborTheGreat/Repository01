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

ALTER TABLE ONLY public.z_sm_atp_workflow_clusters DROP CONSTRAINT sm_atp_workflow_clusters_fk2;
ALTER TABLE ONLY public.z_sm_atp_workflow_clusters DROP CONSTRAINT sm_atp_workflow_clusters_fk1;
ALTER TABLE ONLY public.z_sm_atp_workflow_clusters DROP CONSTRAINT sm_atp_workflow_clusters_pkey;
DROP TABLE public.z_sm_atp_workflow_clusters;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_workflow_clusters; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_workflow_clusters (
    workflow_run_id integer NOT NULL,
    cluster_id integer NOT NULL,
    cluster_market_id integer NOT NULL,
    cluster_name character varying(150) NOT NULL,
    cluster_project_name character varying(150),
    technology_type_id integer NOT NULL,
    short_name character varying(5)
);


--
-- Name: sm_atp_workflow_clusters_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_workflow_clusters
    ADD CONSTRAINT sm_atp_workflow_clusters_pkey PRIMARY KEY (workflow_run_id, cluster_id);


--
-- Name: sm_atp_workflow_clusters_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_workflow_clusters
    ADD CONSTRAINT sm_atp_workflow_clusters_fk1 FOREIGN KEY (cluster_market_id) REFERENCES z_markets(market_id);


--
-- Name: sm_atp_workflow_clusters_fk2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_workflow_clusters
    ADD CONSTRAINT sm_atp_workflow_clusters_fk2 FOREIGN KEY (technology_type_id) REFERENCES z_technology_types(technology_type_id);


--
-- PostgreSQL database dump complete
--

