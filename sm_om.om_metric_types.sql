--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = sm_om, pg_catalog;

ALTER TABLE ONLY sm_om.om_metric_types DROP CONSTRAINT om_metric_types_pkey;
DROP TABLE sm_om.om_metric_types;
SET search_path = sm_om, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: om_metric_types; Type: TABLE; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE om_metric_types (
    metric_id integer,
    metric_table character varying,
    thematic_id integer,
    om_metric_type_id integer DEFAULT nextval(('"sm_om"."om_metric_types_om_metric_type_id_seq"'::text)::regclass) NOT NULL
);


--
-- Name: om_metric_types_pkey; Type: CONSTRAINT; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY om_metric_types
    ADD CONSTRAINT om_metric_types_pkey PRIMARY KEY (om_metric_type_id);


--
-- PostgreSQL database dump complete
--

