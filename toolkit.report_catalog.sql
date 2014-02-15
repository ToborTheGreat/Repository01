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

ALTER TABLE ONLY toolkit.report_catalog DROP CONSTRAINT fk_report_catalog_grp;
DROP INDEX toolkit.ux1_report_catalog_name;
DROP INDEX toolkit.report_catalog_ix1;
ALTER TABLE ONLY toolkit.report_catalog DROP CONSTRAINT pk_report_catalog;
DROP TABLE toolkit.report_catalog;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: report_catalog; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE report_catalog (
    report_id integer NOT NULL,
    report_name character varying(100) NOT NULL,
    report_desc character varying(500),
    group_id integer,
    report_feature character varying(50),
    report_max_concurrent smallint DEFAULT 99 NOT NULL,
    report_run_adhoc boolean DEFAULT true NOT NULL,
    report_run_daily boolean DEFAULT false NOT NULL,
    report_template character varying(100),
    report_all_clusters_enabled boolean DEFAULT false,
    report_csv_enabled boolean DEFAULT false,
    admin_only boolean DEFAULT false NOT NULL,
    report_status character varying(50),
    report_all_markets_enabled boolean DEFAULT false,
    ext_ref character varying(100)
);


--
-- Name: pk_report_catalog; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY report_catalog
    ADD CONSTRAINT pk_report_catalog PRIMARY KEY (report_id);


--
-- Name: report_catalog_ix1; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX report_catalog_ix1 ON report_catalog USING btree (group_id);


--
-- Name: ux1_report_catalog_name; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE UNIQUE INDEX ux1_report_catalog_name ON report_catalog USING btree (report_name);


--
-- Name: fk_report_catalog_grp; Type: FK CONSTRAINT; Schema: toolkit; Owner: -
--

ALTER TABLE ONLY report_catalog
    ADD CONSTRAINT fk_report_catalog_grp FOREIGN KEY (group_id) REFERENCES report_groups(group_id);


--
-- PostgreSQL database dump complete
--

