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

ALTER TABLE ONLY geo.sm_atp_clusters DROP CONSTRAINT sm_atp_clusters_fk1;
ALTER TABLE ONLY geo.sm_atp_clusters DROP CONSTRAINT sm_atp_clusters_fk;
ALTER TABLE ONLY geo.sm_atp_clusters DROP CONSTRAINT sm_atp_clusters_pkey;
ALTER TABLE ONLY geo.sm_atp_clusters DROP CONSTRAINT sm_atp_clusters_cluster_id_key;
ALTER TABLE geo.sm_atp_clusters ALTER COLUMN cluster_id DROP DEFAULT;
DROP SEQUENCE geo.sm_atp_clusters_cluster_id_seq;
DROP TABLE geo.sm_atp_clusters;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_clusters; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_clusters (
    cluster_id integer NOT NULL,
    market_id integer NOT NULL,
    project_name character varying(100) NOT NULL,
    cluster_name character varying(100) NOT NULL,
    technology_type_id integer NOT NULL,
    short_name character varying(5),
    approved_run_id integer
);


--
-- Name: sm_atp_clusters_cluster_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE sm_atp_clusters_cluster_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: sm_atp_clusters_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE sm_atp_clusters_cluster_id_seq OWNED BY sm_atp_clusters.cluster_id;


--
-- Name: cluster_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE sm_atp_clusters ALTER COLUMN cluster_id SET DEFAULT nextval('sm_atp_clusters_cluster_id_seq'::regclass);


--
-- Name: sm_atp_clusters_cluster_id_key; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_clusters
    ADD CONSTRAINT sm_atp_clusters_cluster_id_key UNIQUE (cluster_id);


--
-- Name: sm_atp_clusters_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_clusters
    ADD CONSTRAINT sm_atp_clusters_pkey PRIMARY KEY (cluster_id, market_id, technology_type_id);


--
-- Name: sm_atp_clusters_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_clusters
    ADD CONSTRAINT sm_atp_clusters_fk FOREIGN KEY (market_id) REFERENCES markets(market_id);


--
-- Name: sm_atp_clusters_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_clusters
    ADD CONSTRAINT sm_atp_clusters_fk1 FOREIGN KEY (technology_type_id) REFERENCES technology_types(technology_type_id);


--
-- PostgreSQL database dump complete
--

