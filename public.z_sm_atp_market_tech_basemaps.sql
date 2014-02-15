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

ALTER TABLE ONLY public.z_sm_atp_market_tech_basemaps DROP CONSTRAINT market_tech_basemaps_fk2;
ALTER TABLE ONLY public.z_sm_atp_market_tech_basemaps DROP CONSTRAINT market_tech_basemaps_fk1;
ALTER TABLE ONLY public.z_sm_atp_market_tech_basemaps DROP CONSTRAINT market_tech_basemaps_fk;
ALTER TABLE ONLY public.z_sm_atp_market_tech_basemaps DROP CONSTRAINT market_tech_basemaps_idx;
DROP TABLE public.z_sm_atp_market_tech_basemaps;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_market_tech_basemaps; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_market_tech_basemaps (
    technology_type_id integer NOT NULL,
    market_id integer NOT NULL,
    user_map_id integer NOT NULL,
    ws_default_status character(1) DEFAULT 'I'::bpchar NOT NULL,
    sort_order integer
);


--
-- Name: market_tech_basemaps_idx; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_market_tech_basemaps
    ADD CONSTRAINT market_tech_basemaps_idx PRIMARY KEY (user_map_id, market_id, technology_type_id);


--
-- Name: market_tech_basemaps_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_market_tech_basemaps
    ADD CONSTRAINT market_tech_basemaps_fk FOREIGN KEY (technology_type_id) REFERENCES z_technology_types(technology_type_id);


--
-- Name: market_tech_basemaps_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_market_tech_basemaps
    ADD CONSTRAINT market_tech_basemaps_fk1 FOREIGN KEY (market_id) REFERENCES z_markets(market_id);


--
-- Name: market_tech_basemaps_fk2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_market_tech_basemaps
    ADD CONSTRAINT market_tech_basemaps_fk2 FOREIGN KEY (user_map_id) REFERENCES z_user_maps(user_map_id);


--
-- PostgreSQL database dump complete
--

