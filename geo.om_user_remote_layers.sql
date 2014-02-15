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

ALTER TABLE ONLY geo.om_user_remote_layers DROP CONSTRAINT user_omlayer_ws_fk;
ALTER TABLE ONLY geo.om_user_remote_layers DROP CONSTRAINT om_user_remote_layers_pkey;
ALTER TABLE geo.om_user_remote_layers ALTER COLUMN omlayer_id DROP DEFAULT;
DROP SEQUENCE geo.om_user_remote_layers_omlayer_id_seq;
DROP TABLE geo.om_user_remote_layers;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: om_user_remote_layers; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE om_user_remote_layers (
    omlayer_id integer NOT NULL,
    user_id integer NOT NULL,
    om_layer_id integer NOT NULL,
    status character(1) DEFAULT 'A'::bpchar,
    sort_order integer DEFAULT 1 NOT NULL,
    ws_id integer NOT NULL
);


--
-- Name: COLUMN om_user_remote_layers.status; Type: COMMENT; Schema: geo; Owner: -
--

COMMENT ON COLUMN om_user_remote_layers.status IS 'A - Active, I- In active';


--
-- Name: om_user_remote_layers_omlayer_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE om_user_remote_layers_omlayer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: om_user_remote_layers_omlayer_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE om_user_remote_layers_omlayer_id_seq OWNED BY om_user_remote_layers.omlayer_id;


--
-- Name: omlayer_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE om_user_remote_layers ALTER COLUMN omlayer_id SET DEFAULT nextval('om_user_remote_layers_omlayer_id_seq'::regclass);


--
-- Name: om_user_remote_layers_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY om_user_remote_layers
    ADD CONSTRAINT om_user_remote_layers_pkey PRIMARY KEY (omlayer_id);


--
-- Name: user_omlayer_ws_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY om_user_remote_layers
    ADD CONSTRAINT user_omlayer_ws_fk FOREIGN KEY (ws_id) REFERENCES user_maps_ws(ws_id);


--
-- PostgreSQL database dump complete
--

