--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = sm_om, pg_catalog;

ALTER TABLE ONLY sm_om.om_map_logs DROP CONSTRAINT om_map_logs_pkey;
ALTER TABLE sm_om.om_map_logs ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE sm_om.om_map_logs_id_seq;
DROP TABLE sm_om.om_map_logs;
SET search_path = sm_om, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: om_map_logs; Type: TABLE; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE om_map_logs (
    id bigint NOT NULL,
    map_ext_ref character varying(20),
    started timestamp without time zone,
    end_time timestamp without time zone,
    request_url character varying,
    file_exists boolean,
    time_taken bigint,
    row_count integer
);
ALTER TABLE ONLY om_map_logs ALTER COLUMN request_url SET STATISTICS 0;


--
-- Name: om_map_logs_id_seq; Type: SEQUENCE; Schema: sm_om; Owner: -
--

CREATE SEQUENCE om_map_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: om_map_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: sm_om; Owner: -
--

ALTER SEQUENCE om_map_logs_id_seq OWNED BY om_map_logs.id;


--
-- Name: id; Type: DEFAULT; Schema: sm_om; Owner: -
--

ALTER TABLE om_map_logs ALTER COLUMN id SET DEFAULT nextval('om_map_logs_id_seq'::regclass);


--
-- Name: om_map_logs_pkey; Type: CONSTRAINT; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY om_map_logs
    ADD CONSTRAINT om_map_logs_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

