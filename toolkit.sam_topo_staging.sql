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

DROP INDEX toolkit.sam_topo_staging_idx1;
DROP TABLE toolkit.sam_topo_staging;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: sam_topo_staging; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE sam_topo_staging (
    cascade_id character varying(30) NOT NULL,
    new_switch_name character varying(100),
    new_bsc_name character varying(30) NOT NULL,
    new_rnc_name character varying(50),
    new_bts_id integer NOT NULL,
    sector integer NOT NULL,
    carrier integer NOT NULL,
    band integer NOT NULL,
    market character varying(50) NOT NULL,
    lat double precision,
    lng double precision,
    azimuth integer NOT NULL,
    agl integer,
    pn_offset integer,
    sector_alias integer NOT NULL,
    row_checksum character varying(1000)
);


--
-- Name: sam_topo_staging_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sam_topo_staging_idx1 ON sam_topo_staging USING btree (cascade_id);


--
-- PostgreSQL database dump complete
--

