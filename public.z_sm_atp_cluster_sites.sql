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

ALTER TABLE ONLY public.z_sm_atp_cluster_sites DROP CONSTRAINT sm_atp_cluster_sites_fk3;
ALTER TABLE ONLY public.z_sm_atp_cluster_sites DROP CONSTRAINT sm_atp_cluster_sites_fk2;
ALTER TABLE ONLY public.z_sm_atp_cluster_sites DROP CONSTRAINT sm_atp_cluster_sites_fk1;
ALTER TABLE ONLY public.z_sm_atp_cluster_sites DROP CONSTRAINT sm_atp_cluster_sites_fk;
DROP TABLE public.z_sm_atp_cluster_sites;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_cluster_sites; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_cluster_sites (
    technology_type_id integer NOT NULL,
    cluster_id integer NOT NULL,
    market_id integer NOT NULL,
    site_id integer NOT NULL
);


--
-- Name: sm_atp_cluster_sites_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_cluster_sites
    ADD CONSTRAINT sm_atp_cluster_sites_fk FOREIGN KEY (technology_type_id) REFERENCES z_technology_types(technology_type_id);


--
-- Name: sm_atp_cluster_sites_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_cluster_sites
    ADD CONSTRAINT sm_atp_cluster_sites_fk1 FOREIGN KEY (cluster_id) REFERENCES z_sm_atp_clusters(cluster_id);


--
-- Name: sm_atp_cluster_sites_fk2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_cluster_sites
    ADD CONSTRAINT sm_atp_cluster_sites_fk2 FOREIGN KEY (market_id) REFERENCES z_markets(market_id);


--
-- Name: sm_atp_cluster_sites_fk3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_cluster_sites
    ADD CONSTRAINT sm_atp_cluster_sites_fk3 FOREIGN KEY (site_id) REFERENCES z_sm_atp_sites(site_id);


--
-- PostgreSQL database dump complete
--

