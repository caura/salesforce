- view: lead
  extends: sf_lead
  derived_table: 
    sql: |
      SELECT *
        , MD5(TRIM(BOTH ' ' FROM REGEXP_REPLACE(LOWER(company), '([[:space:]]|\\,)+([iInNcC]|[lLcC]).*$', ''))) AS company_id
      FROM public.sf_lead
    sql_trigger_value: SELECT COUNT(*) FROM public.sf_lead
    sortkeys: [createddate]
    distkey: company_id
  fields:

  - dimension: company_id
    hidden: true
    sql: ${TABLE}.company_id
