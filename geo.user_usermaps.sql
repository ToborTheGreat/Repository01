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

ALTER TABLE ONLY geo.user_usermaps DROP CONSTRAINT user_usermaps_ws_fk;
DROP INDEX geo.user_usermaps_ix2;
DROP INDEX geo.user_usermaps_ix;
DROP INDEX geo.user_usermaps_idx;
ALTER TABLE ONLY geo.user_usermaps DROP CONSTRAINT user_usermaps_pkey;
ALTER TABLE geo.user_usermaps ALTER COLUMN user_usermaps_id DROP DEFAULT;
DROP SEQUENCE geo.user_usermaps_user_usermaps_id_seq;
DROP TABLE geo.user_usermaps;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: user_usermaps; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE user_usermaps (
    user_usermaps_id integer NOT NULL,
    user_id integer NOT NULL,
    user_map_id integer NOT NULL,
    status character(1) DEFAULT 'A'::bpchar,
    sort_order integer DEFAULT 1 NOT NULL,
    ws_id integer NOT NULL
);


--
-- Name: COLUMN user_usermaps.status; Type: COMMENT; Schema: geo; Owner: -
--

COMMENT ON COLUMN user_usermaps.status IS 'A - Active, I- In active';


--
-- Name: user_usermaps_user_usermaps_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE user_usermaps_user_usermaps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: user_usermaps_user_usermaps_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE user_usermaps_user_usermaps_id_seq OWNED BY user_usermaps.user_usermaps_id;


--
-- Name: user_usermaps_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE user_usermaps ALTER COLUMN user_usermaps_id SET DEFAULT nextval('user_usermaps_user_usermaps_id_seq'::regclass);


--
-- Name: user_usermaps_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY user_usermaps
    ADD CONSTRAINT user_usermaps_pkey PRIMARY KEY (user_usermaps_id);


--
-- Name: user_usermaps_idx; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX user_usermaps_idx ON user_usermaps USING btree (user_map_id);


--
-- Name: user_usermaps_ix; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX user_usermaps_ix ON user_usermaps USING btree (ws_id);


--
-- Name: user_usermaps_ix2; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX user_usermaps_ix2 ON user_usermaps USING btree (user_id);


--
-- Name: user_usermaps_ws_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY user_usermaps
    ADD CONSTRAINT user_usermaps_ws_fk FOREIGN KEY (ws_id) REFERENCES user_maps_ws(ws_id);


--
-- PostgreSQL database dump complete
--

