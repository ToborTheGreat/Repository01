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

DROP INDEX toolkit.market_xref_ix1;
DROP TABLE toolkit.market_xref;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: market_xref; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE market_xref (
    ninetynine_market character varying(50) NOT NULL,
    market character varying(50) NOT NULL,
    gis_market_id integer NOT NULL,
    sync_with_sm_atp_enabled character varying(1) DEFAULT 'N'::character varying NOT NULL,
    legacy_evdo_market character varying(70) NOT NULL,
    lte_market_id integer,
    lte_lsm_name character varying(20),
    market_xref character varying(50) DEFAULT ''::character varying NOT NULL
);


--
-- Name: market_xref_ix1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX market_xref_ix1 ON market_xref USING btree (lte_market_id);


--
-- PostgreSQL database dump complete
--

