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

DROP INDEX public.user_maps_ws_idx;
ALTER TABLE ONLY public.z_user_maps_ws DROP CONSTRAINT user_map_ws_name_key;
ALTER TABLE ONLY public.z_user_maps_ws DROP CONSTRAINT user_map_ws_id_pkey;
ALTER TABLE public.z_user_maps_ws ALTER COLUMN ws_id DROP DEFAULT;
DROP SEQUENCE public.z_user_maps_ws_ws_id_seq;
DROP TABLE public.z_user_maps_ws;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_user_maps_ws; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_user_maps_ws (
    ws_id integer NOT NULL,
    user_id integer NOT NULL,
    ws_name character varying NOT NULL,
    ws_description character varying,
    ws_type integer DEFAULT 0 NOT NULL,
    ws_write_perm boolean DEFAULT false NOT NULL,
    ws_parent_id integer,
    ws_hidden boolean DEFAULT false NOT NULL,
    ws_status character(1) DEFAULT 'A'::bpchar,
    ws_display boolean DEFAULT false NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone,
    ws_lat double precision,
    ws_lon double precision,
    ws_origination character varying(15) DEFAULT 'DEFAULT'::character varying
);


--
-- Name: COLUMN z_user_maps_ws.ws_type; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN z_user_maps_ws.ws_type IS '0 - PRIVATE; 1 - PUBLIC';


--
-- Name: COLUMN z_user_maps_ws.ws_status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN z_user_maps_ws.ws_status IS 'A - ACTIVE; I - INACTIVE';


--
-- Name: z_user_maps_ws_ws_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_user_maps_ws_ws_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_user_maps_ws_ws_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_user_maps_ws_ws_id_seq OWNED BY z_user_maps_ws.ws_id;


--
-- Name: ws_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_user_maps_ws ALTER COLUMN ws_id SET DEFAULT nextval('z_user_maps_ws_ws_id_seq'::regclass);


--
-- Name: user_map_ws_id_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_user_maps_ws
    ADD CONSTRAINT user_map_ws_id_pkey PRIMARY KEY (ws_id);


--
-- Name: user_map_ws_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_user_maps_ws
    ADD CONSTRAINT user_map_ws_name_key UNIQUE (ws_name);


--
-- Name: user_maps_ws_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX user_maps_ws_idx ON z_user_maps_ws USING btree (user_id);


--
-- PostgreSQL database dump complete
--

