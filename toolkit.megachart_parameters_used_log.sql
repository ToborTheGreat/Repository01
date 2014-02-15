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

ALTER TABLE ONLY toolkit.megachart_parameters_used_log DROP CONSTRAINT pk_megachart_parameters_used_log;
DROP TABLE toolkit.megachart_parameters_used_log;
SET search_path = toolkit, pg_catalog;

SET default_tablespace = p2_toolkitdata;

SET default_with_oids = false;

--
-- Name: megachart_parameters_used_log; Type: TABLE; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

CREATE TABLE megachart_parameters_used_log (
    log_id integer NOT NULL,
    seq_id integer NOT NULL,
    user_id integer NOT NULL,
    level character varying,
    parameter_name character varying,
    parameter_value character varying,
    run_time timestamp without time zone DEFAULT now()
);


--
-- Name: pk_megachart_parameters_used_log; Type: CONSTRAINT; Schema: toolkit; Owner: -; Tablespace: p2_toolkitdata
--

ALTER TABLE ONLY megachart_parameters_used_log
    ADD CONSTRAINT pk_megachart_parameters_used_log PRIMARY KEY (log_id, seq_id);


--
-- PostgreSQL database dump complete
--

