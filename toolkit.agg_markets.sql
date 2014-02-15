-- Table: toolkit.agg_markets

-- DROP TABLE toolkit.agg_markets;

CREATE TABLE toolkit.agg_markets
(
  market character varying(30) NOT NULL,
  bsm_wait_count integer NOT NULL,
  wait_timeout_seconds integer NOT NULL,
  processing_order integer DEFAULT 100,
  logical_market character(1) NOT NULL DEFAULT 'N'::bpchar,
  agg_data_avail_goal integer,
  wait_minutes_from_midnight smallint,
  bobs_fake_column character varying,
  CONSTRAINT agg_markets_pkey PRIMARY KEY (market)
  USING INDEX TABLESPACE p2_toolkitdata
)
WITH (
  OIDS=FALSE
)
TABLESPACE p2_toolkitdata;
ALTER TABLE toolkit.agg_markets
  OWNER TO samsung;
GRANT SELECT ON TABLE toolkit.agg_markets TO samsungreporting;
GRANT SELECT ON TABLE toolkit.agg_markets TO samsungsu;
GRANT SELECT ON TABLE toolkit.agg_markets TO samsungtoolkit;
GRANT ALL ON TABLE toolkit.agg_markets TO samsung;
