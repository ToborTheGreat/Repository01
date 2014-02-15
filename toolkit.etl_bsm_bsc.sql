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

DROP INDEX toolkit.etl_bsm_bsc_idx3;
DROP INDEX toolkit.etl_bsm_bsc_idx1;
DROP INDEX toolkit.etl_bsm_bsc_idx;
ALTER TABLE ONLY toolkit.etl_bsm_bsc DROP CONSTRAINT etl_bsm_bsc_pkey;
DROP TABLE toolkit.etl_bsm_bsc;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: etl_bsm_bsc; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE etl_bsm_bsc (
    market character varying(50) NOT NULL,
    bsm_name character varying(30) NOT NULL,
    bsc_name character varying(20) NOT NULL,
    ip_address character varying(20),
    login character varying(30),
    pwd character varying(30),
    enabled character(1),
    nid integer,
    ext_ref character varying(30),
    sid integer
);


--
-- Name: etl_bsm_bsc_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY etl_bsm_bsc
    ADD CONSTRAINT etl_bsm_bsc_pkey PRIMARY KEY (bsm_name, bsc_name);


--
-- Name: etl_bsm_bsc_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX etl_bsm_bsc_idx ON etl_bsm_bsc USING btree (bsc_name);


--
-- Name: etl_bsm_bsc_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX etl_bsm_bsc_idx1 ON etl_bsm_bsc USING btree (nid, bsc_name);


--
-- Name: etl_bsm_bsc_idx3; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX etl_bsm_bsc_idx3 ON etl_bsm_bsc USING btree (market);


--
-- PostgreSQL database dump complete
--

