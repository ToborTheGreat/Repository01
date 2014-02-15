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

DROP INDEX toolkit.index_market_acceptance_criteria_id;
ALTER TABLE ONLY toolkit.market_acceptance_criteria DROP CONSTRAINT u_market_acceptance_criteria_market_id;
ALTER TABLE ONLY toolkit.market_acceptance_criteria DROP CONSTRAINT p_market_acceptance_criteria;
DROP TABLE toolkit.market_acceptance_criteria;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: market_acceptance_criteria; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE market_acceptance_criteria (
    id integer NOT NULL,
    market_id integer,
    legacy_pre_date date,
    legacy_post_date date,
    nv_pre_date date,
    nv_post_date date
);


--
-- Name: p_market_acceptance_criteria; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY market_acceptance_criteria
    ADD CONSTRAINT p_market_acceptance_criteria PRIMARY KEY (id);


--
-- Name: u_market_acceptance_criteria_market_id; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY market_acceptance_criteria
    ADD CONSTRAINT u_market_acceptance_criteria_market_id UNIQUE (market_id);


--
-- Name: index_market_acceptance_criteria_id; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX index_market_acceptance_criteria_id ON market_acceptance_criteria USING btree (id);


--
-- PostgreSQL database dump complete
--

