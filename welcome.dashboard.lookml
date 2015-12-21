- dashboard: welcome
  title: Welcome
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: add_a_unique_name_1450736760914
    title: "Count of Leads over Time"
    type: looker_line
    model: salesforce
    explore: sf_lead
    dimensions: [sf_lead.createddate_month]
    measures: [sf_lead.count]
    sorts: [sf_lead.createddate_month]
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_points: true
    point_style: none
    interpolation: linear

