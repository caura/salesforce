- view: opportunity
  extends: sf_opportunity
  derived_table:
    sql: |
      SELECT opportunity.*
        , MD5(TRIM(BOTH ' ' FROM REGEXP_REPLACE(LOWER(account.name), '([[:space:]]|\\,)+([iInNcC]|[lLcC]).*$', ''))) AS company_id
      FROM public.sf_opportunity AS opportunity
      LEFT JOIN public.sf_account AS account
      ON account.id = opportunity.accountid    
    persist_for: 1 hours
    sortkeys: [company_id]
    distkey: company_id

    
  fields: 
  - dimension: company_id
    
  - dimension: acv
    type: number
    sql: ${acv_c}::float
    
  - dimension: mrr
    type: number
    sql: ${mrr_c}::float
  
  - measure: total_acv
    type: sum
    sql: ${acv}
    value_format: '$#,##0' 
    drill_fields: opportunity_set*
  
  - measure: total_acv_m
    type: sum
    decimals: 1
    sql: ${acv}/1000000.0
    drill_fields: opportunity_set*   
    html: |
      {{ rendered_value }}M
      
  - measure: total_mrr
    label: 'Total MRR (Closed/Won)'
    type: sum
    sql: ${mrr}
    filters:
      iswon: Yes    
    drill_fields: opportunity_set*
    value_format: '$#,##0'
    
  - measure: total_mrr_k
    type: sum
    decimals: 1
    sql: ${mrr} / 1000.0
    filters:
      iswon: Yes    
    drill_fields: opportunity_set*
    html: |
      {{ rendered_value }}k      
    
  - measure: cumulative_total
    type: running_total
    sql: ${count}  
  
  - measure: count_won
    type: count
    filters:
      iswon: Yes
    drill_fields: [opportunity.id, account.name, salesrep.name, type, total_acv]
    
  - measure: total_acv_running_sum 
    type: running_total
    sql: ${total_acv}     
    drill_fields: opportunity_set*