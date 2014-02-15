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

DROP INDEX toolkit.sam_topo_core_cluster_xref_u1;
DROP INDEX toolkit.sam_topo_core_cluster_xref_idx;
DROP TABLE toolkit.sam_topo_core_cluster_xref;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: sam_topo_core_cluster_xref; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE sam_topo_core_cluster_xref (
    new_bsc_name character varying(30),
    new_bts_id integer,
    cascade_id character varying(30),
    market character varying(50),
    cluster character varying(50),
    cluster_group character varying(20)
);


--
-- Name: sam_topo_core_cluster_xref_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sam_topo_core_cluster_xref_idx ON sam_topo_core_cluster_xref USING btree (market);


--
-- Name: sam_topo_core_cluster_xref_u1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX sam_topo_core_cluster_xref_u1 ON sam_topo_core_cluster_xref USING btree (market, new_bsc_name, new_bts_id, cascade_id, cluster, cluster_group);


--
-- PostgreSQL database dump complete
--

