--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

DROP TABLE public.temp_y;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: temp_y; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE temp_y (
    lsm_name character varying,
    neid integer,
    cellnum integer,
    faindex integer,
    effective_begin date,
    effective_end date,
    md5 text,
    eutra_fa_prior_status integer,
    eutra_fa_prior_earfcnul integer,
    eutra_fa_prior_earfcndl integer,
    eutra_fa_prior_priority integer,
    eutra_fa_prior_qrxlevmin integer,
    eutra_fa_prior_pmaxusage integer,
    eutra_fa_prior_pmax integer,
    eutra_fa_prior_treselection integer,
    eutra_fa_prior_sfusage integer,
    eutra_fa_prior_treselectionsfmedium integer,
    eutra_fa_prior_treselectionsfhigh integer,
    eutra_fa_prior_sintrasearchusage integer,
    eutra_fa_prior_sintrasearch integer,
    eutra_fa_prior_snonintrasearchusage integer,
    eutra_fa_prior_snonintrasearch integer,
    eutra_fa_prior_threshservinglow integer,
    eutra_fa_prior_threshxhigh integer,
    eutra_fa_prior_threshxlow integer,
    eutra_fa_prior_mesabandwidthusage integer,
    eutra_fa_prior_measurementbandwidth integer,
    eutra_fa_prior_presenceantport1 integer,
    eutra_fa_prior_neighcellconfig integer,
    eutra_fa_prior_qoffsetfreq integer,
    eutra_fa_prior_offsetfreq integer,
    eutra_fa_prior_sintrasearchrel9usage integer,
    eutra_fa_prior_sintrasearchp integer,
    eutra_fa_prior_sintrasearchq integer,
    eutra_fa_prior_snonintrasearchrel9usage integer,
    eutra_fa_prior_snonintrasearchp integer,
    eutra_fa_prior_snonintrasearchq integer,
    eutra_fa_prior_qqualminrel9usage integer,
    eutra_fa_prior_qqualminrel9 integer,
    eutra_fa_prior_threshservinglowqrel9usage integer,
    eutra_fa_prior_threshservinglowqrel9 integer,
    eutra_fa_prior_threshxhighqrel9 integer,
    eutra_fa_prior_threshxlowqrel9 integer
);


--
-- PostgreSQL database dump complete
--

