--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw, pg_catalog;

ALTER TABLE ONLY dw.parameter_catalog_group_assignment DROP CONSTRAINT parameter_catalog_group_assignment_grp;
ALTER TABLE ONLY dw.parameter_catalog_group_assignment DROP CONSTRAINT parameter_catalog_group_assignment_cat;
ALTER TABLE ONLY dw.parameter_catalog_group_assignment DROP CONSTRAINT parameter_catalog_group_assignment_pk;
DROP TABLE dw.parameter_catalog_group_assignment;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: parameter_catalog_group_assignment; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE parameter_catalog_group_assignment (
    parameter_catalog_id integer NOT NULL,
    parameter_catalog_group_id integer NOT NULL,
    created_by character varying(100) NOT NULL,
    modified_by character varying(100) NOT NULL,
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL
);


SET default_tablespace = p2_dwindex;

--
-- Name: parameter_catalog_group_assignment_pk; Type: CONSTRAINT; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

ALTER TABLE ONLY parameter_catalog_group_assignment
    ADD CONSTRAINT parameter_catalog_group_assignment_pk PRIMARY KEY (parameter_catalog_id, parameter_catalog_group_id);


--
-- Name: parameter_catalog_group_assignment_cat; Type: FK CONSTRAINT; Schema: dw; Owner: -
--

ALTER TABLE ONLY parameter_catalog_group_assignment
    ADD CONSTRAINT parameter_catalog_group_assignment_cat FOREIGN KEY (parameter_catalog_id) REFERENCES parameter_catalog(parameter_catalog_id);


--
-- Name: parameter_catalog_group_assignment_grp; Type: FK CONSTRAINT; Schema: dw; Owner: -
--

ALTER TABLE ONLY parameter_catalog_group_assignment
    ADD CONSTRAINT parameter_catalog_group_assignment_grp FOREIGN KEY (parameter_catalog_group_id) REFERENCES parameter_catalog_groups(parameter_catalog_group_id);


--
-- PostgreSQL database dump complete
--

