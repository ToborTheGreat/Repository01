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

DROP INDEX toolkit.usage_log_idx_copy;
DROP TABLE toolkit.megachart_log;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: megachart_log; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE megachart_log (
    username character varying(255) NOT NULL,
    ip_address character varying(20),
    feature character varying(50) NOT NULL,
    create_date timestamp(6) without time zone DEFAULT now() NOT NULL,
    version character varying(15)
);


--
-- Name: usage_log_idx_copy; Type: INDEX; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE INDEX usage_log_idx_copy ON megachart_log USING btree (create_date);


--
-- PostgreSQL database dump complete
--

