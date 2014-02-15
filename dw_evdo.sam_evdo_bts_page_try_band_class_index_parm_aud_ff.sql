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

DROP TRIGGER dw_evdo_sam_evdo_bts_page_try_band_class_index_parm_aud_ff_trig ON dw_evdo.sam_evdo_bts_page_try_band_class_index_parm_aud_ff;
ALTER TABLE ONLY dw_evdo.sam_evdo_bts_page_try_band_class_index_parm_aud_ff DROP CONSTRAINT sam_evdo_bts_page_try_band_class_index_parm_aud_ff_pk;
DROP TABLE dw_evdo.sam_evdo_bts_page_try_band_class_index_parm_aud_ff;
SET search_path = dw_evdo, pg_catalog;

SET default_tablespace = p2_dw_evdodata;

SET default_with_oids = false;

--
-- Name: sam_evdo_bts_page_try_band_class_index_parm_aud_ff; Type: TABLE; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdodata
--

CREATE TABLE sam_evdo_bts_page_try_band_class_index_parm_aud_ff (
    day_dim_id integer NOT NULL,
    sam_evdo_bts_page_try_band_class_index_params_dim_id integer NOT NULL,
    parameter_catalog_dim_id integer NOT NULL
);


SET default_tablespace = p2_dw_evdoindex;

--
-- Name: sam_evdo_bts_page_try_band_class_index_parm_aud_ff_pk; Type: CONSTRAINT; Schema: dw_evdo; Owner: -; Tablespace: p2_dw_evdoindex
--

ALTER TABLE ONLY sam_evdo_bts_page_try_band_class_index_parm_aud_ff
    ADD CONSTRAINT sam_evdo_bts_page_try_band_class_index_parm_aud_ff_pk PRIMARY KEY (day_dim_id, sam_evdo_bts_page_try_band_class_index_params_dim_id, parameter_catalog_dim_id);


--
-- Name: dw_evdo_sam_evdo_bts_page_try_band_class_index_parm_aud_ff_trig; Type: TRIGGER; Schema: dw_evdo; Owner: -
--

CREATE TRIGGER dw_evdo_sam_evdo_bts_page_try_band_class_index_parm_aud_ff_trig
    BEFORE INSERT ON sam_evdo_bts_page_try_band_class_index_parm_aud_ff
    FOR EACH ROW
    EXECUTE PROCEDURE trg_sam_evdo_bts_page_try_band_class_index_parm_aud_ff_part();


--
-- PostgreSQL database dump complete
--

