--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = dw_voice, pg_catalog;

DROP INDEX dw_voice.sam_voice_bts_index_params_dim_ux;
DROP INDEX dw_voice.sam_voice_bts_index_params_dim_i1;
ALTER TABLE ONLY dw_voice.sam_voice_bts_index_params_dim DROP CONSTRAINT sam_voice_bts_index_params_dim_pk;
DROP TABLE dw_voice.sam_voice_bts_index_params_dim;
SET search_path = dw_voice, pg_catalog;

SET default_tablespace = p2_dw_voicedata;

SET default_with_oids = false;

--
-- Name: sam_voice_bts_index_params_dim; Type: TABLE; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voicedata
--

CREATE TABLE sam_voice_bts_index_params_dim (
    sam_voice_bts_index_params_dim_id integer DEFAULT nextval('sam_voice_bts_index_params_dim_seq'::regclass) NOT NULL,
    shorter_bsm_name character varying(30) NOT NULL,
    bsc_name character varying(30) NOT NULL,
    bts integer NOT NULL,
    index integer NOT NULL,
    effective_begin date NOT NULL,
    effective_end date NOT NULL,
    md5 character(32) NOT NULL,
    bts_acl_info_align_0 character varying,
    bts_acl_info_align_1_0 character varying,
    bts_acl_info_align_1_1 character varying,
    bts_acl_info_align_1_2 character varying,
    bts_acl_info_align_2_0 character varying,
    bts_acl_info_align_2_1 character varying,
    bts_acl_info_align_3_0 character varying,
    bts_acl_info_align_3_1 character varying,
    bts_acl_info_align_4_0 character varying,
    bts_acl_info_align_4_1 character varying,
    bts_acl_info_align_5_0 character varying,
    bts_acl_info_align_5_1 character varying,
    bts_acl_info_align_6 character varying,
    bts_acl_info_align_7 character varying,
    bts_acl_info_align_8 character varying,
    bts_acl_info_align_9_0 character varying,
    bts_acl_info_align_9_1 character varying,
    bts_acl_info_align_9_2 character varying,
    bts_acl_info_cos character varying,
    bts_acl_info_cos_use character varying,
    bts_acl_info_dscp character varying,
    bts_acl_info_dst_host_type character varying,
    bts_acl_info_dst_ip character varying,
    bts_acl_info_dst_mac_addr character varying,
    bts_acl_info_dst_mac_mask character varying,
    bts_acl_info_dst_mac_mode character varying,
    bts_acl_info_dst_mask character varying,
    bts_acl_info_dst_port character varying,
    bts_acl_info_dst_port_mask character varying,
    bts_acl_info_dst_port_type character varying,
    bts_acl_info_ethertype character varying,
    bts_acl_info_ethertype_flag character varying,
    bts_acl_info_icmp_code character varying,
    bts_acl_info_icmp_code_flag character varying,
    bts_acl_info_icmp_type character varying,
    bts_acl_info_icmp_type_flag character varying,
    bts_acl_info_ip_precedence character varying,
    bts_acl_info_mac_addr character varying,
    bts_acl_info_mac_mode character varying,
    bts_acl_info_name character varying,
    bts_acl_info_other_type character varying,
    bts_acl_info_permission character varying,
    bts_acl_info_profile_mode character varying,
    bts_acl_info_protocol_id character varying,
    bts_acl_info_protocol_type character varying,
    bts_acl_info_seq_no character varying,
    bts_acl_info_src_host_type character varying,
    bts_acl_info_src_ip character varying,
    bts_acl_info_src_mac_addr character varying,
    bts_acl_info_src_mac_mask character varying,
    bts_acl_info_src_mac_mode character varying,
    bts_acl_info_src_mask character varying,
    bts_acl_info_src_port character varying,
    bts_acl_info_src_port_mask character varying,
    bts_acl_info_src_port_type character varying,
    bts_acl_info_tcp_control character varying,
    bts_acl_info_type character varying,
    bts_acl_info_vlan_te character varying,
    bts_acl_info_vlan_use character varying,
    bts_cfm_ais_ais_status character varying,
    bts_cfm_ais_domain_name character varying,
    bts_cfm_ais_interval character varying,
    bts_cfm_ais_level_id character varying,
    bts_cfm_ais_mep_id character varying,
    bts_cfm_ais_rmep_mac_address character varying,
    bts_cfm_ais_status character varying,
    bts_cfm_ais_vlan_id character varying,
    bts_cfm_cc_info_align_0 character varying,
    bts_cfm_cc_info_cc_status character varying,
    bts_cfm_cc_info_cc_type character varying,
    bts_cfm_cc_info_domain_name character varying,
    bts_cfm_cc_info_interval character varying,
    bts_cfm_cc_info_mep_id character varying,
    bts_cfm_cc_info_port_id character varying,
    bts_cfm_cc_info_reserved character varying,
    bts_cfm_cc_info_rmep_id character varying,
    bts_cfm_cc_info_status character varying,
    bts_cfm_cc_info_vlan_id character varying,
    bts_cfm_domain_info_ais_suppress_conf character varying,
    bts_cfm_domain_info_align_0 character varying,
    bts_cfm_domain_info_domain_name character varying,
    bts_cfm_domain_info_level_id character varying,
    bts_cfm_domain_info_ma_name character varying,
    bts_cfm_domain_info_ma_type character varying,
    bts_cfm_domain_info_mip_create_option character varying,
    bts_cfm_domain_info_port_id character varying,
    bts_cfm_domain_info_reserved character varying,
    bts_cfm_domain_info_shelf_id character varying,
    bts_cfm_domain_info_slot_id character varying,
    bts_cfm_domain_info_status character varying,
    bts_cfm_domain_info_vlan_id character varying,
    bts_cfm_mep_info_align_0 character varying,
    bts_cfm_mep_info_domain_name character varying,
    bts_cfm_mep_info_mep_active character varying,
    bts_cfm_mep_info_mep_id character varying,
    bts_cfm_mep_info_port_id character varying,
    bts_cfm_mep_info_reserved character varying,
    bts_cfm_mep_info_status character varying,
    bts_cfm_mep_info_vlan_id character varying,
    bts_cfm_rmep_info_align_0_0 character varying,
    bts_cfm_rmep_info_align_0_1 character varying,
    bts_cfm_rmep_info_domain_name character varying,
    bts_cfm_rmep_info_mac_address character varying,
    bts_cfm_rmep_info_reserved character varying,
    bts_cfm_rmep_info_rmep_id character varying,
    bts_cfm_rmep_info_status character varying,
    bts_cfm_rmep_info_vlan_id character varying,
    bts_cfm_tst_domain_name character varying,
    bts_cfm_tst_in_service_flag character varying,
    bts_cfm_tst_interval character varying,
    bts_cfm_tst_is_id character varying,
    bts_cfm_tst_mep_id character varying,
    bts_cfm_tst_pattern character varying,
    bts_cfm_tst_rmep_id character varying,
    bts_cfm_tst_status character varying,
    bts_cfm_tst_tst_type character varying,
    bts_cfm_tst_vlan_id character varying,
    bts_ip_address_attribute_1x_bearer character varying,
    bts_ip_address_attribute_1x_signal character varying,
    bts_ip_address_attribute_do_bearer character varying,
    bts_ip_address_attribute_do_signal character varying,
    bts_ip_address_attribute_oam character varying,
    bts_ip_address_intf_type character varying,
    bts_ip_address_ipv4_address character varying,
    bts_ip_address_ipv4_prefix_length integer,
    bts_ip_address_port_id integer,
    bts_ip_address_shelf_id integer,
    bts_ip_address_slot_id integer,
    bts_ip_address_status character varying,
    bts_ip_address_vlan_id integer,
    bts_static_route_distance integer,
    bts_static_route_gw_address character varying,
    bts_static_route_ipv4_prefix character varying,
    bts_static_route_ipv4_prefix_length integer,
    bts_static_route_status character varying,
    bts_vlan_admin_state character varying,
    bts_vlan_intf_type character varying,
    bts_vlan_port_id integer,
    bts_vlan_shelf_id integer,
    bts_vlan_slot_id integer,
    bts_vlan_status character varying,
    bts_vlan_vlan_id integer
);


SET default_tablespace = p2_dw_voiceindex;

--
-- Name: sam_voice_bts_index_params_dim_pk; Type: CONSTRAINT; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

ALTER TABLE ONLY sam_voice_bts_index_params_dim
    ADD CONSTRAINT sam_voice_bts_index_params_dim_pk PRIMARY KEY (sam_voice_bts_index_params_dim_id);


--
-- Name: sam_voice_bts_index_params_dim_i1; Type: INDEX; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

CREATE INDEX sam_voice_bts_index_params_dim_i1 ON sam_voice_bts_index_params_dim USING btree (shorter_bsm_name, bts, effective_begin, effective_end);


--
-- Name: sam_voice_bts_index_params_dim_ux; Type: INDEX; Schema: dw_voice; Owner: -; Tablespace: p2_dw_voiceindex
--

CREATE UNIQUE INDEX sam_voice_bts_index_params_dim_ux ON sam_voice_bts_index_params_dim USING btree (shorter_bsm_name, bsc_name, bts, index, effective_begin);


--
-- PostgreSQL database dump complete
--

