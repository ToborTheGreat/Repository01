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

ALTER TABLE ONLY public.z_user_usermaps DROP CONSTRAINT user_usermaps_ws_fk;
DROP INDEX public.user_usermaps_idx;
ALTER TABLE ONLY public.z_user_usermaps DROP CONSTRAINT user_usermaps_pkey;
ALTER TABLE public.z_user_usermaps ALTER COLUMN user_usermaps_id DROP DEFAULT;
DROP SEQUENCE public.z_user_usermaps_user_usermaps_id_seq;
DROP TABLE public.z_user_usermaps;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_user_usermaps; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_user_usermaps (
    user_usermaps_id integer NOT NULL,
    user_id integer NOT NULL,
    user_map_id integer NOT NULL,
    status character(1) DEFAULT 'A'::bpchar,
    sort_order integer DEFAULT 1 NOT NULL,
    ws_id integer NOT NULL
);


--
-- Name: COLUMN z_user_usermaps.status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN z_user_usermaps.status IS 'A - Active, I- In active';


--
-- Name: z_user_usermaps_user_usermaps_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_user_usermaps_user_usermaps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_user_usermaps_user_usermaps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_user_usermaps_user_usermaps_id_seq OWNED BY z_user_usermaps.user_usermaps_id;


--
-- Name: user_usermaps_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_user_usermaps ALTER COLUMN user_usermaps_id SET DEFAULT nextval('z_user_usermaps_user_usermaps_id_seq'::regclass);


--
-- Name: user_usermaps_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_user_usermaps
    ADD CONSTRAINT user_usermaps_pkey PRIMARY KEY (user_usermaps_id);


--
-- Name: user_usermaps_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX user_usermaps_idx ON z_user_usermaps USING btree (user_map_id);


--
-- Name: user_usermaps_ws_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_user_usermaps
    ADD CONSTRAINT user_usermaps_ws_fk FOREIGN KEY (ws_id) REFERENCES z_user_maps_ws(ws_id);


--
-- PostgreSQL database dump complete
--

