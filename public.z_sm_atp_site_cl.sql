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

ALTER TABLE ONLY public.z_sm_atp_site_cl DROP CONSTRAINT sm_atp_site_cl_fk2;
ALTER TABLE ONLY public.z_sm_atp_site_cl DROP CONSTRAINT sm_atp_site_cl_fk1;
ALTER TABLE ONLY public.z_sm_atp_site_cl DROP CONSTRAINT sm_atp_site_cl_fk;
ALTER TABLE ONLY public.z_sm_atp_site_cl DROP CONSTRAINT sm_atp_site_cl_idx;
DROP TABLE public.z_sm_atp_site_cl;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_site_cl; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_site_cl (
    site_id integer NOT NULL,
    market_id integer NOT NULL,
    cl_template_id integer NOT NULL,
    created timestamp(0) with time zone,
    modified timestamp(0) with time zone
);


--
-- Name: sm_atp_site_cl_idx; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_site_cl
    ADD CONSTRAINT sm_atp_site_cl_idx PRIMARY KEY (site_id, market_id, cl_template_id);


--
-- Name: sm_atp_site_cl_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_site_cl
    ADD CONSTRAINT sm_atp_site_cl_fk FOREIGN KEY (site_id) REFERENCES z_sm_atp_sites(site_id);


--
-- Name: sm_atp_site_cl_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_site_cl
    ADD CONSTRAINT sm_atp_site_cl_fk1 FOREIGN KEY (market_id) REFERENCES z_markets(market_id);


--
-- Name: sm_atp_site_cl_fk2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_site_cl
    ADD CONSTRAINT sm_atp_site_cl_fk2 FOREIGN KEY (cl_template_id) REFERENCES z_sm_atp_cl_templates(cl_template_id);


--
-- PostgreSQL database dump complete
--

