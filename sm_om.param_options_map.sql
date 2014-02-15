--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = sm_om, pg_catalog;

ALTER TABLE ONLY sm_om.param_options_map DROP CONSTRAINT param_options_map_om_map_catalog_id_fkey;
DROP INDEX sm_om.param_options_map_idx;
ALTER TABLE ONLY sm_om.param_options_map DROP CONSTRAINT param_options_map_pkey;
DROP TABLE sm_om.param_options_map;
SET search_path = sm_om, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: param_options_map; Type: TABLE; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE param_options_map (
    om_map_catalog_id integer NOT NULL,
    param_id integer NOT NULL,
    is_required boolean,
    is_showall_reqd boolean,
    parent_param_id integer
);


--
-- Name: param_options_map_pkey; Type: CONSTRAINT; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY param_options_map
    ADD CONSTRAINT param_options_map_pkey PRIMARY KEY (om_map_catalog_id, param_id);


--
-- Name: param_options_map_idx; Type: INDEX; Schema: sm_om; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX param_options_map_idx ON param_options_map USING btree (param_id, om_map_catalog_id);


--
-- Name: param_options_map_om_map_catalog_id_fkey; Type: FK CONSTRAINT; Schema: sm_om; Owner: -
--

ALTER TABLE ONLY param_options_map
    ADD CONSTRAINT param_options_map_om_map_catalog_id_fkey FOREIGN KEY (om_map_catalog_id) REFERENCES om_map_catalog(om_map_catalog_id);


--
-- PostgreSQL database dump complete
--

