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

ALTER TABLE ONLY toolkit.cfc_groups DROP CONSTRAINT fk_cfc_groups_spr;
DROP INDEX toolkit.ux_cfc_groups;
ALTER TABLE ONLY toolkit.cfc_groups DROP CONSTRAINT pk_cfc_groups;
DROP TABLE toolkit.cfc_groups;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: cfc_groups; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE cfc_groups (
    group_id integer NOT NULL,
    supergroup_id integer NOT NULL,
    group_name character varying(50),
    group_description character varying(500),
    sort_order smallint,
    enabled boolean DEFAULT true NOT NULL
);


--
-- Name: pk_cfc_groups; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY cfc_groups
    ADD CONSTRAINT pk_cfc_groups PRIMARY KEY (group_id);


--
-- Name: ux_cfc_groups; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX ux_cfc_groups ON cfc_groups USING btree (supergroup_id, sort_order);


--
-- Name: fk_cfc_groups_spr; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY cfc_groups
    ADD CONSTRAINT fk_cfc_groups_spr FOREIGN KEY (supergroup_id) REFERENCES cfc_supergroups(supergroup_id);


--
-- PostgreSQL database dump complete
--

