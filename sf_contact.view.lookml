- view: sf_contact
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: accountid
    sql: ${TABLE}.accountid

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

  - dimension: articles_viewed_hub_id_c
    sql: ${TABLE}.articles_viewed_hub_id_c

  - dimension: assessment_of_meeting_timeline_goal_c
    sql: ${TABLE}.assessment_of_meeting_timeline_goal_c

  - dimension: assistantname
    sql: ${TABLE}.assistantname

  - dimension: assistantphone
    sql: ${TABLE}.assistantphone

  - dimension: bi_interest_c
    sql: ${TABLE}.bi_interest_c

  - dimension: bi_software_analytical_languages_c
    sql: ${TABLE}.bi_software_analytical_languages_c

  - dimension: birthdate
    sql: ${TABLE}.birthdate

  - dimension: bizible_ad_group_c
    sql: ${TABLE}.bizible_ad_group_c

  - dimension: bizible_adwords_campaign_c
    sql: ${TABLE}.bizible_adwords_campaign_c

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

  - dimension: comments_on_current_bi_system_c
    sql: ${TABLE}.comments_on_current_bi_system_c

  - dimension: company_type_c
    sql: ${TABLE}.company_type_c

  - dimension: contact_type_c
    sql: ${TABLE}.contact_type_c

  - dimension: content_download_c
    sql: ${TABLE}.content_download_c

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

  - dimension: department
    sql: ${TABLE}.department

  - dimension: department_picklist_c
    sql: ${TABLE}.department_picklist_c

  - dimension: describe_ideal_bi_system_c
    sql: ${TABLE}.describe_ideal_bi_system_c

  - dimension: description
    sql: ${TABLE}.description

  - dimension: dietary_restrictions_c
    sql: ${TABLE}.dietary_restrictions_c

  - dimension: email
    sql: ${TABLE}.email

  - dimension: emailbounceddate
    sql: ${TABLE}.emailbounceddate

  - dimension: emailbouncedreason
    sql: ${TABLE}.emailbouncedreason

  - dimension: experience_with_looker_c
    sql: ${TABLE}.experience_with_looker_c

  - dimension: experience_with_lookml_c
    sql: ${TABLE}.experience_with_lookml_c

  - dimension: experience_with_sql_c
    sql: ${TABLE}.experience_with_sql_c

  - dimension: fax
    sql: ${TABLE}.fax

  - dimension: firstname
    sql: ${TABLE}.firstname

  - dimension: flipbooks_viewed_hub_id_c
    sql: ${TABLE}.flipbooks_viewed_hub_id_c

  - dimension: grouping_c
    sql: ${TABLE}.grouping_c

  - dimension: homephone
    sql: ${TABLE}.homephone

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

  - dimension: infer_encoded_rating_c
    sql: ${TABLE}.infer_encoded_rating_c

  - dimension: infer_infer_rating_c
    sql: ${TABLE}.infer_infer_rating_c

  - dimension: infer_infer_score_c
    sql: ${TABLE}.infer_infer_score_c

  - dimension: infer_score_index_c
    sql: ${TABLE}.infer_score_index_c

  - dimension: infer_score_object_id_c
    sql: ${TABLE}.infer_score_object_id_c

  - dimension: infer_score_snapshot_c
    sql: ${TABLE}.infer_score_snapshot_c

  - dimension: inferp_infer_personas_c
    sql: ${TABLE}.inferp_infer_personas_c

  - dimension: intro_meeting_c
    sql: ${TABLE}.intro_meeting_c

  - dimension: isdeleted
    sql: ${TABLE}.isdeleted

  - dimension: isemailbounced
    sql: ${TABLE}.isemailbounced

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

  - dimension: lastcurequestdate
    sql: ${TABLE}.lastcurequestdate

  - dimension: lastcuupdatedate
    sql: ${TABLE}.lastcuupdatedate

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

  - dimension: leadsource
    sql: ${TABLE}.leadsource

  - dimension: leandata_tag_c
    sql: ${TABLE}.leandata_tag_c

  - dimension: lid_linkedin_company_id_c
    sql: ${TABLE}.lid_linkedin_company_id_c

  - dimension: lid_linkedin_member_token_c
    sql: ${TABLE}.lid_linkedin_member_token_c

  - dimension: linkedin_profile_c
    sql: ${TABLE}.linkedin_profile_c

  - dimension: looker_analyst_rating_c
    sql: ${TABLE}.looker_analyst_rating_c

  - dimension: mailingcity
    sql: ${TABLE}.mailingcity

  - dimension: mailingcountry
    sql: ${TABLE}.mailingcountry

  - dimension: mailinglatitude
    sql: ${TABLE}.mailinglatitude

  - dimension: mailinglongitude
    sql: ${TABLE}.mailinglongitude

  - dimension: mailingpostalcode
    sql: ${TABLE}.mailingpostalcode

  - dimension: mailingstate
    sql: ${TABLE}.mailingstate

  - dimension: mailingstreet
    sql: ${TABLE}.mailingstreet

  - dimension: masterrecordid
    sql: ${TABLE}.masterrecordid

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

  - dimension: mkto_si_last_interesting_moment_c
    sql: ${TABLE}.mkto_si_last_interesting_moment_c

  - dimension: mkto_si_last_interesting_moment_date_c
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

  - dimension: mobilephone
    sql: ${TABLE}.mobilephone

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

  - dimension: non_relational_data_store_c
    sql: ${TABLE}.non_relational_data_store_c

  - dimension: number_of_employees_c
    sql: ${TABLE}.number_of_employees_c

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

  - dimension: othercity
    sql: ${TABLE}.othercity

  - dimension: othercountry
    sql: ${TABLE}.othercountry

  - dimension: otherlatitude
    sql: ${TABLE}.otherlatitude

  - dimension: otherlongitude
    sql: ${TABLE}.otherlongitude

  - dimension: otherphone
    sql: ${TABLE}.otherphone

  - dimension: otherpostalcode
    sql: ${TABLE}.otherpostalcode

  - dimension: otherstate
    sql: ${TABLE}.otherstate

  - dimension: otherstreet
    sql: ${TABLE}.otherstreet

  - dimension: ownerid
    sql: ${TABLE}.ownerid

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: posts_viewed_hub_id_c
    sql: ${TABLE}.posts_viewed_hub_id_c

  - dimension: ppc_campaign_c
    sql: ${TABLE}.ppc_campaign_c

  - dimension: presentations_viewed_hub_id_c
    sql: ${TABLE}.presentations_viewed_hub_id_c

  - dimension: primary_bi_use_case_c
    sql: ${TABLE}.primary_bi_use_case_c

  - dimension: primary_contact_c
    sql: ${TABLE}.primary_contact_c

  - dimension: primary_contact_on_opportunity_c
    sql: ${TABLE}.primary_contact_on_opportunity_c

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

  - dimension: region_c
    sql: ${TABLE}.region_c

  - dimension: related_to_an_opportunity_c
    sql: ${TABLE}.related_to_an_opportunity_c

  - dimension: relational_data_store_c
    sql: ${TABLE}.relational_data_store_c

  - dimension: repeat_purchase_c
    sql: ${TABLE}.repeat_purchase_c

  - dimension: reportstoid
    sql: ${TABLE}.reportstoid

  - dimension: requests_for_sql_queries_c
    sql: ${TABLE}.requests_for_sql_queries_c

  - dimension: rh_currency_test_c
    sql: ${TABLE}.rh_currency_test_c

  - dimension: rh_describe_c
    sql: ${TABLE}.rh_describe_c

  - dimension: rh_formula_test_c
    sql: ${TABLE}.rh_formula_test_c

  - dimension: rh_integer_test_c
    sql: ${TABLE}.rh_integer_test_c

  - dimension: salutation
    sql: ${TABLE}.salutation

  - dimension: sdr_name_c
    sql: ${TABLE}.sdr_name_c

  - dimension: source_most_recent_c
    sql: ${TABLE}.source_most_recent_c

  - dimension: sql_dialects_c
    sql: ${TABLE}.sql_dialects_c

  - dimension: sql_expertise_c
    sql: ${TABLE}.sql_expertise_c

  - dimension: sql_request_turn_around_time_c
    sql: ${TABLE}.sql_request_turn_around_time_c

  - dimension: subscribe_events_c
    sql: ${TABLE}.subscribe_events_c

  - dimension: subscribe_newsletter_c
    sql: ${TABLE}.subscribe_newsletter_c

  - dimension: survey_status_c
    sql: ${TABLE}.survey_status_c

  - dimension_group: systemmodstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.systemmodstamp

  - dimension: territory_c
    sql: ${TABLE}.territory_c

  - dimension: time_frame_c
    sql: ${TABLE}.time_frame_c

  - dimension: title
    sql: ${TABLE}.title

  - dimension: tweets_viewed_hub_id_c
    sql: ${TABLE}.tweets_viewed_hub_id_c

  - dimension: venture_backed_tech_vbt_c
    sql: ${TABLE}.venture_backed_tech_vbt_c

  - dimension: venture_capital_funding_amount_c
    sql: ${TABLE}.venture_capital_funding_amount_c

  - dimension: videos_viewed_hub_id_c
    sql: ${TABLE}.videos_viewed_hub_id_c

  - dimension: write_sql_by_hand_c
    sql: ${TABLE}.write_sql_by_hand_c

  - dimension: year_founded_c
    sql: ${TABLE}.year_founded_c

  - dimension: zendesk_iscreatedupdatedflag_c
    sql: ${TABLE}.zendesk_iscreatedupdatedflag_c

  - dimension_group: zendesk_last_sync_date_c
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.zendesk_last_sync_date_c

  - dimension: zendesk_last_sync_status_c
    sql: ${TABLE}.zendesk_last_sync_status_c

  - dimension: zendesk_notes_c
    sql: ${TABLE}.zendesk_notes_c

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

  - dimension: zoom_zi_importeddate_c
    sql: ${TABLE}.zoom_zi_importeddate_c

  - dimension: zoom_zi_person_c
    sql: ${TABLE}.zoom_zi_person_c

  - measure: count
    type: count
    drill_fields: [id, assistantname, lastname, firstname, name]

