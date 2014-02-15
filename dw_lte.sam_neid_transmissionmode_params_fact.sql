--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw_lte, pg_catalog;

DROP INDEX dw_lte.sam_neid_transmissionmode_params_fact_day_ix;
DROP TABLE dw_lte.sam_neid_transmissionmode_params_fact;
SET search_path = dw_lte, pg_catalog;

SET default_tablespace = p2_dw_ltedata;

SET default_with_oids = false;

--
-- Name: sam_neid_transmissionmode_params_fact; Type: TABLE; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE TABLE sam_neid_transmissionmode_params_fact (
    day_dim_id integer NOT NULL,
    prev_sam_neid_transmissionmode_params_dim_id integer,
    curr_sam_neid_transmissionmode_params_dim_id integer,
    parameter_name character varying(70) NOT NULL,
    dw_columnname character varying(70) NOT NULL,
    parameter_datatype character varying(20) NOT NULL,
    prev_value_str character varying(100) NOT NULL,
    curr_value_str character varying(100) NOT NULL,
    prev_value_int integer,
    curr_value_int integer
);


SET default_tablespace = p2_dw_lteindex;

--
-- Name: sam_neid_transmissionmode_params_fact_day_ix; Type: INDEX; Schema: dw_lte; Owner: -; Tablespace: p2_dw_lteindex
--

CREATE INDEX sam_neid_transmissionmode_params_fact_day_ix ON sam_neid_transmissionmode_params_fact USING btree (day_dim_id);


--
-- PostgreSQL database dump complete
--

