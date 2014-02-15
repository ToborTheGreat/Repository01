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

ALTER TABLE ONLY toolkit.notifications DROP CONSTRAINT notifications_pk;
ALTER TABLE toolkit.notifications ALTER COLUMN notificationid DROP DEFAULT;
DROP SEQUENCE toolkit.notifications_notificationid_seq;
DROP TABLE toolkit.notifications;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: notifications; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE notifications (
    notificationid integer NOT NULL,
    m_application text,
    m_schema text,
    m_type text,
    m_send_to text,
    m_subject text,
    m_message text,
    m_sent boolean DEFAULT false
);


--
-- Name: notifications_notificationid_seq; Type: SEQUENCE; Schema: toolkit; Owner: -
--

CREATE SEQUENCE notifications_notificationid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: notifications_notificationid_seq; Type: SEQUENCE OWNED BY; Schema: toolkit; Owner: -
--

ALTER SEQUENCE notifications_notificationid_seq OWNED BY notifications.notificationid;


--
-- Name: notificationid; Type: DEFAULT; Schema: toolkit; Owner: -
--

ALTER TABLE notifications ALTER COLUMN notificationid SET DEFAULT nextval('notifications_notificationid_seq'::regclass);


--
-- Name: notifications_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT notifications_pk PRIMARY KEY (notificationid);


--
-- PostgreSQL database dump complete
--

