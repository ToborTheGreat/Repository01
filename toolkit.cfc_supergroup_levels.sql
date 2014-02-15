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

ALTER TABLE ONLY toolkit.cfc_supergroup_levels DROP CONSTRAINT fk_cfc_supergroup_levels_spr;
ALTER TABLE ONLY toolkit.cfc_supergroup_levels DROP CONSTRAINT fk_cfc_supergroup_levels_mtr;
ALTER TABLE ONLY toolkit.cfc_supergroup_levels DROP CONSTRAINT pk_cfc_supergroup_levels;
DROP TABLE toolkit.cfc_supergroup_levels;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: cfc_supergroup_levels; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE cfc_supergroup_levels (
    supergroup_id integer NOT NULL,
    level character varying(20) NOT NULL,
    metric_type character varying(20) NOT NULL,
    technology character varying(30) NOT NULL,
    metric_id integer NOT NULL
);


--
-- Name: pk_cfc_supergroup_levels; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY cfc_supergroup_levels
    ADD CONSTRAINT pk_cfc_supergroup_levels PRIMARY KEY (supergroup_id, level, metric_type, technology, metric_id);


--
-- Name: fk_cfc_supergroup_levels_mtr; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY cfc_supergroup_levels
    ADD CONSTRAINT fk_cfc_supergroup_levels_mtr FOREIGN KEY (metric_id) REFERENCES om_catalog(metric_id);


--
-- Name: fk_cfc_supergroup_levels_spr; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY cfc_supergroup_levels
    ADD CONSTRAINT fk_cfc_supergroup_levels_spr FOREIGN KEY (supergroup_id) REFERENCES cfc_supergroups(supergroup_id);


--
-- PostgreSQL database dump complete
--

