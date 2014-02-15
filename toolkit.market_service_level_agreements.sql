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

ALTER TABLE ONLY toolkit.market_service_level_agreements DROP CONSTRAINT market_service_level_agreements_pk;
DROP TABLE toolkit.market_service_level_agreements;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: market_service_level_agreements; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE market_service_level_agreements (
    market character varying NOT NULL,
    evdo_avg_req_drc_rate real,
    evdo_avg_fwd_phy_sect_tput real,
    evdo_avg_rev_phy_sect_tput real,
    evdo_dropped_conn_pct real,
    evdo_total_blks_pct real,
    voice_total_blks_pct real,
    voice_drops_pct real
);


--
-- Name: market_service_level_agreements_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY market_service_level_agreements
    ADD CONSTRAINT market_service_level_agreements_pk PRIMARY KEY (market);


--
-- PostgreSQL database dump complete
--

