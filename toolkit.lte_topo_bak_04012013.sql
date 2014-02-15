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

DROP TABLE toolkit.lte_topo_bak_04012013;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: lte_topo_bak_04012013; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE lte_topo_bak_04012013 (
    cascade_id character varying(20),
    enodeb_id integer,
    mcc integer,
    mnc integer,
    sector integer,
    cell_id integer,
    market_id integer,
    pci integer,
    sss integer,
    pss integer,
    rach integer,
    row_checksum character varying(100),
    dl_center_freq real,
    ul_center_freq real,
    bandwidth integer
);


--
-- PostgreSQL database dump complete
--

