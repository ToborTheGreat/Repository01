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

ALTER TABLE ONLY public.z_sm_atp_delta_diff_runs DROP CONSTRAINT sm_atp_delta_diff_runs_fk5;
ALTER TABLE ONLY public.z_sm_atp_delta_diff_runs DROP CONSTRAINT sm_atp_delta_diff_runs_fk4;
ALTER TABLE ONLY public.z_sm_atp_delta_diff_runs DROP CONSTRAINT sm_atp_delta_diff_runs_fk3;
ALTER TABLE ONLY public.z_sm_atp_delta_diff_runs DROP CONSTRAINT sm_atp_delta_diff_runs_fk2;
ALTER TABLE ONLY public.z_sm_atp_delta_diff_runs DROP CONSTRAINT sm_atp_delta_diff_runs_fk1;
ALTER TABLE ONLY public.z_sm_atp_delta_diff_runs DROP CONSTRAINT sm_atp_delta_diff_runs_pkey;
ALTER TABLE public.z_sm_atp_delta_diff_runs ALTER COLUMN delta_diff_id DROP DEFAULT;
DROP SEQUENCE public.z_sm_atp_delta_diff_runs_delta_diff_id_seq;
DROP TABLE public.z_sm_atp_delta_diff_runs;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_delta_diff_runs; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_delta_diff_runs (
    delta_diff_id integer NOT NULL,
    market_id integer NOT NULL,
    technology_type_id integer NOT NULL,
    pass_profile_id integer NOT NULL,
    baseline_run_id integer NOT NULL,
    diff_run_id integer NOT NULL,
    start_timestamp timestamp with time zone,
    end_timestamp timestamp with time zone,
    created_date timestamp with time zone,
    created_by integer NOT NULL,
    status character(1) DEFAULT 'Q'::bpchar,
    notes character varying(1000),
    ws_id integer,
    total_dt_points integer,
    excluded_points integer
);
ALTER TABLE ONLY z_sm_atp_delta_diff_runs ALTER COLUMN delta_diff_id SET STATISTICS 0;


--
-- Name: COLUMN z_sm_atp_delta_diff_runs.status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN z_sm_atp_delta_diff_runs.status IS 'Q-Queue;P-Processing;C-Compleated;I-Incompleate';


--
-- Name: z_sm_atp_delta_diff_runs_delta_diff_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE z_sm_atp_delta_diff_runs_delta_diff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: z_sm_atp_delta_diff_runs_delta_diff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE z_sm_atp_delta_diff_runs_delta_diff_id_seq OWNED BY z_sm_atp_delta_diff_runs.delta_diff_id;


--
-- Name: delta_diff_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE z_sm_atp_delta_diff_runs ALTER COLUMN delta_diff_id SET DEFAULT nextval('z_sm_atp_delta_diff_runs_delta_diff_id_seq'::regclass);


--
-- Name: sm_atp_delta_diff_runs_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY z_sm_atp_delta_diff_runs
    ADD CONSTRAINT sm_atp_delta_diff_runs_pkey PRIMARY KEY (delta_diff_id);


--
-- Name: sm_atp_delta_diff_runs_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_delta_diff_runs
    ADD CONSTRAINT sm_atp_delta_diff_runs_fk1 FOREIGN KEY (market_id) REFERENCES z_markets(market_id);


--
-- Name: sm_atp_delta_diff_runs_fk2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_delta_diff_runs
    ADD CONSTRAINT sm_atp_delta_diff_runs_fk2 FOREIGN KEY (technology_type_id) REFERENCES z_technology_types(technology_type_id);


--
-- Name: sm_atp_delta_diff_runs_fk3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_delta_diff_runs
    ADD CONSTRAINT sm_atp_delta_diff_runs_fk3 FOREIGN KEY (pass_profile_id) REFERENCES z_sm_atp_pass_profiles(pass_profile_id);


--
-- Name: sm_atp_delta_diff_runs_fk4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_delta_diff_runs
    ADD CONSTRAINT sm_atp_delta_diff_runs_fk4 FOREIGN KEY (baseline_run_id) REFERENCES z_sm_atp_workflow_runs(workflow_run_id);


--
-- Name: sm_atp_delta_diff_runs_fk5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY z_sm_atp_delta_diff_runs
    ADD CONSTRAINT sm_atp_delta_diff_runs_fk5 FOREIGN KEY (diff_run_id) REFERENCES z_sm_atp_workflow_runs(workflow_run_id);


--
-- PostgreSQL database dump complete
--

