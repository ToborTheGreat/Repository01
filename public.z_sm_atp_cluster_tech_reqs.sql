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

DROP TABLE public.z_sm_atp_cluster_tech_reqs;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_cluster_tech_reqs; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_cluster_tech_reqs (
    cluster_id integer NOT NULL,
    market_id integer NOT NULL,
    technology_type_id integer NOT NULL,
    req_name character varying(30) NOT NULL,
    approved_run_id integer NOT NULL,
    approved_date date
);


--
-- PostgreSQL database dump complete
--

