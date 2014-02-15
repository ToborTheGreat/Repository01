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

DROP TRIGGER trg_iu_cutover_tracker ON toolkit.cutover_tracker;
DROP INDEX toolkit.cutover_tracker_idx;
ALTER TABLE ONLY toolkit.cutover_tracker DROP CONSTRAINT cutover_tracker_pkey;
DROP TABLE toolkit.cutover_tracker;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: cutover_tracker; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE cutover_tracker (
    cascade_id character varying(20) NOT NULL,
    item_date date NOT NULL,
    user_id integer DEFAULT 999999 NOT NULL
);


--
-- Name: cutover_tracker_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY cutover_tracker
    ADD CONSTRAINT cutover_tracker_pkey PRIMARY KEY (cascade_id);


--
-- Name: cutover_tracker_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX cutover_tracker_idx ON cutover_tracker USING btree (item_date);


--
-- Name: trg_iu_cutover_tracker; Type: TRIGGER; Schema: toolkit; Owner: -
--

CREATE TRIGGER trg_iu_cutover_tracker
    BEFORE INSERT OR UPDATE ON cutover_tracker
    FOR EACH ROW
    EXECUTE PROCEDURE trg_iu_cutover_tracker();


--
-- PostgreSQL database dump complete
--

