- dashboard: welcome
  title: "Salesforce Dashboard"
  tile_size: 100
  layout: grid
  rows:
  - height: 200
    elements: [add_a_unique_name_410,add_a_unique_name_768,add_a_unique_name_996]
  - height: 400
    elements: [add_a_unique_name_951,add_a_unique_name_253]
  - height: 400
    elements: [add_a_unique_name_4,add_a_unique_name_5]  
  - height: 400
    elements: [add_a_unique_name_117]  

#  filters:

  elements:

#   - name: add_a_unique_name_1450736760914
#     title: "Count of Leads over Time"
#     type: looker_line
#     model: salesforce
#     explore: sf_lead
#     dimensions: [sf_lead.createddate_month]
#     measures: [sf_lead.count]
#     sorts: [sf_lead.createddate_month]
#     limit: 500
#     stacking: ''
#     show_value_labels: false
#     label_density: 25
#     legend_position: center
#     x_axis_gridlines: false
#     y_axis_gridlines: true
#     show_view_names: true
#     y_axis_combined: true
#     show_y_axis_labels: true
#     show_y_axis_ticks: true
#     y_axis_tick_density: default
#     y_axis_tick_density_custom: 5
#     show_x_axis_label: true
#     show_x_axis_ticks: true
#     x_axis_scale: auto
#     show_null_points: true
#     point_style: none
#     interpolation: linear

  - name: add_a_unique_name_410
    title: 'Total Active Customers'
    type: single_value
    explore: company
    measures: [company.count_customer]
    filters:
      account.account_status: -"Black (Discontinued)"
    sorts: [company.count_customer desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    font_size: medium
    
  - name: add_a_unique_name_768
    title: 'New MRR This Quarter'
    type: single_value
    explore: company
    measures: [opportunity.total_mrr_k]
    filters:
      account.account_status: -"Black (Discontinued)"
#       opportunity.createddate_date: 2015/04/01 to 2015/06/30
      opportunity.type: -"Renewal"
    sorts: [opportunity.total_mrr_k desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    font_size: medium
    
  - name: add_a_unique_name_996
    title: 'Total ACV This Quarter'
    type: single_value
    explore: company
    measures: [opportunity.total_acv_m]
    filters:
      account.account_status: -"Black (Discontinued)"
      opportunity.iswon: 'Yes'
    sorts: [opportunity.total_acv_m desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    font_size: medium
      
  - name: add_a_unique_name_951
    title: 'Lead to Win Funnel'
    type: looker_column
    explore: funnel
    measures: [lead.count, meeting.count, opportunity.count, opportunity.count_won]
    filters:
      account.type: '"Customer"'
#       lead.createddate_date: 2015/04/01 to 2015/07/01
      opportunity.type: '"New Business"'
    sorts: [lead.count desc]
    limit: 500
    column_limit: ''
    query_timezone: America/Los_Angeles
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_combined: true
    show_dropoff: true
    stacking: ''
    show_value_labels: true
    x_axis_gridlines: false
    show_view_names: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    label_density: 10
    colors: ['#635189', '#b3a0dd', '#a2dcf3', '#1ea8df']
    series_labels:
      lead.count: Leads
      meeting.count: Meetings
      opportunity.count: Opportunities
      opportunity.count_won: Won Opportunities
        
#   - name: add_a_unique_name_760
#     title: 'Won Opportunities by Business Segment Over Time'
#     type: looker_area
#     explore: the_switchboard
#     dimensions: [salesrep.business_segment, opportunity.close_month]
#     pivots: [salesrep.business_segment]
#     measures: [the_switchboard.total_customers]
#     filters:
#       opportunity.close_week: 24 months
#       opportunity.iswon: 'Yes'
#       opportunity.type: '"New Business"'
#     sorts: [salesrep.business_segment desc, opportunity.close_month desc]
#     limit: 500
#     column_limit: ''
#     query_timezone: America/Los_Angeles
#     show_view_names: true
#     stacking: normal
#     show_value_labels: false
#     label_density: 10
#     x_axis_gridlines: false
#     y_axis_gridlines: true
#     show_y_axis_labels: true
#     show_y_axis_ticks: true
#     y_axis_tick_density: default
#     y_axis_tick_density_custom: 5
#     show_x_axis_label: false
#     show_x_axis_ticks: true
#     x_axis_scale: time
#     inner_radius: 50
#     colors: ['#776fdf', '#1ea8df', '#a2dcf3', '#635189']
#     y_axis_labels: [Count of Leads]
#     hidden_series: [Top of Funnel/Not Assigned]
#     series_labels:
#       Top of Funnel/Not Assigned: Not Assigned
#     show_null_points: true
#     point_style: none
#     interpolation: linear
#     show_null_labels: false
      
#   - name: add_a_unique_name_15
#     title: 'Prospects by Business Segment and Vertical'
#     type: looker_donut_multiples
#     explore: the_switchboard
#     dimensions: [salesrep.business_segment, account.vertical]
#     pivots: [account.vertical]
#     measures: [the_switchboard.total_prospects]
#     filters:
#       account.vertical: -NULL
#     sorts: [account.vertical, salesrep.business_segment desc]
#     limit: 500
#     column_limit: 50
#     query_timezone: America/Los_Angeles
#     show_view_names: true
#     show_null_labels: false
#     inner_radius: 50
#     stacking: normal
#     show_value_labels: false
#     label_density: 10
#     x_axis_gridlines: false
#     y_axis_gridlines: true
#     show_y_axis_labels: true
#     show_y_axis_ticks: true
#     y_axis_tick_density: default
#     y_axis_tick_density_custom: 5
#     show_x_axis_label: false
#     show_x_axis_ticks: true
#     x_axis_scale: auto
#     show_null_points: true
#     y_axis_labels: [Count of Leads]
#     point_style: none
#     interpolation: linear
#     colors: ['#635189', '#776fdf', '#ed6168', '#a2dcf3', '#e9b404', '#49cec1', '#1ea8df']
        
#   - name: add_a_unique_name_159
#     title: 'Where are Prospects Located?'
#     type: looker_geo_choropleth
#     explore: the_switchboard
#     dimensions: [the_switchboard.state]
#     measures: [the_switchboard.total_companies]
#     filters:
#       the_switchboard.country: '"US","USA"'
#       the_switchboard.state: -NULL
#     sorts: [the_switchboard.total_companies desc]
#     limit: 500
#     column_limit: ''
#     query_timezone: America/Los_Angeles
#     map: usa
#     map_projection: ''
#     show_view_names: false
#     quantize_colors: false
#     loading: false
#     colors: ['#e7e6e6', '#706080']
#     empty_color: ''
      
  - name: add_a_unique_name_253
    title: 'Opportunities Created (Year-to-Date)'
    type: looker_area
    explore: company
    dimensions: [opportunity.createddate_week]
    measures: [opportunity.count, opportunity.cumulative_total]
    filters:
      opportunity.createddate_date: this year to now
    sorts: [opportunity.createddate_week]
    limit: 500
    column_limit: ''
    query_timezone: America/Los_Angeles
    show_x_axis_label: true
    show_x_axis_ticks: false
    x_axis_gridlines: false
    stacking: ''
    show_value_labels: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    x_axis_scale: ordinal
    label_density: 24
    colors: ['#1ea8df', '#a2dcf3']
    y_axis_orientation: [left, right]
    y_axis_combined: false
    y_axis_labels: [Opportuniy Count, Cumulative Count]
    hide_legend: true
    x_axis_datetime_tick_count: 10
    show_null_points: true
    point_style: none
    interpolation: linear
    swap_axes: false
    show_null_labels: false
    series_types:
      opportunity.count: column
    label_color: ['#1ea8df', '#ffffff']
#     font_size: 10px
#       
#   - name: add_a_unique_name_66
#     title: 'Sales Segment Performance'
#     type: looker_column
#     explore: company
#     dimensions: [salesrep.business_segment]
#     measures: [company.count_customer, opportunity.total_acv_m]
#     filters:
#       salesrep.business_segment: -"Top of Funnel/Not Assigned"
#     sorts: [salesrep.business_segment desc]
#     limit: 500
#     column_limit: ''
#     query_timezone: America/Los_Angeles
#     stacking: ''
#     show_value_labels: true
#     label_density: 10
#     x_axis_gridlines: false
#     y_axis_gridlines: true
#     show_view_names: false
#     show_y_axis_labels: true
#     show_y_axis_ticks: true
#     y_axis_tick_density: default
#     y_axis_tick_density_custom: 5
#     show_x_axis_label: false
#     show_x_axis_ticks: true
#     x_axis_scale: auto
#     show_null_labels: false
#     colors: ['#353b49', '#706080']
#     y_axis_orientation: [left, right]
#     label_value_format: '##'
#     series_labels:
#       company.count_customer: Total Customers
#       opportunity.total_acv_m: Total ACV (M)
#     y_axis_labels: [Total Customers, Total ACV (M)]
      
  - name: add_a_unique_name_4
    title: 'New Meetings Trend'
    type: looker_line
    explore: funnel
    dimensions: [meeting.createddate_week]
    measures: [meeting.count]
    filters:
#       meeting.createddate_date: 2015/04/01 to 2015/07/01
    sorts: [meeting.createddate_week desc]
    limit: 500
    column_limit: ''
    query_timezone: America/Los_Angeles
    show_null_points: true
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_combined: true
    stacking: normal
    show_value_labels: false
    x_axis_gridlines: false
    show_view_names: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    point_style: none
    interpolation: linear
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, line_value: '20', label: Target,
        color: Orange}]
    label_density: 10
      
  - name: add_a_unique_name_5
    title: 'ACV Created by Week'
    type: looker_line
    explore: company
    dimensions: [opportunity.createddate_week]
    measures: [opportunity.total_acv, opportunity.total_acv_running_sum]
    filters:
#       opportunity.createddate_date: 2015/04/01 to 2015/07/01
#       opportunity.createddate_week: 2015/04/01 to 2015/06/30
    sorts: [opportunity.createddate_week]
    limit: 500
    column_limit: ''
    query_timezone: America/Los_Angeles
    show_null_points: true
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_combined: true
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label: Target, line_value: '4000000',
        color: Orange}]
    stacking: ''
    show_value_labels: false
    x_axis_gridlines: false
    show_view_names: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    point_style: none
    interpolation: linear
    label_density: 10
    hidden_series: [opportunity.total_acv_running_sum]

  - name: add_a_unique_name_117
    title: 'Lead Funnel Trending'
    type: looker_line
    explore: funnel
    dimensions: [lead.createddate_date]
    measures: [lead.count, meeting.count, opportunity.count, opportunity.count_won]
    filters:
#       lead.createddate_date: 2015/04/01 to 2015/07/01
      opportunity.type: '"New Business"'
    sorts: [lead.count desc]
    limit: 500
    column_limit: ''
    query_timezone: America/Los_Angeles
    show_null_points: true
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_combined: true
    stacking: ''
    show_value_labels: false
    x_axis_gridlines: false
    show_view_names: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    point_style: none
    interpolation: linear
    label_density: 10