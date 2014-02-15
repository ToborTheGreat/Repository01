--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw, pg_catalog;

DROP INDEX dw.day_dim_ux;
ALTER TABLE ONLY dw.day_dim DROP CONSTRAINT day_dim_pk;
DROP TABLE dw.day_dim;
SET search_path = dw, pg_catalog;

SET default_tablespace = p2_dwdata;

SET default_with_oids = false;

--
-- Name: day_dim; Type: TABLE; Schema: dw; Owner: -; Tablespace: p2_dwdata
--

CREATE TABLE day_dim (
    day_dim_id integer DEFAULT nextval('day_dim_seq'::regclass) NOT NULL,
    year smallint NOT NULL,
    month smallint NOT NULL,
    month_day smallint NOT NULL,
    day_of_week smallint NOT NULL,
    quarter smallint NOT NULL,
    date_value date NOT NULL,
    weekday_flag boolean NOT NULL,
    start_of_month_flag boolean NOT NULL,
    end_of_month_flag boolean NOT NULL,
    day_name character varying(10) NOT NULL,
    week_number smallint NOT NULL,
    month_name character varying(10) NOT NULL,
    year_month character varying(7) NOT NULL,
    day_of_year smallint NOT NULL,
    is_dst boolean NOT NULL
);


SET default_tablespace = p2_dwindex;

--
-- Name: day_dim_pk; Type: CONSTRAINT; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

ALTER TABLE ONLY day_dim
    ADD CONSTRAINT day_dim_pk PRIMARY KEY (day_dim_id);


--
-- Name: day_dim_ux; Type: INDEX; Schema: dw; Owner: -; Tablespace: p2_dwindex
--

CREATE UNIQUE INDEX day_dim_ux ON day_dim USING btree (date_value);


--
-- PostgreSQL database dump complete
--

