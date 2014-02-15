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

ALTER TABLE ONLY toolkit.cfc_group_megachart_profile_xref DROP CONSTRAINT fk_cfc_group_megachart_profile_xref_prf;
ALTER TABLE ONLY toolkit.cfc_group_megachart_profile_xref DROP CONSTRAINT fk_cfc_group_megachart_profile_xref_grp;
ALTER TABLE ONLY toolkit.cfc_group_megachart_profile_xref DROP CONSTRAINT pk_cfc_group_megachart_profile_xref;
DROP TABLE toolkit.cfc_group_megachart_profile_xref;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: cfc_group_megachart_profile_xref; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE cfc_group_megachart_profile_xref (
    group_id integer NOT NULL,
    profile_id integer NOT NULL
);


--
-- Name: pk_cfc_group_megachart_profile_xref; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY cfc_group_megachart_profile_xref
    ADD CONSTRAINT pk_cfc_group_megachart_profile_xref PRIMARY KEY (group_id, profile_id);


--
-- Name: fk_cfc_group_megachart_profile_xref_grp; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY cfc_group_megachart_profile_xref
    ADD CONSTRAINT fk_cfc_group_megachart_profile_xref_grp FOREIGN KEY (group_id) REFERENCES cfc_groups(group_id);


--
-- Name: fk_cfc_group_megachart_profile_xref_prf; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY cfc_group_megachart_profile_xref
    ADD CONSTRAINT fk_cfc_group_megachart_profile_xref_prf FOREIGN KEY (profile_id) REFERENCES megachart_profile_xref(profile_id);


--
-- PostgreSQL database dump complete
--

