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

DROP TRIGGER trg_lte_topo_ins_upd ON toolkit.lte_topo;
DROP INDEX toolkit.lte_topo_idx4;
DROP INDEX toolkit.lte_topo_idx3;
DROP INDEX toolkit.lte_topo_idx2;
DROP INDEX toolkit.lte_topo_idx1;
DROP INDEX toolkit.lte_topo_idx;
ALTER TABLE ONLY toolkit.lte_topo DROP CONSTRAINT lte_topo_pk;
DROP TABLE toolkit.lte_topo;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: lte_topo; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE lte_topo (
    cascade_id character varying(20) NOT NULL,
    enodeb_id integer NOT NULL,
    mcc integer NOT NULL,
    mnc integer NOT NULL,
    sector integer NOT NULL,
    cell_id integer NOT NULL,
    market_id integer NOT NULL,
    pci integer NOT NULL,
    sss integer NOT NULL,
    pss integer NOT NULL,
    rach integer NOT NULL,
    row_checksum character varying(100),
    dl_center_freq real,
    ul_center_freq real,
    bandwidth integer
);


SET default_tablespace = '';

--
-- Name: lte_topo_pk; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: 
--

ALTER TABLE ONLY lte_topo
    ADD CONSTRAINT lte_topo_pk PRIMARY KEY (cascade_id, enodeb_id, sector, cell_id);


SET default_tablespace = p2_toolkitdata;

--
-- Name: lte_topo_idx; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX lte_topo_idx ON lte_topo USING btree (cascade_id);


--
-- Name: lte_topo_idx1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX lte_topo_idx1 ON lte_topo USING btree (market_id);


--
-- Name: lte_topo_idx2; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX lte_topo_idx2 ON lte_topo USING btree (enodeb_id);


--
-- Name: lte_topo_idx3; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX lte_topo_idx3 ON lte_topo USING btree (cascade_id, enodeb_id);


--
-- Name: lte_topo_idx4; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX lte_topo_idx4 ON lte_topo USING btree (enodeb_id, cascade_id);


--
-- Name: trg_lte_topo_ins_upd; Type: TRIGGER; Schema: toolkit; Owner: -
--

CREATE TRIGGER trg_lte_topo_ins_upd
    BEFORE INSERT OR UPDATE ON lte_topo
    FOR EACH ROW
    EXECUTE PROCEDURE trg_lte_topo_crud();


--
-- PostgreSQL database dump complete
--

