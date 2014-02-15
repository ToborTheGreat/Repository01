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

ALTER TABLE ONLY dw.parameter_catalog DROP CONSTRAINT parameter_catalog_vnd;
ALTER TABLE ONLY dw.parameter_catalog DROP CONSTRAINT parameter_catalog_parameter_catalog_priority_id_fk;
ALTER TABLE ONLY dw.parameter_catalog DROP CONSTRAINT parameter_catalog_ele;
ALTER TABLE ONLY dw.parameter_catalog DROP CONSTRAINT fk_parameter_catalog_grp;
DROP INDEX dw.parameter_catalog_ux;
DROP INDEX dw.parameter_catalog_ix4;
DROP INDEX dw.parameter_catalog_ix3;
DROP INDEX dw.parameter_catalog_ix2;
DROP INDEX dw.parameter_catalog_ix1;
ALTER TABLE ONLY dw.parameter_catalog DROP CONSTRAINT parameter_catalog_pkey;
DROP TABLE dw.parameter_catalog;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: parameter_catalog; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE parameter_catalog (
    parameter_catalog_id integer DEFAULT nextval('parameter_catalog_seq'::regclass) NOT NULL,
    technology character varying(50) NOT NULL,
    infrastructure_vendor_id integer NOT NULL,
    parameter_name character varying(100) NOT NULL,
    ext_ref character varying(100) NOT NULL,
    vendor_desc character varying(4000),
    vendor_rec_value character varying(100),
    dw_schemaname character varying(100) NOT NULL,
    dw_tablename character varying(100) NOT NULL,
    dw_columnname character varying(100) NOT NULL,
    created timestamp(0) without time zone,
    modified timestamp(0) without time zone,
    element_class_id integer NOT NULL,
    parameter_catalog_group_id integer NOT NULL,
    parameter_catalog_priority_id integer DEFAULT 0 NOT NULL
);


SET default_tablespace = p2_dwindex;

--
-- Name: parameter_catalog_pkey; Type: CONSTRAINT; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

ALTER TABLE ONLY parameter_catalog
    ADD CONSTRAINT parameter_catalog_pkey PRIMARY KEY (parameter_catalog_id);


--
-- Name: parameter_catalog_ix1; Type: INDEX; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

CREATE INDEX parameter_catalog_ix1 ON parameter_catalog USING btree (parameter_catalog_group_id);


--
-- Name: parameter_catalog_ix2; Type: INDEX; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

CREATE INDEX parameter_catalog_ix2 ON parameter_catalog USING btree (element_class_id);


--
-- Name: parameter_catalog_ix3; Type: INDEX; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

CREATE INDEX parameter_catalog_ix3 ON parameter_catalog USING btree (parameter_catalog_priority_id);


--
-- Name: parameter_catalog_ix4; Type: INDEX; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

CREATE INDEX parameter_catalog_ix4 ON parameter_catalog USING btree (infrastructure_vendor_id);


--
-- Name: parameter_catalog_ux; Type: INDEX; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

CREATE UNIQUE INDEX parameter_catalog_ux ON parameter_catalog USING btree (dw_schemaname, dw_tablename, dw_columnname, element_class_id);


--
-- Name: fk_parameter_catalog_grp; Type: FK CONSTRAINT; Schema: dw; Owner: -
--

ALTER TABLE ONLY parameter_catalog
    ADD CONSTRAINT fk_parameter_catalog_grp FOREIGN KEY (parameter_catalog_group_id) REFERENCES parameter_catalog_groups(parameter_catalog_group_id);


--
-- Name: parameter_catalog_ele; Type: FK CONSTRAINT; Schema: dw; Owner: -
--

ALTER TABLE ONLY parameter_catalog
    ADD CONSTRAINT parameter_catalog_ele FOREIGN KEY (element_class_id) REFERENCES element_class(element_class_id);


--
-- Name: parameter_catalog_parameter_catalog_priority_id_fk; Type: FK CONSTRAINT; Schema: dw; Owner: -
--

ALTER TABLE ONLY parameter_catalog
    ADD CONSTRAINT parameter_catalog_parameter_catalog_priority_id_fk FOREIGN KEY (parameter_catalog_priority_id) REFERENCES toolkit.parameter_catalog_priorities(parameter_catalog_priority_id);


--
-- Name: parameter_catalog_vnd; Type: FK CONSTRAINT; Schema: dw; Owner: -
--

ALTER TABLE ONLY parameter_catalog
    ADD CONSTRAINT parameter_catalog_vnd FOREIGN KEY (infrastructure_vendor_id) REFERENCES infrastructure_vendors(infrastructure_vendor_id);


--
-- PostgreSQL database dump complete
--

