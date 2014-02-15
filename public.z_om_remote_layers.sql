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

ALTER TABLE ONLY public.z_om_remote_layers DROP CONSTRAINT om_remote_layers_pkey;
DROP TABLE public.z_om_remote_layers;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_om_remote_layers; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_om_remote_layers (
    om_layer_id integer DEFAULT nextval('z_om_remote_layers_layer_id_seq'::regclass) NOT NULL,
    layer_name character varying,
    layer_url character varying,
    status character(1) DEFAULT 'A'::bpchar,
    layer_type character varying(15),
    center_lat double precision,
    center_lng double precision,
    param_url character varying,
    thematic_sql_query character varying,
    thematic_class character varying(5),
    thematic_metric_type_id integer,
    om_ext_ref character varying(25),
    layer_group character varying(20),
    user_id integer,
    ws_id integer,
    sort_order integer
);


--
-- Name: COLUMN z_om_remote_layers.status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN z_om_remote_layers.status IS 'A - Active, I- In active';


--
-- Name: om_remote_layers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_om_remote_layers
    ADD CONSTRAINT om_remote_layers_pkey PRIMARY KEY (om_layer_id);


--
-- PostgreSQL database dump complete
--

