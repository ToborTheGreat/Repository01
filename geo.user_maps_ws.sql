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

DROP INDEX geo.user_maps_ws_idx;
ALTER TABLE ONLY geo.user_maps_ws DROP CONSTRAINT user_map_ws_name_key;
ALTER TABLE ONLY geo.user_maps_ws DROP CONSTRAINT user_map_ws_id_pkey;
ALTER TABLE geo.user_maps_ws ALTER COLUMN ws_id DROP DEFAULT;
DROP SEQUENCE geo.user_maps_ws_ws_id_seq;
DROP TABLE geo.user_maps_ws;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: user_maps_ws; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE user_maps_ws (
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
    ws_origination character varying(15) DEFAULT 'DEFAULT'::character varying,
    sl_flag character(1) DEFAULT 'N'::bpchar NOT NULL
);


--
-- Name: COLUMN user_maps_ws.ws_type; Type: COMMENT; Schema: geo; Owner: -
--

COMMENT ON COLUMN user_maps_ws.ws_type IS '0 - PRIVATE; 1 - PUBLIC';


--
-- Name: COLUMN user_maps_ws.ws_status; Type: COMMENT; Schema: geo; Owner: -
--

COMMENT ON COLUMN user_maps_ws.ws_status IS 'A - ACTIVE; I - INACTIVE';


--
-- Name: user_maps_ws_ws_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE user_maps_ws_ws_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: user_maps_ws_ws_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE user_maps_ws_ws_id_seq OWNED BY user_maps_ws.ws_id;


--
-- Name: ws_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE user_maps_ws ALTER COLUMN ws_id SET DEFAULT nextval('user_maps_ws_ws_id_seq'::regclass);


--
-- Name: user_map_ws_id_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY user_maps_ws
    ADD CONSTRAINT user_map_ws_id_pkey PRIMARY KEY (ws_id);


--
-- Name: user_map_ws_name_key; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY user_maps_ws
    ADD CONSTRAINT user_map_ws_name_key UNIQUE (ws_name);


--
-- Name: user_maps_ws_idx; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX user_maps_ws_idx ON user_maps_ws USING btree (user_id);


--
-- PostgreSQL database dump complete
--

