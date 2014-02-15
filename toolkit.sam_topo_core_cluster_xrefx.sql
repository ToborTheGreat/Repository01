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

DROP INDEX toolkit.sam_topo_core_cluster_xrefx_u1;
DROP TABLE toolkit.sam_topo_core_cluster_xrefx;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: sam_topo_core_cluster_xrefx; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE sam_topo_core_cluster_xrefx (
    new_bsc_name character varying(30),
    market character varying(50)
);


--
-- Name: sam_topo_core_cluster_xrefx_u1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX sam_topo_core_cluster_xrefx_u1 ON sam_topo_core_cluster_xrefx USING btree (new_bsc_name, market);


--
-- PostgreSQL database dump complete
--

