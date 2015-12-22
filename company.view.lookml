# Outstanding issues in ETL:
# current_customer_c = "true" => current_customer_c = true
# iswon => is_won, is_closed
# createddate => created_date
# iswon => boolean
# accountid => account_id
# annualrevenue => annual_revenue
# convertedcontactid => converted_contact_id
- view: company
  derived_table:
    sql: |
      WITH temp_company AS ( SELECT DISTINCT MD5(TRIM(BOTH ' ' FROM REGEXP_REPLACE(LOWER(name), '([[:space:]]|\\,)+([iInNcC]|[lLcC]).*$', ''))) AS company_id
                              , TRIM(BOTH ' ' FROM REGEXP_REPLACE(LOWER(name), '([[:space:]]|\\,)+([iInNcC]|[lLcC]).*$', '')) AS name
                              , CASE
                                  WHEN type = 'Customer' AND current_customer_c = 'true'
                                  THEN 'Customer'
                                  ELSE 'Prospect'
                                END AS type
                            FROM public.sf_account
                            UNION
                            SELECT DISTINCT MD5(TRIM(BOTH ' ' FROM REGEXP_REPLACE(LOWER(company), '([[:space:]]|\\,)+([iInNcC]|[lLcC]).*$', ''))) AS company_id
                              , TRIM(BOTH ' ' FROM REGEXP_REPLACE(LOWER(company), '([[:space:]]|\\,)+([iInNcC]|[lLcC]).*$', '')) AS name
                              , 'Prospect' AS type
                            FROM public.sf_lead)
      , temp_account AS ( SELECT MD5(TRIM(BOTH ' ' FROM REGEXP_REPLACE(LOWER(name), '([[:space:]]|\\,)+([iInNcC]|[lLcC]).*$', ''))) AS company_id
                            , MIN(id) AS id
                          FROM public.sf_account
                          GROUP BY 1)
      SELECT ROW_NUMBER() OVER(ORDER BY 1) AS auto_id
        , temp_company.company_id
        , temp_company.type
        , temp_account.id AS account_id
        , temp_company.name
      FROM temp_company
      LEFT JOIN temp_account
      ON temp_company.company_id = temp_account.company_id
    persist_for: 1 hours
    indexes: [company_id, account_id]
  fields:

# DIMENSIONS #

  - dimension: auto_id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.auto_id
    
  - dimension: company_id
    hidden: true
    sql: ${TABLE}.company_id
    
  - dimension: account_id
    hidden: true
    sql: ${TABLE}.account_id
    
  - dimension: name
    sql: ${TABLE}.name

  - dimension: type
    sql: ${TABLE}.type

# MEASURES #

  - measure: count
    type: count
    drill_fields: company_set*

  - measure: count_prospect
    type: count
    filters:
      type: 'Prospect'
    drill_fields: company_set*
    
  - measure: count_customer
    type: count
    filters:
      type: 'Customer'
    drill_fields: [company.name, salesrep.name, usage.approximate_usage_in_minutes_total, opportunity.total_acv]
    
# SETS #  
    
  sets:
    company_set:
      - company_id
      - name
      - type
# 
# - view: company
#   derived_table:
#     sql: |
#         WITH first_pass AS (SELECT 
#                               -- company fields
#                               initcap(REGEXP_REPLACE(TRIM(BOTH ' ' FROM REGEXP_REPLACE(LOWER(COALESCE(account.name, lead.company)), '(\.|,|\s)(inc|ltd|llc|llp|incorporated)+[^a-zA-Z]*$', '')), '[[:punct:]]', '')) AS company_name
#                               , MD5(REGEXP_REPLACE(TRIM(BOTH ' ' FROM REGEXP_REPLACE(LOWER(COALESCE(account.name, lead.company)), '(\.|,|\s)(inc|ltd|llc|llp|incorporated)+[^a-zA-Z]*$', '')), '[[:punct:]]', '')) AS company_id
#                               , CASE
#                                   WHEN opportunity.isclosed = 'true'
#                                     AND opportunity.iswon = 'true'
#                                   THEN TRUE
#                                   ELSE FALSE
#                                 END AS is_customer
#                               -- lead fields
#                               , lead.id AS lead_id
#                               , lead.createddate AS lead_created_date
#                               -- account fields
#                               , account.id AS account_id
#                               , account.createddate AS account_created_date
#                               -- contact fields
#                               , contact.id AS contact_id
#                               , contact.createddate AS contact_created_date
#                               -- opportunity fields
#                               , opportunity.id AS opportunity_id
#                               , opportunity.createddate AS opportunity_created_date
#                               , opportunity.closedate AS opportunity_closed_date
#                               , opportunity.iswon AS opportunity_iswon
#                               , opportunity.isclosed AS opportunity_isclosed
#                             FROM public.sf_lead as lead
#                             LEFT JOIN public.sf_account as account ON lead.convertedaccountid = account.id
#                             LEFT JOIN public.sf_contact as contact
#                               ON 
#                                 CASE
#                                   WHEN lead.convertedcontactid IS NOT NULL
#                                   THEN lead.convertedcontactid = contact.id
#                                   ELSE account.id = contact.accountid
#                                 END
#                             LEFT JOIN public.sf_opportunity as opportunity ON opportunity.id = lead.convertedopportunityid
#                           )
#         SELECT company_id
#           , company_name
#           , CASE
#               WHEN company_id IN (SELECT company_id FROM first_pass WHERE is_customer)
#               THEN 'Customer'
#               ELSE 'Prospect'
#             END AS company_type
#           , FIRST_VALUE(account_id) OVER(PARTITION BY company_id ORDER BY account_created_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS account_id
#           , lead_id
#           , contact_id
#           , opportunity_id
#         FROM first_pass
#         
#   fields:
#   - dimension: company_id
#     hidden: true
#     primary_key: true
#     sql: ${TABLE}.company_id
# 
#   - dimension: name
#     sql: ${TABLE}.company_name
# 
#   - dimension: type
#     sql: ${TABLE}.company_type
# 
#   - dimension: account_id
#     hidden: true
#     sql: ${TABLE}.account_id
# 
#   - dimension: lead_id
#     hidden: true
#     sql: ${TABLE}.lead_id
# 
#   - dimension: contact_id
#     hidden: true
#     sql: ${TABLE}.contact_id
# 
#   - dimension: opportunity_id
#     hidden: true
#     sql: ${TABLE}.opportunity_id
# 
#   - measure: count
#     type: count
#     drill_fields: detail*
# 
#   - measure: count_customer
#     type: count
#     filters:
#       type: 'Customer'
#     drill_fields: detail*
# 
#   - measure: count_prospect
#     type: count
#     filters:
#       type: 'Prospect'    
#     drill_fields: detail*        
#     
#   sets:
#     detail:
#       - company_id
#       - company_name
#       - company_type
#       - account.name
#       - lead.name   # assumes full name or concatenated first and last names exists in lead view
#       - contact.name
#       - opportunity.name
#       - opportunity.created_date
#       - opportunity.closed_date
#       - opportunity.stage_name
# 