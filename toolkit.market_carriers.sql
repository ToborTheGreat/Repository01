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

DROP INDEX toolkit.market_carriers_idx;
ALTER TABLE ONLY toolkit.market_carriers DROP CONSTRAINT market_carriers_pk;
DROP TABLE toolkit.market_carriers;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: market_carriers; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE market_carriers (
    market character varying(50) NOT NULL,
    carrier integer NOT NULL,
    carrier_position integer
);


--
-- Name: market_carriers_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY market_carriers
    ADD CONSTRAINT market_carriers_pk PRIMARY KEY (market, carrier);


--
-- Name: market_carriers_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX market_carriers_idx ON market_carriers USING btree (market, carrier, carrier_position);


--
-- PostgreSQL database dump complete
--

