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

DROP INDEX toolkit.report_groups_ux1;
ALTER TABLE ONLY toolkit.report_groups DROP CONSTRAINT pk_report_groups;
DROP TABLE toolkit.report_groups;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_groups; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_groups (
    group_id integer NOT NULL,
    group_name character varying(100) NOT NULL
);


--
-- Name: pk_report_groups; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_groups
    ADD CONSTRAINT pk_report_groups PRIMARY KEY (group_id);


--
-- Name: report_groups_ux1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX report_groups_ux1 ON report_groups USING btree (group_name);


--
-- PostgreSQL database dump complete
--

