- view: sf_account
  sql_table_name: public.sf_account
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: account_api_id_c
    sql: ${TABLE}.account_api_id_c

  - dimension: account_status_c
    sql: ${TABLE}.account_status_c

  - dimension: account_status_description_c
    sql: ${TABLE}.account_status_description_c

  - dimension: annualrevenue
    sql: ${TABLE}.annualrevenue

  - dimension: billingcity
    sql: ${TABLE}.billingcity

  - dimension: billingcountry
    sql: ${TABLE}.billingcountry

  - dimension: billinglatitude
    sql: ${TABLE}.billinglatitude

  - dimension: billinglongitude
    sql: ${TABLE}.billinglongitude

  - dimension: billingpostalcode
    sql: ${TABLE}.billingpostalcode

  - dimension: billingstate
    sql: ${TABLE}.billingstate

  - dimension: billingstreet
    sql: ${TABLE}.billingstreet

  - dimension: campaign_c
    sql: ${TABLE}.campaign_c

  - dimension: case_study_c
    sql: ${TABLE}.case_study_c

  - dimension: category_c
    sql: ${TABLE}.category_c

  - dimension: company_size_linkedin_c
    sql: ${TABLE}.company_size_linkedin_c

  - dimension: company_type_c
    sql: ${TABLE}.company_type_c

  - dimension: competitor_s_c
    sql: ${TABLE}.competitor_s_c

  - dimension: comptitive_s_displaced_c
    sql: ${TABLE}.comptitive_s_displaced_c

  - dimension: createdbyid
    sql: ${TABLE}.createdbyid

  - dimension_group: createddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createddate

  - dimension: current_arr_c
    sql: ${TABLE}.current_arr_c

  - dimension: current_customer_c
    sql: ${TABLE}.current_customer_c

  - dimension: current_mrr_c
    sql: ${TABLE}.current_mrr_c

  - dimension: customer_cancelled_last_days_c
    sql: ${TABLE}.customer_cancelled_last_days_c

  - dimension: customer_end_date_c
    sql: ${TABLE}.customer_end_date_c

  - dimension: customer_focus_c
    sql: ${TABLE}.customer_focus_c

  - dimension: customer_reference_c
    sql: ${TABLE}.customer_reference_c

  - dimension: customer_start_date_c
    sql: ${TABLE}.customer_start_date_c

  - dimension: customer_testimonial_c
    sql: ${TABLE}.customer_testimonial_c

  - dimension: data_sources_c
    sql: ${TABLE}.data_sources_c

  - dimension: defined_initiative_c
    sql: ${TABLE}.defined_initiative_c

  - dimension: defined_initiative_comments_c
    sql: ${TABLE}.defined_initiative_comments_c

  - dimension: defined_next_step_c
    sql: ${TABLE}.defined_next_step_c

  - dimension: defined_next_steps_comments_c
    sql: ${TABLE}.defined_next_steps_comments_c

  - dimension: demo_environment_c
    sql: ${TABLE}.demo_environment_c

  - dimension: departments_using_c
    sql: ${TABLE}.departments_using_c

  - dimension: description
    sql: ${TABLE}.description

  - dimension: domain_c
    sql: ${TABLE}.domain_c

  - dimension: dunsnumber
    sql: ${TABLE}.dunsnumber

  - dimension: embedded_c
    sql: ${TABLE}.embedded_c

  - dimension: engagement_stage_c
    sql: ${TABLE}.engagement_stage_c

  - dimension: fax
    sql: ${TABLE}.fax

  - dimension: geographic_focus_c
    sql: ${TABLE}.geographic_focus_c

  - dimension: harvest_harvestclientid_c
    sql: ${TABLE}.harvest_harvestclientid_c

  - dimension: has_open_opportunity_c
    sql: ${TABLE}.has_open_opportunity_c

  - dimension: holdout_account_c
    sql: ${TABLE}.holdout_account_c

  - dimension: hosted_c
    sql: ${TABLE}.hosted_c

  - dimension: industry
    sql: ${TABLE}.industry

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

  - dimension: interest_in_partnering_c
    sql: ${TABLE}.interest_in_partnering_c

  - dimension: intro_meeting_date_c
    sql: ${TABLE}.intro_meeting_date_c

  - dimension: is_fortune_c
    sql: ${TABLE}.is_fortune_c

  - dimension: isdeleted
    sql: ${TABLE}.isdeleted

  - dimension: ispartner
    sql: ${TABLE}.ispartner

  - dimension: issue_url_c
    sql: ${TABLE}.issue_url_c

  - dimension: iv_insideview_created_c
    sql: ${TABLE}.iv_insideview_created_c

  - dimension: iv_insideview_date_last_updated_c
    sql: ${TABLE}.iv_insideview_date_last_updated_c

  - dimension: iv_insideview_user_last_updated_c
    sql: ${TABLE}.iv_insideview_user_last_updated_c

  - dimension: jigsawcompanyid
    sql: ${TABLE}.jigsawcompanyid

  - dimension: key_account_c
    sql: ${TABLE}.key_account_c

  - dimension: last_meeting_date_acct_mgmt_c
    sql: ${TABLE}.last_meeting_date_acct_mgmt_c

  - dimension: last_meeting_details_c
    sql: ${TABLE}.last_meeting_details_c

  - dimension: lastactivitydate
    sql: ${TABLE}.lastactivitydate

  - dimension: lastmodifiedbyid
    sql: ${TABLE}.lastmodifiedbyid

  - dimension_group: lastmodifieddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.lastmodifieddate

  - dimension: lastreferenceddate
    sql: ${TABLE}.lastreferenceddate

  - dimension: lastvieweddate
    sql: ${TABLE}.lastvieweddate

  - dimension: leandata_ld_emaildomain_c
    sql: ${TABLE}.leandata_ld_emaildomain_c

  - dimension: leandata_ld_emaildomains_c
    sql: ${TABLE}.leandata_ld_emaildomains_c

  - dimension: leandata_search_c
    sql: ${TABLE}.leandata_search_c

  - dimension: leandata_tag_c
    sql: ${TABLE}.leandata_tag_c

  - dimension: licensed_database_s_c
    sql: ${TABLE}.licensed_database_s_c

  - dimension: lid_linkedin_company_id_c
    sql: ${TABLE}.lid_linkedin_company_id_c

  - dimension: linkedin_c
    sql: ${TABLE}.linkedin_c

  - dimension: logo_value_c
    sql: ${TABLE}.logo_value_c

  - dimension: looker_page_partner_com_c
    sql: ${TABLE}.looker_page_partner_com_c

  - dimension: lookml_template_github_c
    sql: ${TABLE}.lookml_template_github_c

  - dimension: lookml_template_oppty_c
    sql: ${TABLE}.lookml_template_oppty_c

  - dimension: market_segment_c
    sql: ${TABLE}.market_segment_c

  - dimension: masterrecordid
    sql: ${TABLE}.masterrecordid

  - dimension: metadata
    sql: ${TABLE}.metadata

  - dimension: most_recent_funding_round_name_c
    sql: ${TABLE}.most_recent_funding_round_name_c

  - dimension: most_recent_funding_round_year_c
    sql: ${TABLE}.most_recent_funding_round_year_c

  - dimension: naicscode
    sql: ${TABLE}.naicscode

  - dimension: naicsdesc
    sql: ${TABLE}.naicsdesc

  - dimension: name
    sql: ${TABLE}.name

  - dimension: nda_signed_c
    sql: ${TABLE}.nda_signed_c

  - dimension: no_of_employees_range_c
    sql: ${TABLE}.no_of_employees_range_c

  - dimension: number_of_employees_c
    sql: ${TABLE}.number_of_employees_c

  - dimension: numberofemployees
    sql: ${TABLE}.numberofemployees

  - dimension: official_partner_date_c
    sql: ${TABLE}.official_partner_date_c

  - dimension: opt_in_press_media_c
    sql: ${TABLE}.opt_in_press_media_c

  - dimension: other_strategic_value_c
    sql: ${TABLE}.other_strategic_value_c

  - dimension: other_strategic_value_comments_c
    sql: ${TABLE}.other_strategic_value_comments_c

  - dimension: ownerid
    sql: ${TABLE}.ownerid

  - dimension: parentid
    sql: ${TABLE}.parentid

  - dimension: partner_description_c
    sql: ${TABLE}.partner_description_c

  - dimension: partner_level_c
    sql: ${TABLE}.partner_level_c

  - dimension: partner_page_looker_com_c
    sql: ${TABLE}.partner_page_looker_com_c

  - dimension: partner_referral_campaign_c
    sql: ${TABLE}.partner_referral_campaign_c

  - dimension: partner_type_c
    sql: ${TABLE}.partner_type_c

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: priority_c
    sql: ${TABLE}.priority_c

  - dimension: publicity_limitation_description_c
    sql: ${TABLE}.publicity_limitation_description_c

  - dimension: recommended_for_sales_c
    sql: ${TABLE}.recommended_for_sales_c

  - dimension: recordtypeid
    sql: ${TABLE}.recordtypeid

  - dimension: referral_contract_c
    sql: ${TABLE}.referral_contract_c

  - dimension: reseller_contract_c
    sql: ${TABLE}.reseller_contract_c

  - dimension: sales_reference_able_c
    sql: ${TABLE}.sales_reference_able_c

  - dimension: service_offerings_c
    sql: ${TABLE}.service_offerings_c

  - dimension: shippingcity
    sql: ${TABLE}.shippingcity

  - dimension: shippingcountry
    sql: ${TABLE}.shippingcountry

  - dimension: shippinglatitude
    sql: ${TABLE}.shippinglatitude

  - dimension: shippinglongitude
    sql: ${TABLE}.shippinglongitude

  - dimension: shippingpostalcode
    sql: ${TABLE}.shippingpostalcode

  - dimension: shippingstate
    sql: ${TABLE}.shippingstate

  - dimension: shippingstreet
    sql: ${TABLE}.shippingstreet

  - dimension: signed_agreement_c
    sql: ${TABLE}.signed_agreement_c

  - dimension: solution_area_s_c
    sql: ${TABLE}.solution_area_s_c

  - dimension: solution_sheet_c
    sql: ${TABLE}.solution_sheet_c

  - dimension: sponsor_exec_c
    sql: ${TABLE}.sponsor_exec_c

  - dimension_group: systemmodstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.systemmodstamp

  - dimension: technology_fit_c
    sql: ${TABLE}.technology_fit_c

  - dimension: technology_fit_comments_c
    sql: ${TABLE}.technology_fit_comments_c

  - dimension: tradestyle
    sql: ${TABLE}.tradestyle

  - dimension: trial_requested_comments_c
    sql: ${TABLE}.trial_requested_comments_c

  - dimension: trial_requested_days_c
    sql: ${TABLE}.trial_requested_days_c

  - dimension: type
    sql: ${TABLE}.type

  - dimension: use_case_description_s_c
    sql: ${TABLE}.use_case_description_s_c

  - dimension: venture_backed_tech_vbt_c
    sql: ${TABLE}.venture_backed_tech_vbt_c

  - dimension: venture_capital_funding_amount_c
    sql: ${TABLE}.venture_capital_funding_amount_c

  - dimension: vertical_c
    sql: ${TABLE}.vertical_c

  - dimension: website
    sql: ${TABLE}.website

  - dimension: year_founded_c
    sql: ${TABLE}.year_founded_c

  - dimension: yearstarted
    sql: ${TABLE}.yearstarted

  - dimension: zendesk_createdupdatedflag_c
    sql: ${TABLE}.zendesk_createdupdatedflag_c

  - dimension: zendesk_domain_mapping_c
    sql: ${TABLE}.zendesk_domain_mapping_c

  - dimension: zendesk_last_sync_date_c
    sql: ${TABLE}.zendesk_last_sync_date_c

  - dimension: zendesk_last_sync_status_c
    sql: ${TABLE}.zendesk_last_sync_status_c

  - dimension: zendesk_notes_c
    sql: ${TABLE}.zendesk_notes_c

  - dimension: zendesk_result_c
    sql: ${TABLE}.zendesk_result_c

  - dimension: zendesk_tags_c
    sql: ${TABLE}.zendesk_tags_c

  - dimension: zendesk_zendesk_oldtags_c
    sql: ${TABLE}.zendesk_zendesk_oldtags_c

  - dimension: zendesk_zendesk_organization_c
    sql: ${TABLE}.zendesk_zendesk_organization_c

  - dimension: zendesk_zendesk_organization_id_c
    sql: ${TABLE}.zendesk_zendesk_organization_id_c

  - dimension: zendesk_zendesk_outofsync_c
    sql: ${TABLE}.zendesk_zendesk_outofsync_c

  - measure: count
    type: count
    drill_fields: [id, name]

