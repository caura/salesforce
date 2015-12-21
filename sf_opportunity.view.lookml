- view: sf_opportunity
  sql_table_name: public.sf_opportunity
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: accountable_to_cmrr_c
    sql: ${TABLE}.accountable_to_cmrr_c

  - dimension: accountid
    sql: ${TABLE}.accountid

  - dimension: actual_end_date_c
    sql: ${TABLE}.actual_end_date_c

  - dimension: acv_c
    sql: ${TABLE}.acv_c

  - dimension: acv_formula_c
    sql: ${TABLE}.acv_formula_c

  - dimension: amount
    sql: ${TABLE}.amount

  - dimension: analystassigned_c
    sql: ${TABLE}.analystassigned_c

  - dimension: api_c
    sql: ${TABLE}.api_c

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

  - dimension: campaign_c
    sql: ${TABLE}.campaign_c

  - dimension: campaignid
    sql: ${TABLE}.campaignid

  - dimension: cancellation_date_c
    sql: ${TABLE}.cancellation_date_c

  - dimension: cancellation_notification_date_c
    sql: ${TABLE}.cancellation_notification_date_c

  - dimension: cancellation_value_c
    sql: ${TABLE}.cancellation_value_c

  - dimension: cancelled_mrr_c
    sql: ${TABLE}.cancelled_mrr_c

  - dimension: churn_last_step_c
    sql: ${TABLE}.churn_last_step_c

  - dimension: churn_next_action_c
    sql: ${TABLE}.churn_next_action_c

  - dimension: churn_status_c
    sql: ${TABLE}.churn_status_c

  - dimension: closedate
    sql: ${TABLE}.closedate

  - dimension: contract_length_c
    sql: ${TABLE}.contract_length_c

  - dimension: contractlookup_c
    sql: ${TABLE}.contractlookup_c

  - dimension: createdbyid
    sql: ${TABLE}.createdbyid

  - dimension_group: createddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createddate

  - dimension: database_size_c
    sql: ${TABLE}.database_size_c

  - dimension: database_type_c
    sql: ${TABLE}.database_type_c

  - dimension: days_to_close_c
    sql: ${TABLE}.days_to_close_c

  - dimension: description
    sql: ${TABLE}.description

  - dimension: end_date_c
    sql: ${TABLE}.end_date_c

  - dimension: end_date_formula_c
    sql: ${TABLE}.end_date_formula_c

  - dimension: fiscal
    sql: ${TABLE}.fiscal

  - dimension: fiscalquarter
    sql: ${TABLE}.fiscalquarter

  - dimension: fiscalyear
    sql: ${TABLE}.fiscalyear

  - dimension: forecastcategory
    sql: ${TABLE}.forecastcategory

  - dimension: forecastcategoryname
    sql: ${TABLE}.forecastcategoryname

  - dimension: hasopportunitylineitem
    sql: ${TABLE}.hasopportunitylineitem

  - dimension: infer_encoded_rating_c
    sql: ${TABLE}.infer_encoded_rating_c

  - dimension: infer_infer_rating_c
    sql: ${TABLE}.infer_infer_rating_c

  - dimension: infer_infer_score_c
    sql: ${TABLE}.infer_infer_score_c

  - dimension: infer_reports_infer_won_amount_c
    sql: ${TABLE}.infer_reports_infer_won_amount_c

  - dimension: infer_score_index_c
    sql: ${TABLE}.infer_score_index_c

  - dimension: infer_score_object_id_c
    sql: ${TABLE}.infer_score_object_id_c

  - dimension: infer_score_snapshot_c
    sql: ${TABLE}.infer_score_snapshot_c

  - dimension: is_cancelled_c
    sql: ${TABLE}.is_cancelled_c

  - dimension: is_referral_qualified_c
    sql: ${TABLE}.is_referral_qualified_c

  - dimension: isclosed
    sql: ${TABLE}.isclosed

  - dimension: isdeleted
    sql: ${TABLE}.isdeleted

  - dimension: iswon
    sql: ${TABLE}.iswon

  - dimension: key_opportunity_c
    sql: ${TABLE}.key_opportunity_c

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

  - dimension: lead_analyst_c
    sql: ${TABLE}.lead_analyst_c

  - dimension: leadsource
    sql: ${TABLE}.leadsource

  - dimension: license_c
    sql: ${TABLE}.license_c

  - dimension: license_id_c
    sql: ${TABLE}.license_id_c

  - dimension: lid_linkedin_company_id_c
    sql: ${TABLE}.lid_linkedin_company_id_c

  - dimension: lost_reason_c
    sql: ${TABLE}.lost_reason_c

  - dimension: lost_reason_description_c
    sql: ${TABLE}.lost_reason_description_c

  - dimension: metadata
    sql: ${TABLE}.metadata

  - dimension: mrr_c
    sql: ${TABLE}.mrr_c

  - dimension: mrr_formula_c
    sql: ${TABLE}.mrr_formula_c

  - dimension: name
    sql: ${TABLE}.name

  - dimension: next_step_date_c
    sql: ${TABLE}.next_step_date_c

  - dimension: nextstep
    sql: ${TABLE}.nextstep

  - dimension: nrr_c
    sql: ${TABLE}.nrr_c

  - dimension: nrr_formula_c
    sql: ${TABLE}.nrr_formula_c

  - dimension: of_db_connections_c
    sql: ${TABLE}.of_db_connections_c

  - dimension: of_instances_c
    sql: ${TABLE}.of_instances_c

  - dimension: of_users_c
    sql: ${TABLE}.of_users_c

  - dimension: order_audit_complete_c
    sql: ${TABLE}.order_audit_complete_c

  - dimension: ownerid
    sql: ${TABLE}.ownerid

  - dimension: partner_assisted_c
    sql: ${TABLE}.partner_assisted_c

  - dimension: partner_assisted_type_c
    sql: ${TABLE}.partner_assisted_type_c

  - dimension: partner_influenced_c
    sql: ${TABLE}.partner_influenced_c

  - dimension: partner_led_c
    sql: ${TABLE}.partner_led_c

  - dimension: partner_sourced_c
    sql: ${TABLE}.partner_sourced_c

  - dimension: partner_sourced_type_c
    sql: ${TABLE}.partner_sourced_type_c

  - dimension: pre_demo_qualification_c
    sql: ${TABLE}.pre_demo_qualification_c

  - dimension: pricebook_id
    sql: ${TABLE}.pricebook_id

  - dimension: primary_campaign_filter_c
    sql: ${TABLE}.primary_campaign_filter_c

  - dimension: priority_ranking_c
    sql: ${TABLE}.priority_ranking_c

  - dimension: probability
    sql: ${TABLE}.probability

  - dimension: referral_commission_c
    sql: ${TABLE}.referral_commission_c

  - dimension: renewal_number_c
    sql: ${TABLE}.renewal_number_c

  - dimension: renewal_opportunity_c
    sql: ${TABLE}.renewal_opportunity_c

  - dimension: schema_c
    sql: ${TABLE}.schema_c

  - dimension: schema_stage_c
    sql: ${TABLE}.schema_stage_c

  - dimension: sdr_assigned_c
    sql: ${TABLE}.sdr_assigned_c

  - dimension: solution_area_s_c
    sql: ${TABLE}.solution_area_s_c

  - dimension: stagename
    sql: ${TABLE}.stagename

  - dimension: start_date_c
    sql: ${TABLE}.start_date_c

  - dimension: start_date_formula_c
    sql: ${TABLE}.start_date_formula_c

  - dimension: syncedquoteid
    sql: ${TABLE}.syncedquoteid

  - dimension_group: systemmodstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.systemmodstamp

  - dimension: total_contract_value_c
    sql: ${TABLE}.total_contract_value_c

  - dimension: trial_requested_c
    sql: ${TABLE}.trial_requested_c

  - dimension: type
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id, name, forecastcategoryname, stagename]

