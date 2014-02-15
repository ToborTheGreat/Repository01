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

DROP INDEX toolkit.sam_topo_staging_e911_idx1;
DROP TABLE toolkit.sam_topo_staging_e911;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: sam_topo_staging_e911; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE sam_topo_staging_e911 (
    cascade_id character varying(30) NOT NULL,
    sector integer NOT NULL,
    channel integer NOT NULL,
    lat double precision,
    lng double precision,
    pn_offset integer
);


--
-- Name: sam_topo_staging_e911_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sam_topo_staging_e911_idx1 ON sam_topo_staging_e911 USING btree (cascade_id);


--
-- PostgreSQL database dump complete
--

