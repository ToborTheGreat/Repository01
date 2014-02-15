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

DROP INDEX public.day_date_val;
ALTER TABLE ONLY public.z_sm_day_dim DROP CONSTRAINT sm_day_dim_pkey;
ALTER TABLE public.z_sm_day_dim ALTER COLUMN day_dim_id DROP DEFAULT;
DROP SEQUENCE public.z_sm_day_dim_day_dim_id_seq;
DROP TABLE public.z_sm_day_dim;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = true;

--
-- Name: z_sm_day_dim; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_day_dim (
    day_dim_id integer NOT NULL,
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


--
-- Name: z_sm_day_dim_day_dim_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_sm_day_dim_day_dim_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_sm_day_dim_day_dim_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_sm_day_dim_day_dim_id_seq OWNED BY z_sm_day_dim.day_dim_id;


--
-- Name: day_dim_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_sm_day_dim ALTER COLUMN day_dim_id SET DEFAULT nextval('z_sm_day_dim_day_dim_id_seq'::regclass);


--
-- Name: sm_day_dim_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_day_dim
    ADD CONSTRAINT sm_day_dim_pkey PRIMARY KEY (day_dim_id);


--
-- Name: day_date_val; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE UNIQUE INDEX day_date_val ON z_sm_day_dim USING btree (date_value);


--
-- PostgreSQL database dump complete
--

