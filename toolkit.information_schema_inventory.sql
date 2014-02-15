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

ALTER TABLE ONLY toolkit.information_schema_inventory DROP CONSTRAINT information_schema_inventory_pk;
DROP TABLE toolkit.information_schema_inventory;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: information_schema_inventory; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE information_schema_inventory (
    table_name text NOT NULL,
    is_xref text NOT NULL,
    last_refresh date
);


--
-- Name: information_schema_inventory_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY information_schema_inventory
    ADD CONSTRAINT information_schema_inventory_pk PRIMARY KEY (table_name, is_xref);


--
-- PostgreSQL database dump complete
--

