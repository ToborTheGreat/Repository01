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

ALTER TABLE ONLY dw.element_class_key_columns DROP CONSTRAINT element_class_key_columns_pk;
DROP TABLE dw.element_class_key_columns;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: element_class_key_columns; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE element_class_key_columns (
    element_class_id integer NOT NULL,
    ordinal_position integer NOT NULL,
    column_name character varying(100)
);


SET default_tablespace = p2_dwindex;

--
-- Name: element_class_key_columns_pk; Type: CONSTRAINT; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

ALTER TABLE ONLY element_class_key_columns
    ADD CONSTRAINT element_class_key_columns_pk PRIMARY KEY (element_class_id, ordinal_position);


--
-- PostgreSQL database dump complete
--

