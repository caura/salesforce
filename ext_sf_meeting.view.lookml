- view: meeting
  extends: sf_task
  derived_table:
    sql: |
      SELECT *
      FROM public.sf_task
      WHERE type = 'Intro Meeting'
    sql_trigger_value: SELECT COUNT(*) FROM public.sf_task
    sortkeys: [accountid]
  fields:
  
# FILTER-ONLY FIELDS #

  - filter: meeting_goal
    description: 'Enter an integer greater than zero.'

# DIMENSIONS #
  - dimension: created_quarter
    sql: EXTRACT(YEAR FROM ${TABLE}.createddate) || ' - Q' || EXTRACT(QUARTER FROM ${TABLE}.created_date)
    
  - dimension: created_current_quarter
    type: yesno
    sql: EXTRACT(QUARTER FROM ${TABLE}.createddate) || EXTRACT(YEAR FROM ${TABLE}.created_date) = EXTRACT(QUARTER FROM CURRENT_DATE) || EXTRACT(YEAR FROM CURRENT_DATE)    

  - dimension: meeting_type
    sql: COALESCE(${TABLE}.meeting_type_c, 'Demo')

  - dimension_group: completed
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.completed_date_c

  - dimension_group: meeting
    type: time
    timeframes: [date, week, month, year]  
    sql: ${TABLE}.meeting_date_time_c

  - dimension: demo_analyst_assigned
    sql: ${TABLE}.demo_analyst_assigned_c

  - dimension: sdr_meeting_assist
    hidden: true
    sql: ${TABLE}.sdr_meeting_assist_c

#   - dimension: call_duration_in_seconds
#     sql: ${TABLE}.call_duration_in_seconds
# 
#   - dimension: call_disposition
#     sql: ${TABLE}.call_disposition
# 
#   - dimension: call_object
#     sql: ${TABLE}.call_object

  - dimension_group: reminder
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reminder_date_time

  - dimension: number_of_no_shows
    sql: ${TABLE}.number__of__no__shows___c

# MEASURES #

  - measure: count
    type: count
    drill_fields: meeting_set*
    
  - measure: percent_to_goal
    type: number
    value_format: '#%'
    sql: 1.00 * ${count} / NULLIF({%parameter meeting_goal %}, '')

  - measure: successful_meetings
    description: 'Meetings that occurred'
    type: count
    filters: 
      isclosed: yes
    drill_fields: meeting_set*

  - measure: unsuccessful_meetings
    description: 'Meetings that did not happen'
    type: count
    filters: 
      isclosed: no
    drill_fields: meeting_set*
    
  - measure: successful_meeting_rate
    description: 'Percent of booked meetings that occurred'
    type: number
    sql: 1.00 * ${successful_meetings} / NULLIF(${count}, 0)
    value_format: '#0.00%'
    
# SETS #

  sets:
    meeting_set:
      - id
      - subject
      - status
      - account.name
      - isclosed
      - createddate_date
      - meeting_type
      
    export_set:
      - id
      - who_id
      - what_id
      - subject
      - activity_date
      - status
      - priority
      - account_id
      - lead_id
      - isclosed
      - createddate_date
      - completed_date
      - meeting_date_time
      - meeting_type
      - count
      - percent_to_goal