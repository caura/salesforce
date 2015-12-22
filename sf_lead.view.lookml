# createddate -> created_at
- view: sf_lead
  fields:

# DIMENSIONS #

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: account_c
    sql: ${TABLE}.account_c

  - dimension: additional_comments_c
    sql: ${TABLE}.additional_comments_c

  - dimension: analyst_assigned_c
    sql: ${TABLE}.analyst_assigned_c

  - dimension: analyst_communication_effectiveness_c
    sql: ${TABLE}.analyst_communication_effectiveness_c

  - dimension: analyst_name_c
    sql: ${TABLE}.analyst_name_c

  - dimension: analytics_process_c
    sql: ${TABLE}.analytics_process_c

  - dimension: annualrevenue
    sql: ${TABLE}.annualrevenue

  - dimension: answered_pre_demo_questions_c
    sql: ${TABLE}.answered_pre_demo_questions_c

  - dimension: assessment_of_meeting_timeline_goal_c
    sql: ${TABLE}.assessment_of_meeting_timeline_goal_c

  - dimension: bi_interest_c
    sql: ${TABLE}.bi_interest_c

  - dimension: bi_software_analytical_languages_c
    sql: ${TABLE}.bi_software_analytical_languages_c

  - dimension: bizible_ad_group_c
    sql: ${TABLE}.bizible_ad_group_c

  - dimension: bizible_adwords_campaign_c
    sql: ${TABLE}.bizible_adwords_campaign_c

  - dimension: bizible_bizible_userid_c
    sql: ${TABLE}.bizible_bizible_userid_c

  - dimension: bizible_city_c
    sql: ${TABLE}.bizible_city_c

  - dimension: bizible_country_c
    sql: ${TABLE}.bizible_country_c

  - dimension: bizible_data_c
    sql: ${TABLE}.bizible_data_c

  - dimension: bizible_device_c
    sql: ${TABLE}.bizible_device_c

  - dimension: bizible_keyword_c
    sql: ${TABLE}.bizible_keyword_c

  - dimension: bizible_landingpage_c
    sql: ${TABLE}.bizible_landingpage_c

  - dimension: bizible_medium_c
    sql: ${TABLE}.bizible_medium_c

  - dimension: bizible_referrerpage_c
    sql: ${TABLE}.bizible_referrerpage_c

  - dimension: bizible_region_c
    sql: ${TABLE}.bizible_region_c

  - dimension: bizible_search_phrase_c
    sql: ${TABLE}.bizible_search_phrase_c

  - dimension: bizible_text_ad_c
    sql: ${TABLE}.bizible_text_ad_c

  - dimension: bizible_websource_c
    sql: ${TABLE}.bizible_websource_c

  - dimension: city
    sql: ${TABLE}.city

  - dimension: comments_on_current_bi_system_c
    sql: ${TABLE}.comments_on_current_bi_system_c

  - dimension: company
    sql: ${TABLE}.company

  - dimension: company_type_c
    sql: ${TABLE}.company_type_c

  - dimension: companydunsnumber
    sql: ${TABLE}.companydunsnumber

  - dimension: competition_being_reviewed_c
    sql: ${TABLE}.competition_being_reviewed_c

  - dimension: competition_installed_c
    sql: ${TABLE}.competition_installed_c

  - dimension: content_download_c
    sql: ${TABLE}.content_download_c

  - dimension: convertedaccountid
    sql: ${TABLE}.convertedaccountid

  - dimension: convertedcontactid
    sql: ${TABLE}.convertedcontactid

  - dimension: converteddate
    sql: ${TABLE}.converteddate

  - dimension: convertedopportunityid
    sql: ${TABLE}.convertedopportunityid

  - dimension: country
    sql: ${TABLE}.country

  - dimension: createdbyid
    sql: ${TABLE}.createdbyid

  - dimension_group: createddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createddate

  - dimension: current_customer_c
    sql: ${TABLE}.current_customer_c

  - dimension: currently_using_bi_software_c
    sql: ${TABLE}.currently_using_bi_software_c

  - dimension: customer_focus_c
    sql: ${TABLE}.customer_focus_c

  - dimension: department_c
    sql: ${TABLE}.department_c

  - dimension: description
    sql: ${TABLE}.description

  - dimension: dietary_restrictions_c
    sql: ${TABLE}.dietary_restrictions_c

  - dimension: disqualified_reason_c
    sql: ${TABLE}.disqualified_reason_c

  - dimension: email
    sql: ${TABLE}.email

  - dimension: emailbounceddate
    sql: ${TABLE}.emailbounceddate

  - dimension: emailbouncedreason
    sql: ${TABLE}.emailbouncedreason

  - dimension: estimated_close_date_c
    sql: ${TABLE}.estimated_close_date_c

  - dimension: estimated_contract_value_c
    sql: ${TABLE}.estimated_contract_value_c

  - dimension: experience_with_looker_c
    sql: ${TABLE}.experience_with_looker_c

  - dimension: experience_with_lookml_c
    sql: ${TABLE}.experience_with_lookml_c

  - dimension: experience_with_sql_c
    sql: ${TABLE}.experience_with_sql_c

  - dimension: firstname
    sql: ${TABLE}.firstname

  - dimension: geographic_focus_c
    sql: ${TABLE}.geographic_focus_c

  - dimension: grouping_c
    sql: ${TABLE}.grouping_c

  - dimension: how_did_you_first_hear_about_looker_c
    sql: ${TABLE}.how_did_you_first_hear_about_looker_c

  - dimension: ibp_ifbyphonecallid_c
    sql: ${TABLE}.ibp_ifbyphonecallid_c

  - dimension: implementation_current_state_c
    sql: ${TABLE}.implementation_current_state_c

  - dimension: inbound_form_fillout_c
    sql: ${TABLE}.inbound_form_fillout_c

  - dimension: inbound_form_type_c
    sql: ${TABLE}.inbound_form_type_c

  - dimension: industry
    sql: ${TABLE}.industry

  - dimension: infer_encoded_rating_c
    sql: ${TABLE}.infer_encoded_rating_c

  - dimension: infer_infer_rating_c
    sql: ${TABLE}.infer_infer_rating_c

  - dimension: infer_infer_score_c
    sql: ${TABLE}.infer_infer_score_c

  - dimension: infer_reports_infer_converted_to_opp_c
    sql: ${TABLE}.infer_reports_infer_converted_to_opp_c

  - dimension: infer_reports_infer_is_a_lead_c
    sql: ${TABLE}.infer_reports_infer_is_a_lead_c

  - dimension: infer_score_index_c
    sql: ${TABLE}.infer_score_index_c

  - dimension: infer_score_object_id_c
    sql: ${TABLE}.infer_score_object_id_c

  - dimension: infer_score_snapshot_c
    sql: ${TABLE}.infer_score_snapshot_c

  - dimension: inferp_infer_personas_c
    sql: ${TABLE}.inferp_infer_personas_c

  - dimension: interest_in_partnering_c
    sql: ${TABLE}.interest_in_partnering_c

  - dimension: intro_meeting_c
    sql: ${TABLE}.intro_meeting_c

  - dimension: isconverted
    sql: ${TABLE}.isconverted

  - dimension: isdeleted
    sql: ${TABLE}.isdeleted

  - dimension: isunreadbyowner
    sql: ${TABLE}.isunreadbyowner

  - dimension: jigsawcontactid
    sql: ${TABLE}.jigsawcontactid

  - dimension: job_function_c
    sql: ${TABLE}.job_function_c

  - dimension: last_download_name_c
    sql: ${TABLE}.last_download_name_c

  - dimension: last_sfdc_campaign_id_c
    sql: ${TABLE}.last_sfdc_campaign_id_c

  - dimension: lastactivitydate
    sql: ${TABLE}.lastactivitydate

  - dimension: lastmodifiedbyid
    sql: ${TABLE}.lastmodifiedbyid

  - dimension_group: lastmodifieddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.lastmodifieddate

  - dimension: lastname
    sql: ${TABLE}.lastname

  - dimension: lastreferenceddate
    sql: ${TABLE}.lastreferenceddate

  - dimension: lastvieweddate
    sql: ${TABLE}.lastvieweddate

  - dimension: latitude
    sql: ${TABLE}.latitude

  - dimension: lead_processing_status_c
    sql: ${TABLE}.lead_processing_status_c

  - dimension: lead_routing_pre_assigned_c
    sql: ${TABLE}.lead_routing_pre_assigned_c

  - dimension: leaddomain_c
    sql: ${TABLE}.leaddomain_c

  - dimension: leadsource
    sql: ${TABLE}.leadsource

  - dimension: leandata_has_matched_c
    sql: ${TABLE}.leandata_has_matched_c

  - dimension: leandata_marketing_sys_created_date_c
    sql: ${TABLE}.leandata_marketing_sys_created_date_c

  - dimension: leandata_matched_account_annual_revenue_c
    sql: ${TABLE}.leandata_matched_account_annual_revenue_c

  - dimension: leandata_matched_account_billing_country_c
    sql: ${TABLE}.leandata_matched_account_billing_country_c

  - dimension: leandata_matched_account_billing_postal_code_c
    sql: ${TABLE}.leandata_matched_account_billing_postal_code_c

  - dimension: leandata_matched_account_billing_state_c
    sql: ${TABLE}.leandata_matched_account_billing_state_c

  - dimension: leandata_matched_account_c
    sql: ${TABLE}.leandata_matched_account_c

  - dimension: leandata_matched_account_custom_field_c
    sql: ${TABLE}.leandata_matched_account_custom_field_c

  - dimension: leandata_matched_account_employees_c
    sql: ${TABLE}.leandata_matched_account_employees_c

  - dimension: leandata_matched_account_industry_c
    sql: ${TABLE}.leandata_matched_account_industry_c

  - dimension: leandata_matched_account_name_c
    sql: ${TABLE}.leandata_matched_account_name_c

  - dimension: leandata_matched_account_type_c
    sql: ${TABLE}.leandata_matched_account_type_c

  - dimension: leandata_matched_account_website_c
    sql: ${TABLE}.leandata_matched_account_website_c

  - dimension: leandata_matched_lead_c
    sql: ${TABLE}.leandata_matched_lead_c

  - dimension: leandata_reporting_matched_account_c
    sql: ${TABLE}.leandata_reporting_matched_account_c

  - dimension: leandata_reporting_timestamp_c
    sql: ${TABLE}.leandata_reporting_timestamp_c

  - dimension: leandata_router_status_c
    sql: ${TABLE}.leandata_router_status_c

  - dimension: leandata_routing_action_c
    sql: ${TABLE}.leandata_routing_action_c

  - dimension: leandata_routing_status_c
    sql: ${TABLE}.leandata_routing_status_c

  - dimension: leandata_salesforce_id_c
    sql: ${TABLE}.leandata_salesforce_id_c

  - dimension: leandata_search_c
    sql: ${TABLE}.leandata_search_c

  - dimension: leandata_search_index_c
    sql: ${TABLE}.leandata_search_index_c

  - dimension: leandata_tag_c
    sql: ${TABLE}.leandata_tag_c

  - dimension: lid_linkedin_company_id_c
    sql: ${TABLE}.lid_linkedin_company_id_c

  - dimension: lid_linkedin_member_token_c
    sql: ${TABLE}.lid_linkedin_member_token_c

  - dimension: linkedin_profile_c
    sql: ${TABLE}.linkedin_profile_c

  - dimension: longitude
    sql: ${TABLE}.longitude

  - dimension: looker_analyst_rating_c
    sql: ${TABLE}.looker_analyst_rating_c

  - dimension: masterrecordid
    sql: ${TABLE}.masterrecordid

  - dimension: meeting_probability_c
    sql: ${TABLE}.meeting_probability_c

  - dimension: metadata
    sql: ${TABLE}.metadata

  - dimension: migrate_to_sql_c
    sql: ${TABLE}.migrate_to_sql_c

  - dimension: mkto_acquisition_date_c
    sql: ${TABLE}.mkto_acquisition_date_c

  - dimension: mkto_acquisition_program_c
    sql: ${TABLE}.mkto_acquisition_program_c

  - dimension: mkto_acquisition_program_id_c
    sql: ${TABLE}.mkto_acquisition_program_id_c

  - dimension: mkto_inferred_city_c
    sql: ${TABLE}.mkto_inferred_city_c

  - dimension: mkto_inferred_company_c
    sql: ${TABLE}.mkto_inferred_company_c

  - dimension: mkto_inferred_country_c
    sql: ${TABLE}.mkto_inferred_country_c

  - dimension: mkto_inferred_metropolitan_area_c
    sql: ${TABLE}.mkto_inferred_metropolitan_area_c

  - dimension: mkto_inferred_phone_area_code_c
    sql: ${TABLE}.mkto_inferred_phone_area_code_c

  - dimension: mkto_inferred_postal_code_c
    sql: ${TABLE}.mkto_inferred_postal_code_c

  - dimension: mkto_inferred_state_region_c
    sql: ${TABLE}.mkto_inferred_state_region_c

  - dimension: mkto_lead_score_c
    sql: ${TABLE}.mkto_lead_score_c

  - dimension: mkto_original_referrer_c
    sql: ${TABLE}.mkto_original_referrer_c

  - dimension: mkto_original_search_engine_c
    sql: ${TABLE}.mkto_original_search_engine_c

  - dimension: mkto_original_search_phrase_c
    sql: ${TABLE}.mkto_original_search_phrase_c

  - dimension: mkto_original_source_info_c
    sql: ${TABLE}.mkto_original_source_info_c

  - dimension: mkto_original_source_type_c
    sql: ${TABLE}.mkto_original_source_type_c

  - dimension_group: mkto_si_last_interesting_moment_date_c
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.mkto_si_last_interesting_moment_date_c

  - dimension: mkto_si_last_interesting_moment_desc_c
    sql: ${TABLE}.mkto_si_last_interesting_moment_desc_c

  - dimension: mkto_si_last_interesting_moment_source_c
    sql: ${TABLE}.mkto_si_last_interesting_moment_source_c

  - dimension: mkto_si_last_interesting_moment_type_c
    sql: ${TABLE}.mkto_si_last_interesting_moment_type_c

  - dimension: mkto_si_priority_c
    sql: ${TABLE}.mkto_si_priority_c

  - dimension: mkto_si_relative_score_c
    sql: ${TABLE}.mkto_si_relative_score_c

  - dimension: mkto_si_relative_score_value_c
    sql: ${TABLE}.mkto_si_relative_score_value_c

  - dimension: mkto_si_urgency_c
    sql: ${TABLE}.mkto_si_urgency_c

  - dimension: mkto_si_urgency_value_c
    sql: ${TABLE}.mkto_si_urgency_value_c

  - dimension: most_recent_ad_group_c
    sql: ${TABLE}.most_recent_ad_group_c

  - dimension: most_recent_content_c
    sql: ${TABLE}.most_recent_content_c

  - dimension: most_recent_funding_round_name_c
    sql: ${TABLE}.most_recent_funding_round_name_c

  - dimension: most_recent_funding_round_year_c
    sql: ${TABLE}.most_recent_funding_round_year_c

  - dimension: most_recent_keyword_c
    sql: ${TABLE}.most_recent_keyword_c

  - dimension: most_recent_medium_c
    sql: ${TABLE}.most_recent_medium_c

  - dimension: most_recent_ppc_campaign_c
    sql: ${TABLE}.most_recent_ppc_campaign_c

  - dimension: most_recent_source_c
    sql: ${TABLE}.most_recent_source_c

  - dimension: name
    sql: ${TABLE}.name

  - dimension: notes_c
    sql: ${TABLE}.notes_c

  - dimension: number_of_employees_c
    sql: ${TABLE}.number_of_employees_c

  - dimension: numberofemployees
    sql: ${TABLE}.numberofemployees

  - dimension: original_ad_group_c
    sql: ${TABLE}.original_ad_group_c

  - dimension: original_content_c
    sql: ${TABLE}.original_content_c

  - dimension: original_keyword_c
    sql: ${TABLE}.original_keyword_c

  - dimension: original_medium_c
    sql: ${TABLE}.original_medium_c

  - dimension: original_source_c
    sql: ${TABLE}.original_source_c

  - dimension: ownerid
    sql: ${TABLE}.ownerid

  - dimension: partner_contact_email_c
    sql: ${TABLE}.partner_contact_email_c

  - dimension: partner_name_c
    sql: ${TABLE}.partner_name_c

  - dimension: partner_sourced_acct_c
    sql: ${TABLE}.partner_sourced_acct_c

  - dimension: partner_sourced_contact_c
    sql: ${TABLE}.partner_sourced_contact_c

  - dimension: partner_type_c
    sql: ${TABLE}.partner_type_c

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: postalcode
    sql: ${TABLE}.postalcode

  - dimension: ppc_campaign_c
    sql: ${TABLE}.ppc_campaign_c

  - dimension: pre_demo_qualification_c
    sql: ${TABLE}.pre_demo_qualification_c

  - dimension: primary_b_i_use_case_c
    sql: ${TABLE}.primary_b_i_use_case_c

  - dimension: primary_data_consumers_c
    sql: ${TABLE}.primary_data_consumers_c

  - dimension: qual_form_fillout_c
    sql: ${TABLE}.qual_form_fillout_c

  - dimension: qual_form_required_c
    sql: ${TABLE}.qual_form_required_c

  - dimension: qual_use_case_c
    sql: ${TABLE}.qual_use_case_c

  - dimension: qualified_meeting_c
    sql: ${TABLE}.qualified_meeting_c

  - dimension: quality_of_training_c
    sql: ${TABLE}.quality_of_training_c

  - dimension: quality_of_work_delivered_c
    sql: ${TABLE}.quality_of_work_delivered_c

  - dimension: recordtypeid
    sql: ${TABLE}.recordtypeid

  - dimension: region_c
    sql: ${TABLE}.region_c

  - dimension: repeat_purchase_c
    sql: ${TABLE}.repeat_purchase_c

  - dimension: requests_for_sql_queries_c
    sql: ${TABLE}.requests_for_sql_queries_c

  - dimension: sales_request_c
    sql: ${TABLE}.sales_request_c

  - dimension: salutation
    sql: ${TABLE}.salutation

  - dimension: salyq_round_robined_c
    sql: ${TABLE}.salyq_round_robined_c

  - dimension: sdr_assigned_c
    sql: ${TABLE}.sdr_assigned_c

  - dimension: sdr_email_c
    sql: ${TABLE}.sdr_email_c

  - dimension: sdr_name_c
    sql: ${TABLE}.sdr_name_c

  - dimension: service_offerings_c
    sql: ${TABLE}.service_offerings_c

  - dimension: sql_dialects_c
    sql: ${TABLE}.sql_dialects_c

  - dimension: sql_expertise_c
    sql: ${TABLE}.sql_expertise_c

  - dimension: sql_request_turn_around_time_c
    sql: ${TABLE}.sql_request_turn_around_time_c

  - dimension: state
    sql: ${TABLE}.state

  - dimension: status
    sql: ${TABLE}.status

  - dimension: street
    sql: ${TABLE}.street

  - dimension: subscribe_events_c
    sql: ${TABLE}.subscribe_events_c

  - dimension: subscribe_newsletter_c
    sql: ${TABLE}.subscribe_newsletter_c

  - dimension: suggested_meeting_date_c
    sql: ${TABLE}.suggested_meeting_date_c

  - dimension_group: systemmodstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.systemmodstamp

  - dimension: technologies_c
    sql: ${TABLE}.technologies_c

  - dimension: territory_c
    sql: ${TABLE}.territory_c

  - dimension: time_frame_c
    sql: ${TABLE}.time_frame_c

  - dimension: title
    sql: ${TABLE}.title

  - dimension: use_case_c
    sql: ${TABLE}.use_case_c

  - dimension: venture_backed_tech_vbt_c
    sql: ${TABLE}.venture_backed_tech_vbt_c

  - dimension: venture_capital_funding_amount_c
    sql: ${TABLE}.venture_capital_funding_amount_c

  - dimension: website
    sql: ${TABLE}.website

  - dimension: write_sql_by_hand_c
    sql: ${TABLE}.write_sql_by_hand_c

  - dimension: year_founded_c
    sql: ${TABLE}.year_founded_c

  - dimension: zendesk_iscreatedupdatedflag_c
    sql: ${TABLE}.zendesk_iscreatedupdatedflag_c

  - dimension: zendesk_last_sync_date_c
    sql: ${TABLE}.zendesk_last_sync_date_c

  - dimension: zendesk_last_sync_status_c
    sql: ${TABLE}.zendesk_last_sync_status_c

  - dimension: zendesk_notes_c
    sql: ${TABLE}.zendesk_notes_c

  - dimension: zendesk_organization_c
    sql: ${TABLE}.zendesk_organization_c

  - dimension: zendesk_result_c
    sql: ${TABLE}.zendesk_result_c

  - dimension: zendesk_tags_c
    sql: ${TABLE}.zendesk_tags_c

  - dimension: zendesk_zendesk_id_c
    sql: ${TABLE}.zendesk_zendesk_id_c

  - dimension: zendesk_zendesk_oldtags_c
    sql: ${TABLE}.zendesk_zendesk_oldtags_c

  - dimension: zendesk_zendesk_outofsync_c
    sql: ${TABLE}.zendesk_zendesk_outofsync_c

  - measure: count
    type: count
    drill_fields: [id, lastname, firstname, name]

