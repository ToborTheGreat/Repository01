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

ALTER TABLE ONLY public.z_om_user_remote_layers DROP CONSTRAINT user_omlayer_ws_fk;
ALTER TABLE ONLY public.z_om_user_remote_layers DROP CONSTRAINT om_user_remote_layers_pkey;
ALTER TABLE public.z_om_user_remote_layers ALTER COLUMN omlayer_id DROP DEFAULT;
DROP SEQUENCE public.z_om_user_remote_layers_omlayer_id_seq;
DROP TABLE public.z_om_user_remote_layers;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_om_user_remote_layers; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_om_user_remote_layers (
    omlayer_id integer NOT NULL,
    user_id integer NOT NULL,
    om_layer_id integer NOT NULL,
    status character(1) DEFAULT 'A'::bpchar,
    sort_order integer DEFAULT 1 NOT NULL,
    ws_id integer NOT NULL
);


--
-- Name: COLUMN z_om_user_remote_layers.status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN z_om_user_remote_layers.status IS 'A - Active, I- In active';


--
-- Name: z_om_user_remote_layers_omlayer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_om_user_remote_layers_omlayer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_om_user_remote_layers_omlayer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_om_user_remote_layers_omlayer_id_seq OWNED BY z_om_user_remote_layers.omlayer_id;


--
-- Name: omlayer_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_om_user_remote_layers ALTER COLUMN omlayer_id SET DEFAULT nextval('z_om_user_remote_layers_omlayer_id_seq'::regclass);


--
-- Name: om_user_remote_layers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_om_user_remote_layers
    ADD CONSTRAINT om_user_remote_layers_pkey PRIMARY KEY (omlayer_id);


--
-- Name: user_omlayer_ws_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_om_user_remote_layers
    ADD CONSTRAINT user_omlayer_ws_fk FOREIGN KEY (ws_id) REFERENCES z_user_maps_ws(ws_id);


--
-- PostgreSQL database dump complete
--

