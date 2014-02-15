--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw_evdo, pg_catalog;

DROP TRIGGER dw_evdo_sam_evdo_bts_scc_index_params_fact_trigger_part ON dw_evdo.sam_evdo_bts_scc_index_params_fact;
DROP INDEX dw_evdo.sam_evdo_bts_scc_index_params_fact_cid;
ALTER TABLE ONLY dw_evdo.sam_evdo_bts_scc_index_params_fact DROP CONSTRAINT sam_evdo_bts_scc_index_params_pk;
DROP TABLE dw_evdo.sam_evdo_bts_scc_index_params_fact;
SET search_path = dw_evdo, pg_catalog;

SET default_tablespace = p2_dw_evdodata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_scc_index_params_fact; Type: TABLE; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdodata
--

CREATE TABLE sam_evdo_bts_scc_index_params_fact (
    day_dim_id integer NOT NULL,
    prev_sam_evdo_bts_scc_index_params_dim_id integer NOT NULL,
    curr_sam_evdo_bts_scc_index_params_dim_id integer,
    parameter_name character varying(70) NOT NULL,
    dw_columnname character varying(70) NOT NULL,
    parameter_datatype character varying(20) NOT NULL,
    prev_value_str character varying(100) NOT NULL,
    curr_value_str character varying(100) NOT NULL,
    prev_value_int integer,
    curr_value_int integer
);


SET default_tablespace = p2_stageindex;

--
-- Name: sam_evdo_bts_scc_index_params_pk; Type: CONSTRAINT; Schema: dw_evdo; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY sam_evdo_bts_scc_index_params_fact
    ADD CONSTRAINT sam_evdo_bts_scc_index_params_pk PRIMARY KEY (day_dim_id, prev_sam_evdo_bts_scc_index_params_dim_id, parameter_name);


SET default_tablespace = p2_dw_evdoindex;

--
-- Name: sam_evdo_bts_scc_index_params_fact_cid; Type: INDEX; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

CREATE INDEX sam_evdo_bts_scc_index_params_fact_cid ON sam_evdo_bts_scc_index_params_fact USING btree (curr_sam_evdo_bts_scc_index_params_dim_id);


--
-- Name: dw_evdo_sam_evdo_bts_scc_index_params_fact_trigger_part; Type: TRIGGER; Schema: dw_evdo; Owner: -
--

CREATE TRIGGER dw_evdo_sam_evdo_bts_scc_index_params_fact_trigger_part
    BEFORE INSERT ON sam_evdo_bts_scc_index_params_fact
    FOR EACH ROW
    EXECUTE PROCEDURE trg_sam_evdo_bts_scc_index_params_fact_part();


--
-- PostgreSQL database dump complete
--

