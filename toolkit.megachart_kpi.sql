--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = toolkit, pg_catalog;

ALTER TABLE ONLY toolkit.megachart_kpi DROP CONSTRAINT fk_megachart_kpi_prf;
DROP INDEX toolkit.ux_megachart_kpi;
ALTER TABLE ONLY toolkit.megachart_kpi DROP CONSTRAINT megachart_kpi_bak_copy_pkey;
DROP TABLE toolkit.megachart_kpi;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = true;

--
-- Name: megachart_kpi; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE megachart_kpi (
    kpi_dim_id integer DEFAULT nextval('megachart_kpi_seq'::regclass) NOT NULL,
    user_id integer,
    chart_type character varying(10) DEFAULT NULL::character varying,
    "position" integer,
    display character varying(3) DEFAULT NULL::character varying,
    modified_date timestamp(6) without time zone DEFAULT now() NOT NULL,
    yaxis character varying(10),
    metric_id integer,
    profile_id integer
);


--
-- Name: megachart_kpi_bak_copy_pkey; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY megachart_kpi
    ADD CONSTRAINT megachart_kpi_bak_copy_pkey PRIMARY KEY (kpi_dim_id);


--
-- Name: ux_megachart_kpi; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX ux_megachart_kpi ON megachart_kpi USING btree (metric_id, profile_id);


--
-- Name: fk_megachart_kpi_prf; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY megachart_kpi
    ADD CONSTRAINT fk_megachart_kpi_prf FOREIGN KEY (profile_id) REFERENCES megachart_kpi_profile(kpi_profile_dim_id);


--
-- PostgreSQL database dump complete
--

