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

ALTER TABLE ONLY toolkit.cfc_group_metrics DROP CONSTRAINT fk_cfc_groups_mtr;
ALTER TABLE ONLY toolkit.cfc_group_metrics DROP CONSTRAINT fk_cfc_groups_grp;
ALTER TABLE ONLY toolkit.cfc_group_metrics DROP CONSTRAINT pk_cfc_group_metrics;
DROP TABLE toolkit.cfc_group_metrics;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: cfc_group_metrics; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE cfc_group_metrics (
    group_id integer NOT NULL,
    metric_id integer NOT NULL,
    metric_type character varying(3) NOT NULL,
    megachart_profile_id integer DEFAULT (-9999) NOT NULL
);


--
-- Name: pk_cfc_group_metrics; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY cfc_group_metrics
    ADD CONSTRAINT pk_cfc_group_metrics PRIMARY KEY (group_id, metric_id, metric_type);


--
-- Name: fk_cfc_groups_grp; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY cfc_group_metrics
    ADD CONSTRAINT fk_cfc_groups_grp FOREIGN KEY (group_id) REFERENCES cfc_groups(group_id);


--
-- Name: fk_cfc_groups_mtr; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY cfc_group_metrics
    ADD CONSTRAINT fk_cfc_groups_mtr FOREIGN KEY (metric_id, metric_type) REFERENCES om_catalog(metric_id, metric_type);


--
-- PostgreSQL database dump complete
--

