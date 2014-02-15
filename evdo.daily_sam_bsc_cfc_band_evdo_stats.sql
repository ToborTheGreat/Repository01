--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = evdo, pg_catalog;

DROP TRIGGER evdo_daily_sam_bsc_cfc_band_evdo_stats_trigger_part ON evdo.daily_sam_bsc_cfc_band_evdo_stats;
DROP INDEX evdo.daily_sam_bsc_cfc_band_evdo_stats_itmdt_ix;
DROP INDEX evdo.daily_sam_bsc_cfc_band_evdo_stats_idx;
DROP TABLE evdo.daily_sam_bsc_cfc_band_evdo_stats;
SET search_path = evdo, pg_catalog;

SET default_tablespace = p2_evdodata;

SET default_with_oids = false;

--
-- Name: daily_sam_bsc_cfc_band_evdo_stats; Type: TABLE; Schema: evdo; Owner: -; Tablespace: p2_evdodata
--

CREATE TABLE daily_sam_bsc_cfc_band_evdo_stats (
    item_date date,
    vendor text,
    market character varying(50),
    bsc_name character varying(30),
    band integer,
    cfc0 integer,
    cfc1000 integer,
    cfc1001 integer,
    cfc1002 integer,
    cfc1003 integer,
    cfc2000 integer,
    cfc2001 integer,
    cfc2002 integer,
    cfc2003 integer,
    cfc2004 integer,
    cfc2005 integer,
    cfc2006 integer,
    cfc2007 integer,
    cfc2008 integer,
    cfc2009 integer,
    cfc2010 integer,
    cfc2011 integer,
    cfc2012 integer,
    cfc2013 integer,
    cfc2014 integer,
    cfc2015 integer,
    cfc2016 integer,
    cfc2017 integer,
    cfc2018 integer,
    cfc2019 integer,
    cfc2020 integer,
    cfc2021 integer,
    cfc2022 integer,
    cfc2023 integer,
    cfc2024 integer,
    cfc2025 integer,
    cfc2026 integer,
    cfc2027 integer,
    cfc2028 integer,
    cfc2029 integer,
    cfc2030 integer,
    cfc2031 integer,
    cfc2032 integer,
    cfc2033 integer,
    cfc2034 integer,
    cfc2035 integer,
    cfc2036 integer,
    cfc2037 integer,
    cfc2038 integer,
    cfc2039 integer,
    cfc2040 integer,
    cfc2041 integer,
    cfc2042 integer,
    cfc2043 integer,
    cfc2044 integer,
    cfc2045 integer,
    cfc2046 integer,
    cfc2047 integer,
    cfc2048 integer,
    cfc2049 integer,
    cfc2050 integer,
    cfc2051 integer,
    cfc2052 integer,
    cfc2053 integer,
    cfc2054 integer,
    cfc2055 integer,
    cfc2056 integer,
    cfc2057 integer,
    cfc2058 integer,
    cfc2059 integer,
    cfc2060 integer,
    cfc2061 integer,
    cfc2062 integer,
    cfc2063 integer,
    cfc2064 integer,
    cfc2065 integer,
    cfc2066 integer,
    cfc2067 integer,
    cfc2068 integer,
    cfc2069 integer,
    cfc2070 integer,
    cfc2071 integer,
    cfc2072 integer,
    cfc2073 integer,
    cfc2074 integer,
    cfc2075 integer,
    cfc2076 integer,
    cfc2077 integer,
    cfc2078 integer,
    cfc2079 integer,
    cfc2080 integer,
    cfc2081 integer,
    cfc2082 integer,
    cfc2083 integer,
    cfc2084 integer,
    cfc2085 integer,
    cfc2086 integer,
    cfc2087 integer,
    cfc2088 integer,
    cfc2089 integer,
    cfc2090 integer,
    cfc3000 integer,
    cfc3001 integer,
    cfc3002 integer,
    cfc3003 integer,
    cfc3004 integer,
    cfc3005 integer,
    cfc3006 integer,
    cfc3007 integer,
    cfc3008 integer,
    cfc3009 integer,
    cfc3010 integer,
    cfc3011 integer,
    cfc3012 integer,
    cfc3013 integer,
    cfc3014 integer,
    cfc3015 integer,
    cfc3016 integer,
    cfc3017 integer,
    cfc3018 integer,
    cfc3019 integer,
    cfc3020 integer,
    cfc3021 integer,
    cfc3022 integer,
    cfc6000 integer,
    cfc6001 integer,
    cfc6002 integer,
    cfc7000 integer,
    cfc7001 integer,
    cfc7002 integer,
    cfc7003 integer,
    cfc7004 integer,
    cfc7005 integer,
    cfc7006 integer,
    cfc7007 integer,
    cfc7008 integer,
    cfc7009 integer,
    cfc7010 integer,
    cfc7011 integer,
    cfc7012 integer,
    cfc7013 integer,
    cfc7014 integer,
    cfc7015 integer,
    cfc7016 integer,
    cfc7017 integer,
    cfc7018 integer,
    cfc7019 integer,
    cfc7020 integer,
    cfc7021 integer,
    cfc7022 integer,
    cfc7023 integer,
    cfc7024 integer,
    cfc7025 integer,
    cfc8000 integer,
    cfc8001 integer,
    cfc8002 integer,
    cfc8003 integer,
    cfc8004 integer,
    cfc8005 integer,
    cfc8006 integer,
    cfc8007 integer,
    cfc8008 integer,
    cfc8009 integer,
    cfc8010 integer,
    cfc8011 integer,
    cfc8012 integer,
    cfc8013 integer,
    cfc8014 integer,
    cfc8015 integer,
    cfc8016 integer,
    cfc8017 integer,
    cfc8018 integer,
    cfc8019 integer,
    cfc8020 integer,
    cfc8021 integer,
    cfc8022 integer,
    cfc8023 integer,
    cfc8024 integer,
    cfc8025 integer,
    cfc8026 integer,
    cfc8027 integer,
    cfc8028 integer,
    cfc8029 integer,
    cfc8030 integer,
    cfc8031 integer,
    cfc8032 integer,
    cfc8033 integer,
    cfc2091 integer,
    cfc2092 integer,
    cfc2093 integer,
    cfc2094 integer
)
WITH (autovacuum_enabled=true, toast.autovacuum_enabled=true);


SET default_tablespace = p2_evdoindex;

--
-- Name: daily_sam_bsc_cfc_band_evdo_stats_idx; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_sam_bsc_cfc_band_evdo_stats_idx ON daily_sam_bsc_cfc_band_evdo_stats USING btree (item_date, market, bsc_name);


--
-- Name: daily_sam_bsc_cfc_band_evdo_stats_itmdt_ix; Type: INDEX; Schema: evdo; Owner: -; Tablespace: p2_evdoindex
--

CREATE INDEX daily_sam_bsc_cfc_band_evdo_stats_itmdt_ix ON daily_sam_bsc_cfc_band_evdo_stats USING btree (item_date);


--
-- Name: evdo_daily_sam_bsc_cfc_band_evdo_stats_trigger_part; Type: TRIGGER; Schema: evdo; Owner: -
--

CREATE TRIGGER evdo_daily_sam_bsc_cfc_band_evdo_stats_trigger_part
    BEFORE INSERT ON daily_sam_bsc_cfc_band_evdo_stats
    FOR EACH ROW
    EXECUTE PROCEDURE trg_daily_sam_bsc_cfc_band_evdo_stats_part();


--
-- PostgreSQL database dump complete
--

