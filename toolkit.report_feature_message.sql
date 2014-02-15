--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = toolkit, pg_catalog;

ALTER TABLE ONLY toolkit.report_feature_message DROP CONSTRAINT report_feature_message_pk;
DROP TABLE toolkit.report_feature_message;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_feature_message; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_feature_message (
    feature_message_id integer DEFAULT nextval('report_feature_message_seq'::regclass) NOT NULL,
    feature_message_text text,
    expiration_date date DEFAULT '2030-01-01'::date NOT NULL,
    message_priority smallint,
    feature_id integer NOT NULL,
    feature_message_title text,
    module_id integer,
    priority_flag smallint
);


--
-- Name: report_feature_message_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_feature_message
    ADD CONSTRAINT report_feature_message_pk PRIMARY KEY (feature_message_id);


--
-- PostgreSQL database dump complete
--

