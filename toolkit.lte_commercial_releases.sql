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

DROP TRIGGER trg_iu_lte_commercial_releases ON toolkit.lte_commercial_releases;
DROP INDEX toolkit.lte_commercial_releases_idx2;
DROP INDEX toolkit.lte_commercial_releases_idx;
ALTER TABLE ONLY toolkit.lte_commercial_releases DROP CONSTRAINT pk_lte_commercial_releases;
DROP TABLE toolkit.lte_commercial_releases;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: lte_commercial_releases; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE lte_commercial_releases (
    market character varying(50) NOT NULL,
    cascade_id character varying(20) NOT NULL,
    migrate_date date NOT NULL,
    enodeb_id integer NOT NULL,
    enb_name_bbu_level character varying(100),
    lsm_r character varying(50),
    mme character varying(50),
    multiple_enbs_on_same_cascade boolean,
    user_id integer DEFAULT 999999 NOT NULL
);


--
-- Name: pk_lte_commercial_releases; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY lte_commercial_releases
    ADD CONSTRAINT pk_lte_commercial_releases PRIMARY KEY (market, cascade_id, enodeb_id);


--
-- Name: lte_commercial_releases_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX lte_commercial_releases_idx ON lte_commercial_releases USING btree (enodeb_id, migrate_date);


--
-- Name: lte_commercial_releases_idx2; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX lte_commercial_releases_idx2 ON lte_commercial_releases USING btree (migrate_date);


--
-- Name: trg_iu_lte_commercial_releases; Type: TRIGGER; Schema: toolkit; Owner: -
--

CREATE TRIGGER trg_iu_lte_commercial_releases
    BEFORE INSERT OR UPDATE ON lte_commercial_releases
    FOR EACH ROW
    EXECUTE PROCEDURE trg_iu_lte_commercial_releases();


--
-- PostgreSQL database dump complete
--

