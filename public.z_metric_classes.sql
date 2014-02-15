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

ALTER TABLE ONLY public.z_metric_classes DROP CONSTRAINT metric_classes_pkey;
DROP TABLE public.z_metric_classes;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_metric_classes; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_metric_classes (
    metric_class_id integer NOT NULL,
    description character varying(30) DEFAULT NULL::character varying NOT NULL,
    ext_ref character varying(15) DEFAULT NULL::character varying
);


--
-- Name: metric_classes_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_metric_classes
    ADD CONSTRAINT metric_classes_pkey PRIMARY KEY (metric_class_id);


--
-- PostgreSQL database dump complete
--

