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

DROP INDEX toolkit.legacy_topo_staging_e911_idx;
DROP TABLE toolkit.legacy_topo_staging_e911;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: legacy_topo_staging_e911; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE legacy_topo_staging_e911 (
    cascade_id character varying(20),
    sector integer,
    fcc_channel integer,
    pn_offset integer
);


--
-- Name: legacy_topo_staging_e911_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX legacy_topo_staging_e911_idx ON legacy_topo_staging_e911 USING btree (cascade_id);


--
-- PostgreSQL database dump complete
--

