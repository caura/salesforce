- view: sf_task
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: accountid
    sql: ${TABLE}.accountid

  - dimension: activitydate
    sql: ${TABLE}.activitydate

  - dimension: calldisposition
    sql: ${TABLE}.calldisposition

  - dimension: calldurationinseconds
    sql: ${TABLE}.calldurationinseconds

  - dimension: callobject
    sql: ${TABLE}.callobject

  - dimension: calltype
    sql: ${TABLE}.calltype

  - dimension: completed_date_c
    sql: ${TABLE}.completed_date_c

  - dimension: createdbyid
    sql: ${TABLE}.createdbyid

  - dimension_group: createddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createddate

  - dimension: demo_analyst_assigned_c
    sql: ${TABLE}.demo_analyst_assigned_c

  - dimension: description
    sql: ${TABLE}.description

  - dimension: isarchived
    sql: ${TABLE}.isarchived

  - dimension: isclosed
    sql: ${TABLE}.isclosed

  - dimension: isdeleted
    sql: ${TABLE}.isdeleted

  - dimension: isrecurrence
    sql: ${TABLE}.isrecurrence

  - dimension: isreminderset
    sql: ${TABLE}.isreminderset

  - dimension: lastmodifiedbyid
    sql: ${TABLE}.lastmodifiedbyid

  - dimension_group: lastmodifieddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.lastmodifieddate

  - dimension: meeting_booked_method_c
    sql: ${TABLE}.meeting_booked_method_c

  - dimension: meeting_date_time_c
    sql: ${TABLE}.meeting_date_time_c

  - dimension: meeting_qualified_c
    sql: ${TABLE}.meeting_qualified_c

  - dimension: meeting_type_c
    sql: ${TABLE}.meeting_type_c

  - dimension: metadata
    sql: ${TABLE}.metadata

  - dimension: number_of_no_shows_c
    sql: ${TABLE}.number_of_no_shows_c

  - dimension: ownerid
    sql: ${TABLE}.ownerid

  - dimension: priority
    sql: ${TABLE}.priority

  - dimension: recordtypeid
    sql: ${TABLE}.recordtypeid

  - dimension: recurrenceactivityid
    sql: ${TABLE}.recurrenceactivityid

  - dimension: recurrencedayofmonth
    sql: ${TABLE}.recurrencedayofmonth

  - dimension: recurrencedayofweekmask
    sql: ${TABLE}.recurrencedayofweekmask

  - dimension: recurrenceenddateonly
    sql: ${TABLE}.recurrenceenddateonly

  - dimension: recurrenceinstance
    sql: ${TABLE}.recurrenceinstance

  - dimension: recurrenceinterval
    sql: ${TABLE}.recurrenceinterval

  - dimension: recurrencemonthofyear
    sql: ${TABLE}.recurrencemonthofyear

  - dimension: recurrencestartdateonly
    sql: ${TABLE}.recurrencestartdateonly

  - dimension: recurrencetimezonesidkey
    sql: ${TABLE}.recurrencetimezonesidkey

  - dimension: recurrencetype
    sql: ${TABLE}.recurrencetype

  - dimension: reminderdatetime
    sql: ${TABLE}.reminderdatetime

  - dimension: sdr_meeting_assist_c
    sql: ${TABLE}.sdr_meeting_assist_c

  - dimension: status
    sql: ${TABLE}.status

  - dimension: subject
    sql: ${TABLE}.subject

  - dimension_group: systemmodstamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.systemmodstamp

  - dimension: type
    sql: ${TABLE}.type

  - dimension: unqualified_reason_c
    sql: ${TABLE}.unqualified_reason_c

  - dimension: whatid
    sql: ${TABLE}.whatid

  - dimension: whoid
    sql: ${TABLE}.whoid

  - measure: count
    type: count
    drill_fields: [id]

