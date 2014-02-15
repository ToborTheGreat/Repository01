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

DROP INDEX dw.element_class_ux;
ALTER TABLE ONLY dw.element_class DROP CONSTRAINT element_class_pk;
DROP TABLE dw.element_class;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: element_class; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE element_class (
    element_class_id integer DEFAULT nextval('element_class_seq'::regclass) NOT NULL,
    ext_ref character varying(100) NOT NULL,
    description character varying(100),
    created timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL
);


SET default_tablespace = p2_dwindex;

--
-- Name: element_class_pk; Type: CONSTRAINT; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

ALTER TABLE ONLY element_class
    ADD CONSTRAINT element_class_pk PRIMARY KEY (element_class_id);


--
-- Name: element_class_ux; Type: INDEX; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

CREATE UNIQUE INDEX element_class_ux ON element_class USING btree (description);


--
-- PostgreSQL database dump complete
--

