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

ALTER TABLE ONLY dw_lte.sam_neid_cellnum_purpose_activestate_parm_aud_agg DROP CONSTRAINT sam_neid_cellnum_purpose_activestate_parm_aud_agg_pk;
DROP TABLE dw_lte.sam_neid_cellnum_purpose_activestate_parm_aud_agg;
SET search_path = dw_lte, pg_catalog;

SET default_tablespace = p2_dw_ltedata;

SET default_with_oids = false;

--
-- Name: sam_neid_cellnum_purpose_activestate_parm_aud_agg; Type: TABLE; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

CREATE TABLE sam_neid_cellnum_purpose_activestate_parm_aud_agg (
    day_dim_id integer NOT NULL,
    lsm_name character varying NOT NULL,
    neid character varying NOT NULL,
    cellnum character varying NOT NULL,
    purpose character varying NOT NULL,
    activestate character varying NOT NULL,
    priority character varying(20) DEFAULT 'none'::character varying NOT NULL,
    total_audited_count integer NOT NULL,
    total_failed_count integer NOT NULL
);


--
-- Name: sam_neid_cellnum_purpose_activestate_parm_aud_agg_pk; Type: CONSTRAINT; Schema: dw_lte; Owner: -; Tablespace: p2_dw_ltedata
--

ALTER TABLE ONLY sam_neid_cellnum_purpose_activestate_parm_aud_agg
    ADD CONSTRAINT sam_neid_cellnum_purpose_activestate_parm_aud_agg_pk PRIMARY KEY (day_dim_id, lsm_name, neid, cellnum, purpose, activestate, priority);


--
-- PostgreSQL database dump complete
--

