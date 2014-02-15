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

DROP INDEX toolkit.clusters_idx3;
DROP INDEX toolkit.clusters_idx2;
DROP INDEX toolkit.clusters_idx1;
DROP INDEX toolkit.clusters_idx;
DROP TABLE toolkit.clusters;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: clusters; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE clusters (
    market character varying(50) NOT NULL,
    cascade_id character varying(30) NOT NULL,
    cluster character varying(50) NOT NULL,
    cluster_group character varying(20) NOT NULL,
    modified_by character varying(100)
);


--
-- Name: clusters_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX clusters_idx ON clusters USING btree (market, cluster);


--
-- Name: clusters_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX clusters_idx1 ON clusters USING btree (cascade_id);


--
-- Name: clusters_idx2; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX clusters_idx2 ON clusters USING btree (cluster_group);


--
-- Name: clusters_idx3; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX clusters_idx3 ON clusters USING btree (cluster);


--
-- PostgreSQL database dump complete
--

