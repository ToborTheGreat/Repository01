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

DROP INDEX toolkit.cluster_except_idx;
ALTER TABLE ONLY toolkit.cluster_except DROP CONSTRAINT cluster_except_pkey;
DROP TABLE toolkit.cluster_except;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: cluster_except; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE cluster_except (
    market character varying(50) NOT NULL,
    cluster character varying(50) NOT NULL,
    cluster_group character varying(20) NOT NULL,
    cascade_id character varying(30) NOT NULL,
    sector integer NOT NULL,
    item_date date NOT NULL,
    exclude_type character varying(20) NOT NULL
);


--
-- Name: cluster_except_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY cluster_except
    ADD CONSTRAINT cluster_except_pkey PRIMARY KEY (market, cascade_id, cluster, cluster_group, sector, item_date);


--
-- Name: cluster_except_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX cluster_except_idx ON cluster_except USING btree (cascade_id, sector);


--
-- PostgreSQL database dump complete
--

