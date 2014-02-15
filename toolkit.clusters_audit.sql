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

DROP INDEX toolkit.clusters_audit_idx2;
DROP INDEX toolkit.clusters_audit_idx1;
DROP INDEX toolkit.clusters_audit_idx;
DROP TABLE toolkit.clusters_audit;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: clusters_audit; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE clusters_audit (
    market character varying(50) NOT NULL,
    cascade_id character varying(30) NOT NULL,
    cluster character varying(50) NOT NULL,
    cluster_group character varying(20) NOT NULL,
    last_updated timestamp without time zone,
    trans_type character varying(10),
    modified_by character varying(100)
);


--
-- Name: clusters_audit_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX clusters_audit_idx ON clusters_audit USING btree (market, cluster);


--
-- Name: clusters_audit_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX clusters_audit_idx1 ON clusters_audit USING btree (cascade_id);


--
-- Name: clusters_audit_idx2; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX clusters_audit_idx2 ON clusters_audit USING btree (cluster_group);


--
-- PostgreSQL database dump complete
--

