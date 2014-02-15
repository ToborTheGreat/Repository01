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

ALTER TABLE ONLY toolkit.cfc_group_om_metrics DROP CONSTRAINT fk_cfc_group_om_metrics_grp;
ALTER TABLE ONLY toolkit.cfc_group_om_metrics DROP CONSTRAINT pk_cfc_group_om_metrics;
DROP TABLE toolkit.cfc_group_om_metrics;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: cfc_group_om_metrics; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE cfc_group_om_metrics (
    group_id integer NOT NULL,
    kpi character varying(100) NOT NULL,
    megachart_profile_id integer
);


--
-- Name: pk_cfc_group_om_metrics; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY cfc_group_om_metrics
    ADD CONSTRAINT pk_cfc_group_om_metrics PRIMARY KEY (group_id, kpi);


--
-- Name: fk_cfc_group_om_metrics_grp; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY cfc_group_om_metrics
    ADD CONSTRAINT fk_cfc_group_om_metrics_grp FOREIGN KEY (group_id) REFERENCES cfc_groups(group_id);


--
-- PostgreSQL database dump complete
--

