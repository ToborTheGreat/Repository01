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

ALTER TABLE ONLY dw_lte.sam_neid_cellnum_barringstatus_parm_aud_ff DROP CONSTRAINT sam_neid_cellnum_barringstatus_parm_aud_ff_pk;
DROP TABLE dw_lte.sam_neid_cellnum_barringstatus_parm_aud_ff;
SET search_path = dw_lte, pg_catalog;

SET default_tablespace = p2_dw_ltedata;

SET default_with_oids = false;

--
-- Name: sam_neid_cellnum_barringstatus_parm_aud_ff; Type: TABLE; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE TABLE sam_neid_cellnum_barringstatus_parm_aud_ff (
    day_dim_id integer NOT NULL,
    sam_neid_cellnum_barringstatus_params_dim_id integer NOT NULL,
    parameter_catalog_dim_id integer NOT NULL
);


SET default_tablespace = p2_dw_lteindex;

--
-- Name: sam_neid_cellnum_barringstatus_parm_aud_ff_pk; Type: CONSTRAINT; Schema: dw_lte; Owner: -; Tablespace: p2_dw_lteindex
--

ALTER TABLE ONLY sam_neid_cellnum_barringstatus_parm_aud_ff
    ADD CONSTRAINT sam_neid_cellnum_barringstatus_parm_aud_ff_pk PRIMARY KEY (day_dim_id, sam_neid_cellnum_barringstatus_params_dim_id, parameter_catalog_dim_id);


--
-- PostgreSQL database dump complete
--

