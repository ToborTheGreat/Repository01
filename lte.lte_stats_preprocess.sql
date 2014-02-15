--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = lte, pg_catalog;

DROP TRIGGER lte_stats_preprocess_trigger_part ON lte.lte_stats_preprocess;
DROP INDEX lte.lte_stats_preprocess_ix1;
DROP TABLE lte.lte_stats_preprocess;
SET search_path = lte, pg_catalog;

SET default_tablespace = p2_ltedata;

SET default_with_oids = false;

--
-- Name: lte_stats_preprocess; Type: TABLE; Schema: lte; Owner: -; Tablespace: p2_ltedata
--

CREATE TABLE lte_stats_preprocess (
    item_date date NOT NULL,
    lsm_name character varying(30) NOT NULL,
    enodeb_id integer NOT NULL,
    hour integer NOT NULL,
    slice_count integer NOT NULL
);
ALTER TABLE ONLY lte_stats_preprocess ALTER COLUMN enodeb_id SET STATISTICS 1000;


SET default_tablespace = p2_lteindex;

--
-- Name: lte_stats_preprocess_ix1; Type: INDEX; Schema: lte; Owner: -; Tablespace: p2_lteindex
--

CREATE INDEX lte_stats_preprocess_ix1 ON lte_stats_preprocess USING btree (item_date, lsm_name);


--
-- Name: lte_stats_preprocess_trigger_part; Type: TRIGGER; Schema: lte; Owner: -
--

CREATE TRIGGER lte_stats_preprocess_trigger_part
    BEFORE INSERT ON lte_stats_preprocess
    FOR EACH ROW
    EXECUTE PROCEDURE trg_lte_stats_preprocess_part();


--
-- PostgreSQL database dump complete
--

