--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = stg, pg_catalog;

ALTER TABLE ONLY stg.adc_job DROP CONSTRAINT fk_adc_job_source_host;
ALTER TABLE ONLY stg.adc_job DROP CONSTRAINT fk_adc_job_data_type;
DROP INDEX stg.adc_adc_job_idx2;
DROP INDEX stg.adc_adc_job_idx1;
ALTER TABLE ONLY stg.adc_job DROP CONSTRAINT pk_adc_job;
ALTER TABLE stg.adc_job ALTER COLUMN job_id DROP DEFAULT;
DROP SEQUENCE stg.adc_job_job_id_seq;
DROP TABLE stg.adc_job;
SET search_path = stg, pg_catalog;

SET default_tablespace = p2_stagedata;

SET default_with_oids = false;

--
-- Name: adc_job; Type: TABLE; Schema: stg; Owner: -; Tablespace: p2_stagedata
--

CREATE TABLE adc_job (
    job_id integer NOT NULL,
    source_host_id smallint NOT NULL,
    data_type_id smallint NOT NULL,
    data_date character varying(10) NOT NULL,
    data_time character varying(8) NOT NULL,
    job_priority character varying(30) NOT NULL,
    job_duration_maximum smallint NOT NULL,
    file_name character varying(255) NOT NULL,
    bundle_name character varying(255) NOT NULL
);


--
-- Name: adc_job_job_id_seq; Type: SEQUENCE; Schema: stg; Owner: -
--

CREATE SEQUENCE adc_job_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: adc_job_job_id_seq; Type: SEQUENCE OWNED BY; Schema: stg; Owner: -
--

ALTER SEQUENCE adc_job_job_id_seq OWNED BY adc_job.job_id;


--
-- Name: job_id; Type: DEFAULT; Schema: stg; Owner: -
--

ALTER TABLE adc_job ALTER COLUMN job_id SET DEFAULT nextval('adc_job_job_id_seq'::regclass);


SET default_tablespace = p2_stageindex;

--
-- Name: pk_adc_job; Type: CONSTRAINT; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

ALTER TABLE ONLY adc_job
    ADD CONSTRAINT pk_adc_job PRIMARY KEY (job_id);


--
-- Name: adc_adc_job_idx1; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX adc_adc_job_idx1 ON adc_job USING btree (data_date);


--
-- Name: adc_adc_job_idx2; Type: INDEX; Schema: stg; Owner: -; Tablespace: p2_stageindex
--

CREATE INDEX adc_adc_job_idx2 ON adc_job USING btree (data_date, data_type_id);


--
-- Name: fk_adc_job_data_type; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_job
    ADD CONSTRAINT fk_adc_job_data_type FOREIGN KEY (data_type_id) REFERENCES adc_data_type(data_type_id) ON DELETE CASCADE;


--
-- Name: fk_adc_job_source_host; Type: FK CONSTRAINT; Schema: stg; Owner: -
--

ALTER TABLE ONLY adc_job
    ADD CONSTRAINT fk_adc_job_source_host FOREIGN KEY (source_host_id) REFERENCES adc_source_host(source_host_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

