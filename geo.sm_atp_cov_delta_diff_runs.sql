--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = geo, pg_catalog;

ALTER TABLE ONLY geo.sm_atp_cov_delta_diff_runs DROP CONSTRAINT sm_atp_cov_delta_diff_runs_fk3;
ALTER TABLE ONLY geo.sm_atp_cov_delta_diff_runs DROP CONSTRAINT sm_atp_cov_delta_diff_runs_fk2;
ALTER TABLE ONLY geo.sm_atp_cov_delta_diff_runs DROP CONSTRAINT sm_atp_cov_delta_diff_runs_fk1;
ALTER TABLE ONLY geo.sm_atp_cov_delta_diff_runs DROP CONSTRAINT sm_atp_cov_delta_diff_runs_pk;
ALTER TABLE geo.sm_atp_cov_delta_diff_runs ALTER COLUMN delta_diff_id DROP DEFAULT;
DROP SEQUENCE geo.sm_atp_cov_delta_diff_runs_delta_diff_id_seq;
DROP TABLE geo.sm_atp_cov_delta_diff_runs;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_cov_delta_diff_runs; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_cov_delta_diff_runs (
    delta_diff_id integer NOT NULL,
    report_queue_id integer NOT NULL,
    market_id integer NOT NULL,
    technology_type_id integer NOT NULL,
    run1 integer NOT NULL,
    run2 integer NOT NULL,
    run3 integer,
    run4 integer,
    created_date timestamp with time zone,
    diff_start_timestamp timestamp with time zone,
    diff_end_timestamp timestamp with time zone,
    created_by integer NOT NULL,
    status character(1) DEFAULT 'Q'::bpchar,
    notes character varying(1000),
    ws_id integer,
    total_dt_points integer,
    excluded_points integer
);
ALTER TABLE ONLY sm_atp_cov_delta_diff_runs ALTER COLUMN delta_diff_id SET STATISTICS 0;


--
-- Name: COLUMN sm_atp_cov_delta_diff_runs.status; Type: COMMENT; Schema: geo; Owner: -
--

COMMENT ON COLUMN sm_atp_cov_delta_diff_runs.status IS 'Q-Queue;P-Processing;C-Compleated;I-Incompleate';


--
-- Name: sm_atp_cov_delta_diff_runs_delta_diff_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE sm_atp_cov_delta_diff_runs_delta_diff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: sm_atp_cov_delta_diff_runs_delta_diff_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE sm_atp_cov_delta_diff_runs_delta_diff_id_seq OWNED BY sm_atp_cov_delta_diff_runs.delta_diff_id;


--
-- Name: delta_diff_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE sm_atp_cov_delta_diff_runs ALTER COLUMN delta_diff_id SET DEFAULT nextval('sm_atp_cov_delta_diff_runs_delta_diff_id_seq'::regclass);


--
-- Name: sm_atp_cov_delta_diff_runs_pk; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_cov_delta_diff_runs
    ADD CONSTRAINT sm_atp_cov_delta_diff_runs_pk PRIMARY KEY (delta_diff_id);


--
-- Name: sm_atp_cov_delta_diff_runs_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_cov_delta_diff_runs
    ADD CONSTRAINT sm_atp_cov_delta_diff_runs_fk1 FOREIGN KEY (report_queue_id) REFERENCES toolkit.report_queue(queue_id);


--
-- Name: sm_atp_cov_delta_diff_runs_fk2; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_cov_delta_diff_runs
    ADD CONSTRAINT sm_atp_cov_delta_diff_runs_fk2 FOREIGN KEY (market_id) REFERENCES markets(market_id);


--
-- Name: sm_atp_cov_delta_diff_runs_fk3; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_cov_delta_diff_runs
    ADD CONSTRAINT sm_atp_cov_delta_diff_runs_fk3 FOREIGN KEY (technology_type_id) REFERENCES technology_types(technology_type_id);


--
-- PostgreSQL database dump complete
--

