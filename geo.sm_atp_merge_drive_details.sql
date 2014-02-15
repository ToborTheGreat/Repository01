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

ALTER TABLE ONLY geo.sm_atp_merge_drive_details DROP CONSTRAINT sm_atp_merge_drive_details_fk1;
DROP TABLE geo.sm_atp_merge_drive_details;
SET search_path = geo, pg_catalog;

SET default_tablespace = p2_generaldata;

SET default_with_oids = false;

--
-- Name: sm_atp_merge_drive_details; Type: TABLE; Schema: geo; Owner: -; Tablespace: p2_generaldata
--

CREATE TABLE sm_atp_merge_drive_details (
    merge_id integer,
    poly_user_map_id integer,
    poly_gid integer,
    replace_poly_option integer,
    replace_user_map_id integer
);


--
-- Name: sm_atp_merge_drive_details_fk1; Type: FK CONSTRAINT; Schema: geo; Owner: -
--

ALTER TABLE ONLY sm_atp_merge_drive_details
    ADD CONSTRAINT sm_atp_merge_drive_details_fk1 FOREIGN KEY (merge_id) REFERENCES sm_atp_merge_drives(merge_id);


--
-- PostgreSQL database dump complete
--

