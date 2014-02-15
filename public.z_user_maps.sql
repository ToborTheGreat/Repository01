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

ALTER TABLE ONLY public.z_user_maps DROP CONSTRAINT user_maps_fk2;
ALTER TABLE ONLY public.z_user_maps DROP CONSTRAINT user_maps_fk1;
DROP INDEX public.user_maps_idx2;
DROP INDEX public.user_maps_idx1;
DROP INDEX public.user_maps_idx;
ALTER TABLE ONLY public.z_user_maps DROP CONSTRAINT user_maps_pkey;
ALTER TABLE public.z_user_maps ALTER COLUMN user_map_id DROP DEFAULT;
DROP SEQUENCE public.z_user_maps_user_map_id_seq;
DROP TABLE public.z_user_maps;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_user_maps; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_user_maps (
    user_map_id bigint NOT NULL,
    layer_name character varying NOT NULL,
    user_map_category_id integer NOT NULL,
    market_id integer NOT NULL,
    table_name character varying NOT NULL,
    table_pk_field character varying NOT NULL,
    uploaded_files character varying NOT NULL,
    created_by_user_id integer NOT NULL,
    created_by_user_name character varying NOT NULL,
    upload_ip character varying NOT NULL,
    geoloc_type character varying NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    rgb character varying,
    project_name character varying,
    sort_order integer DEFAULT 1 NOT NULL,
    is_shown boolean DEFAULT false NOT NULL,
    drive_test_data_column character varying,
    drive_test_metric_type_id integer,
    set_nav_area boolean DEFAULT false NOT NULL,
    set_nav_site boolean DEFAULT false NOT NULL,
    base_layer boolean DEFAULT false NOT NULL,
    set_label_column character varying,
    set_site_column character varying,
    origination_code character(1) DEFAULT 'U'::bpchar NOT NULL,
    layer_status character(1) DEFAULT 'A'::bpchar NOT NULL,
    set_area_column character varying(65),
    parent_map_id integer
);


--
-- Name: COLUMN z_user_maps.rgb; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN z_user_maps.rgb IS 'RGB Values:
RND - For Random colors
THEMATIC - Thematic 
Symbol - user_map_icon_id
Color - #<color-code>';


--
-- Name: z_user_maps_user_map_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_user_maps_user_map_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_user_maps_user_map_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_user_maps_user_map_id_seq OWNED BY z_user_maps.user_map_id;


--
-- Name: user_map_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_user_maps ALTER COLUMN user_map_id SET DEFAULT nextval('z_user_maps_user_map_id_seq'::regclass);


--
-- Name: user_maps_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_user_maps
    ADD CONSTRAINT user_maps_pkey PRIMARY KEY (user_map_id);


--
-- Name: user_maps_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX user_maps_idx ON z_user_maps USING btree (market_id, origination_code);


--
-- Name: user_maps_idx1; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX user_maps_idx1 ON z_user_maps USING btree (origination_code);


--
-- Name: user_maps_idx2; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX user_maps_idx2 ON z_user_maps USING btree (user_map_category_id);


--
-- Name: user_maps_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_user_maps
    ADD CONSTRAINT user_maps_fk1 FOREIGN KEY (market_id) REFERENCES z_markets(market_id);


--
-- Name: user_maps_fk2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_user_maps
    ADD CONSTRAINT user_maps_fk2 FOREIGN KEY (user_map_category_id) REFERENCES z_user_map_categories(user_map_category_id);


--
-- PostgreSQL database dump complete
--

