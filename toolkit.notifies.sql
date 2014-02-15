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

ALTER TABLE ONLY toolkit.notifies DROP CONSTRAINT notifies_pk;
DROP TABLE toolkit.notifies;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: notifies; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE notifies (
    m_send_to text NOT NULL,
    m_msg_type text NOT NULL
);


--
-- Name: notifies_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY notifies
    ADD CONSTRAINT notifies_pk PRIMARY KEY (m_send_to, m_msg_type);


--
-- PostgreSQL database dump complete
--

