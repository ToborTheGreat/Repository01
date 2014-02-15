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

ALTER TABLE ONLY toolkit.parameter_audit_rules DROP CONSTRAINT parameter_audit_rules_pkey;
DROP TABLE toolkit.parameter_audit_rules;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: parameter_audit_rules; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE parameter_audit_rules (
    parameter_audit_rule_id integer NOT NULL,
    description character varying(20) NOT NULL
);


--
-- Name: parameter_audit_rules_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY parameter_audit_rules
    ADD CONSTRAINT parameter_audit_rules_pkey PRIMARY KEY (parameter_audit_rule_id);


--
-- PostgreSQL database dump complete
--

