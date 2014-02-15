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

ALTER TABLE ONLY geo.sm_atp_workflow_runs DROP CONSTRAINT sm_atp_workflow_runs_fk3;
ALTER TABLE ONLY geo.sm_atp_workflow_runs DROP CONSTRAINT sm_atp_workflow_runs_fk1;
ALTER TABLE ONLY geo.sm_atp_workflow_runs DROP CONSTRAINT sm_atp_workflow_runs_fk;
DROP INDEX geo.sm_atp_workflow_runs_idx;
ALTER TABLE ONLY geo.sm_atp_workflow_runs DROP CONSTRAINT sm_atp_workflow_runs_pkey;
ALTER TABLE geo.sm_atp_workflow_runs ALTER COLUMN workflow_run_id DROP DEFAULT;
DROP SEQUENCE geo.sm_atp_workflow_runs_workflow_run_id_seq;
DROP TABLE geo.sm_atp_workflow_runs;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_workflow_runs; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_workflow_runs (
    workflow_run_id integer NOT NULL,
    workflow_class_id integer NOT NULL,
    technology_type_id integer NOT NULL,
    pass_profile_id integer NOT NULL,
    start_timestamp timestamp with time zone,
    end_timestamp timestamp with time zone,
    exclude_areas_user_map_id integer,
    results_table_name character varying(150),
    created_date timestamp with time zone,
    created_by integer NOT NULL,
    exclude_vector_user_map_id integer,
    exclude_distance_value integer,
    exclude_bestactive_ec_value real,
    status character(1) DEFAULT 'Q'::bpchar,
    total_bins integer,
    excluded_bins integer,
    notes character varying(1000),
    result character varying(50) DEFAULT 'UNKNOWN'::character varying,
    ws_id integer,
    exclude_sectors_by_pn_max_dist real,
    include_area_auto_bs_defined_flg character(1),
    include_area_auto_bs_filter_area real,
    req_name character varying(30),
    exclude_bestactive_ecio_value real,
    total_dt_points integer,
    excluded_points integer,
    include_exclude_sectors_by_pn character(1) DEFAULT 'E'::bpchar NOT NULL,
    images_required integer DEFAULT 0,
    images_created integer DEFAULT 0,
    images_failed integer DEFAULT 0,
    deleted_by integer,
    deleted_date timestamp with time zone
);
ALTER TABLE ONLY sm_atp_workflow_runs ALTER COLUMN workflow_run_id SET STATISTICS 0;


--
-- Name: COLUMN sm_atp_workflow_runs.status; Type: COMMENT; Schema: geo; Owner: -
--

COMMENT ON COLUMN sm_atp_workflow_runs.status IS 'Q-Queue;P-Processing;C-Compleated;I-Incompleate';


--
-- Name: COLUMN sm_atp_workflow_runs.images_required; Type: COMMENT; Schema: geo; Owner: -
--

COMMENT ON COLUMN sm_atp_workflow_runs.images_required IS 'No. of images required for a run';


--
-- Name: COLUMN sm_atp_workflow_runs.images_created; Type: COMMENT; Schema: geo; Owner: -
--

COMMENT ON COLUMN sm_atp_workflow_runs.images_created IS 'Total Images Created';


--
-- Name: sm_atp_workflow_runs_workflow_run_id_seq; Type: SEQUENCE; Schema: geo; Owner: -
--

CREATE SEQUENCE sm_atp_workflow_runs_workflow_run_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: sm_atp_workflow_runs_workflow_run_id_seq; Type: SEQUENCE OWNED BY; Schema: geo; Owner: -
--

ALTER SEQUENCE sm_atp_workflow_runs_workflow_run_id_seq OWNED BY sm_atp_workflow_runs.workflow_run_id;


--
-- Name: workflow_run_id; Type: DEFAULT; Schema: geo; Owner: -
--

ALTER TABLE sm_atp_workflow_runs ALTER COLUMN workflow_run_id SET DEFAULT nextval('sm_atp_workflow_runs_workflow_run_id_seq'::regclass);


--
-- Name: sm_atp_workflow_runs_pkey; Type: CONSTRAINT; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

ALTER TABLE ONLY sm_atp_workflow_runs
    ADD CONSTRAINT sm_atp_workflow_runs_pkey PRIMARY KEY (workflow_run_id);


--
-- Name: sm_atp_workflow_runs_idx; Type: INDEX; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX sm_atp_workflow_runs_idx ON sm_atp_workflow_runs USING btree (technology_type_id);


--
-- Name: sm_atp_workflow_runs_fk; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_workflow_runs
    ADD CONSTRAINT sm_atp_workflow_runs_fk FOREIGN KEY (workflow_class_id) REFERENCES sm_atp_workflow_classes(workflow_class_id);


--
-- Name: sm_atp_workflow_runs_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_workflow_runs
    ADD CONSTRAINT sm_atp_workflow_runs_fk1 FOREIGN KEY (technology_type_id) REFERENCES technology_types(technology_type_id);


--
-- Name: sm_atp_workflow_runs_fk3; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_workflow_runs
    ADD CONSTRAINT sm_atp_workflow_runs_fk3 FOREIGN KEY (pass_profile_id) REFERENCES sm_atp_pass_profiles(pass_profile_id);


--
-- PostgreSQL database dump complete
--

