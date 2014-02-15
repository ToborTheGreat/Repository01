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

DROP INDEX toolkit.megachart_profile_xref_idx;
ALTER TABLE ONLY toolkit.megachart_profile_xref DROP CONSTRAINT pk_megachart_profile_xref;
DROP TABLE toolkit.megachart_profile_xref;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: megachart_profile_xref; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE megachart_profile_xref (
    profile_id integer NOT NULL,
    tech character varying(10) NOT NULL,
    band_option character varying(15) NOT NULL,
    agg_option character varying(10) NOT NULL,
    nv_legacy character varying(10) NOT NULL,
    om_cfc character varying(10) NOT NULL,
    level character varying(15) NOT NULL,
    enabled character(1) DEFAULT 'Y'::bpchar NOT NULL,
    sort_order smallint
);


--
-- Name: pk_megachart_profile_xref; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY megachart_profile_xref
    ADD CONSTRAINT pk_megachart_profile_xref PRIMARY KEY (profile_id);


--
-- Name: megachart_profile_xref_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX megachart_profile_xref_idx ON megachart_profile_xref USING btree (level, om_cfc, nv_legacy, agg_option, band_option, tech);


--
-- PostgreSQL database dump complete
--

