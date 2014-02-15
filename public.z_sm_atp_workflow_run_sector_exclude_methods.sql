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

DROP INDEX public.sm_atp_workflow_run_sector_exclude_methods_idx;
DROP TABLE public.z_sm_atp_workflow_run_sector_exclude_methods;
SET search_path = public, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: z_sm_atp_workflow_run_sector_exclude_methods; Type: TABLE; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE z_sm_atp_workflow_run_sector_exclude_methods (
    workflow_run_id integer NOT NULL,
    site_id integer NOT NULL,
    sector_id integer NOT NULL,
    exclude_method_id integer NOT NULL,
    bins_excluded integer NOT NULL
);


--
-- Name: sm_atp_workflow_run_sector_exclude_methods_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: p2_generaldata
--

CREATE INDEX sm_atp_workflow_run_sector_exclude_methods_idx ON z_sm_atp_workflow_run_sector_exclude_methods USING btree (workflow_run_id);


--
-- PostgreSQL database dump complete
--

