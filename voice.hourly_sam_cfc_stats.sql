--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = voice, pg_catalog;

DROP TRIGGER hourly_sam_cfc_stats_trigger_part ON voice.hourly_sam_cfc_stats;
DROP INDEX voice.hourly_sam_cfc_stats_idx1;
DROP INDEX voice.hourly_sam_cfc_stats_idx;
ALTER TABLE ONLY voice.hourly_sam_cfc_stats DROP CONSTRAINT hourly_sam_cfc_stats_pk;
DROP TABLE voice.hourly_sam_cfc_stats;
SET search_path = voice, pg_catalog;

SET default_tablespace = p2_voicedata;

SET default_with_oids = false;

--
-- Name: hourly_sam_cfc_stats; Type: TABLE; Schema: voice; Owner: -; Tablespace: p2_voicedata
--

CREATE TABLE hourly_sam_cfc_stats (
    market character varying(50),
    bsm character varying(30),
    bsc_name character varying(30) NOT NULL,
    item_date date NOT NULL,
    hour integer NOT NULL,
    bsc integer NOT NULL,
    bts integer NOT NULL,
    sector integer NOT NULL,
    band integer,
    fa integer NOT NULL,
    cfc0 integer,
    cfc1 integer,
    cfc2 integer,
    cfc3 integer,
    cfc4 integer,
    cfc5 integer,
    cfc6 integer,
    cfc7 integer,
    cfc8 integer,
    cfc9 integer,
    cfc10 integer,
    cfc11 integer,
    cfc12 integer,
    cfc13 integer,
    cfc14 integer,
    cfc15 integer,
    cfc16 integer,
    cfc17 integer,
    cfc18 integer,
    cfc19 integer,
    cfc20 integer,
    cfc21 integer,
    cfc22 integer,
    cfc23 integer,
    cfc24 integer,
    cfc25 integer,
    cfc26 integer,
    cfc27 integer,
    cfc28 integer,
    cfc29 integer,
    cfc30 integer,
    cfc31 integer,
    cfc32 integer,
    cfc33 integer,
    cfc34 integer,
    cfc35 integer,
    cfc36 integer,
    cfc37 integer,
    cfc38 integer,
    cfc39 integer,
    cfc40 integer,
    cfc41 integer,
    cfc42 integer,
    cfc43 integer,
    cfc44 integer,
    cfc45 integer,
    cfc46 integer,
    cfc47 integer,
    cfc48 integer,
    cfc49 integer,
    cfc50 integer,
    cfc51 integer,
    cfc52 integer,
    cfc53 integer,
    cfc54 integer,
    cfc55 integer,
    cfc56 integer,
    cfc57 integer,
    cfc58 integer,
    cfc59 integer,
    cfc60 integer,
    cfc61 integer,
    cfc62 integer,
    cfc63 integer,
    cfc64 integer,
    cfc65 integer,
    cfc66 integer,
    cfc67 integer,
    cfc68 integer,
    cfc69 integer,
    cfc70 integer,
    cfc71 integer,
    cfc72 integer,
    cfc73 integer,
    cfc74 integer,
    cfc75 integer,
    cfc76 integer,
    cfc77 integer,
    cfc78 integer,
    cfc79 integer,
    cfc80 integer,
    cfc81 integer,
    cfc82 integer,
    cfc83 integer,
    cfc84 integer,
    cfc85 integer,
    cfc86 integer,
    cfc87 integer,
    cfc88 integer,
    cfc89 integer,
    cfc90 integer,
    cfc91 integer,
    cfc92 integer,
    cfc93 integer,
    cfc94 integer,
    cfc95 integer,
    cfc96 integer,
    cfc97 integer,
    cfc98 integer,
    cfc99 integer,
    cfc100 integer,
    cfc101 integer,
    cfc102 integer,
    cfc103 integer,
    cfc104 integer,
    cfc105 integer,
    cfc106 integer,
    cfc107 integer,
    cfc108 integer,
    cfc109 integer,
    cfc110 integer,
    cfc111 integer,
    cfc112 integer,
    cfc113 integer,
    cfc114 integer,
    cfc115 integer,
    cfc116 integer,
    cfc117 integer,
    cfc118 integer,
    cfc119 integer,
    cfc120 integer,
    cfc121 integer,
    cfc122 integer,
    cfc123 integer,
    cfc124 integer,
    cfc125 integer,
    cfc126 integer,
    cfc127 integer
)
WITH (autovacuum_enabled=true, autovacuum_analyze_scale_factor=0.4);
ALTER TABLE ONLY hourly_sam_cfc_stats ALTER COLUMN item_date SET STATISTICS 1000;


SET default_tablespace = p2_voiceindex;

--
-- Name: hourly_sam_cfc_stats_pk; Type: CONSTRAINT; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

ALTER TABLE ONLY hourly_sam_cfc_stats
    ADD CONSTRAINT hourly_sam_cfc_stats_pk PRIMARY KEY (item_date, hour, bsc_name, bts, sector, fa);


--
-- Name: hourly_sam_cfc_stats_idx; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_cfc_stats_idx ON hourly_sam_cfc_stats USING btree (bsc_name, bts, sector);


--
-- Name: hourly_sam_cfc_stats_idx1; Type: INDEX; Schema: voice; Owner: -; Tablespace: p2_voiceindex
--

CREATE INDEX hourly_sam_cfc_stats_idx1 ON hourly_sam_cfc_stats USING btree (item_date);

ALTER TABLE hourly_sam_cfc_stats CLUSTER ON hourly_sam_cfc_stats_idx1;


--
-- Name: hourly_sam_cfc_stats_trigger_part; Type: TRIGGER; Schema: voice; Owner: -
--

CREATE TRIGGER hourly_sam_cfc_stats_trigger_part
    BEFORE INSERT ON hourly_sam_cfc_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_hourly_sam_cfc_stats_part();


--
-- PostgreSQL database dump complete
--

