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

DROP TABLE geo.user_mapx;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: user_mapx; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE user_mapx (
    user_map_id bigint,
    layer_name character varying,
    user_map_category_id integer,
    market_id integer,
    table_name character varying,
    table_pk_field character varying,
    uploaded_files character varying,
    created_by_user_id integer,
    created_by_user_name character varying,
    upload_ip character varying,
    geoloc_type character varying,
    created timestamp with time zone,
    modified timestamp with time zone,
    rgb character varying,
    project_name character varying,
    sort_order integer,
    is_shown boolean,
    drive_test_data_column character varying,
    drive_test_metric_type_id integer,
    set_nav_area boolean,
    set_nav_site boolean,
    base_layer boolean,
    set_label_column character varying,
    set_site_column character varying,
    origination_code character(1),
    layer_status character(1),
    set_area_column character varying(65),
    parent_map_id integer
);


--
-- PostgreSQL database dump complete
--

