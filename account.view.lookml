- view: account
  extends: sf_account
  derived_table:
    sql: |
      SELECT *
        , MD5(TRIM(BOTH ' ' FROM REGEXP_REPLACE(LOWER(name), '([[:space:]]|\\,)+([iInNcC]|[lLcC]).*$', ''))) AS company_id
      FROM public.sf_account
    sql_trigger_value: SELECT COUNT(*) FROM public.sf_account
    indexes: [createddate, company_id]     # using indexes for interleaved sort keys
    distkey: company_id
  fields:
    
  - dimension: company_id
    hidden: true
    sql: ${TABLE}.company_id
    
  - dimension: account_status
    sql: COALESCE(${account_status_c}, 'Unknown')  
    
  - dimension: vertical
    sql: ${TABLE}.vertical___c    
    
# MEASURES #

  - measure: count
    type: count
    drill_fields: [id, name]
    
  - measure: percent_of_accounts
    type: percent_of_total
    sql: ${count}
    
  - measure: average_annual_revenue
    type: average
    sql: ${annualrevenue}
    value_format: '$#,##0'
    
  - measure: total_number_of_employees
    type: sum
    sql: ${numberofemployees}
    
  - measure: average_number_of_employees
    type: avg
    sql: ${numberofemployees}
    
# SETS #

#   sets:
#     export_set:
#       - id
#       - company_id
#       - account_status
#       - annual_revenue
#       - city
#       - createddate_date
#       - current_customer
#       - customer_end_date
#       - customer_start_date
#       - engagement_stage
#       - is_partner
#       - market_segment
#       - name
#       - number_of_employees
#       - state
#       - type
#       - url
#       - vertical
#       - zendesk_organization
#       - annual_revenue_tier
#       - number_of_employees_tier
#       - count
#       - percent_of_accounts
#       - average_annual_revenue
#       - total_number_of_employees
#       - average_number_of_employees  
#       - owner_id
      