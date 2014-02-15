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

DROP INDEX toolkit.lte_topo_staging_idx;
DROP TABLE toolkit.lte_topo_staging;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: lte_topo_staging; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE lte_topo_staging (
    cascade_id character varying(20) NOT NULL,
    enodebid integer NOT NULL,
    mcc integer NOT NULL,
    mnc integer NOT NULL,
    sector integer NOT NULL,
    cell_id integer NOT NULL,
    market_id integer NOT NULL,
    pci integer NOT NULL,
    sss integer NOT NULL,
    pss integer NOT NULL,
    rach integer NOT NULL,
    row_checksum character varying(100),
    dl_center_freq real,
    ul_center_freq real,
    bandwidth integer
);


--
-- Name: lte_topo_staging_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX lte_topo_staging_idx ON lte_topo_staging USING btree (cascade_id);


--
-- PostgreSQL database dump complete
--

