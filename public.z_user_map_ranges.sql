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

ALTER TABLE ONLY public.z_user_map_ranges DROP CONSTRAINT user_map_ranges_bak_before_more_rnds_fk;
ALTER TABLE ONLY public.z_user_map_ranges DROP CONSTRAINT user_map_ranges_bak_before_more_rnds_pkey;
DROP TABLE public.z_user_map_ranges;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_user_map_ranges; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_user_map_ranges (
    user_map_range_id integer DEFAULT nextval('z_user_map_ranges_user_map_id_seq'::regclass) NOT NULL,
    metric_type_id integer NOT NULL,
    min_val numeric,
    max_val numeric,
    color character varying NOT NULL,
    size character varying,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    ind_val character varying
);


--
-- Name: user_map_ranges_bak_before_more_rnds_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_user_map_ranges
    ADD CONSTRAINT user_map_ranges_bak_before_more_rnds_pkey PRIMARY KEY (user_map_range_id);


--
-- Name: user_map_ranges_bak_before_more_rnds_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_user_map_ranges
    ADD CONSTRAINT user_map_ranges_bak_before_more_rnds_fk FOREIGN KEY (metric_type_id) REFERENCES z_metric_types(metric_type_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

