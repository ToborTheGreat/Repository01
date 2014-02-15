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

ALTER TABLE ONLY toolkit.report_feature_message_views DROP CONSTRAINT report_feature_message_views_msg;
ALTER TABLE ONLY toolkit.report_feature_message_views DROP CONSTRAINT report_feature_message_views_pk;
DROP TABLE toolkit.report_feature_message_views;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_feature_message_views; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_feature_message_views (
    feature_message_id integer NOT NULL,
    user_id integer NOT NULL,
    view_timestamp timestamp without time zone DEFAULT now()
);


--
-- Name: report_feature_message_views_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_feature_message_views
    ADD CONSTRAINT report_feature_message_views_pk PRIMARY KEY (feature_message_id, user_id);


--
-- Name: report_feature_message_views_msg; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_feature_message_views
    ADD CONSTRAINT report_feature_message_views_msg FOREIGN KEY (feature_message_id) REFERENCES report_feature_message(feature_message_id);


--
-- PostgreSQL database dump complete
--

