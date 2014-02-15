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

DROP INDEX toolkit.sam_market_bts_bsc_xref_u1;
DROP INDEX toolkit.sam_market_bts_bsc_xref_idx;
DROP TABLE toolkit.sam_market_bts_bsc_xref;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: sam_market_bts_bsc_xref; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE sam_market_bts_bsc_xref (
    market character varying(50),
    new_bts_id integer,
    new_bsc_name character varying(30)
);


--
-- Name: sam_market_bts_bsc_xref_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX sam_market_bts_bsc_xref_idx ON sam_market_bts_bsc_xref USING btree (market);


--
-- Name: sam_market_bts_bsc_xref_u1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX sam_market_bts_bsc_xref_u1 ON sam_market_bts_bsc_xref USING btree (market, new_bts_id, new_bsc_name);


--
-- PostgreSQL database dump complete
--

