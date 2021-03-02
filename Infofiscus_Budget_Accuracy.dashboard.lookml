- dashboard: infofiscus_budget_accuracy
  title: Budget Accuracy
  tile_size: 100
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - name: Budget Accuracy Report
    title: Budget Accuracy Report
    merged_queries:
    - model: infoficus_matterport_demo
      explore: fact_gljournals
      type: looker_column
      fields: [fact_gljournals.Actuals, dim_department.dept_desc, dim_account.acct_desc,
        dim_date.fiscal_year]
      filters:
        dim_date.fiscal_year:
      sorts: [fact_gljournals.Actuals desc]
      limit: 500
      query_timezone: America/Los_Angeles
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      label_value_format: $0,"K"
      defaults_version: 1
    - model: infoficus_matterport_demo
      explore: fact_plan
      type: looker_column
      fields: [dim_department.dept_desc, dim_account.acct_desc, dim_date.fiscal_year,
        fact_plan.Budget]
      filters:
        dim_date.fiscal_year:
      sorts: [fact_plan.Budget desc]
      limit: 500
      query_timezone: America/Los_Angeles
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      label_value_format: $0,"K"
      defaults_version: 1
      join_fields:
      - field_name: dim_date.fiscal_year
        source_field_name: dim_date.fiscal_year
      - field_name: dim_department.dept_desc
        source_field_name: dim_department.dept_desc
      - field_name: dim_account.acct_desc
        source_field_name: dim_account.acct_desc
    type: table
    series_types: {}
    pivots: [dim_date.fiscal_year]
    dynamic_fields: [{table_calculation: variance, label: Variance, expression: "${fact_plan.Budget}\
          \ - ${fact_gljournals.Actuals}", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: variance_2,
        label: Variance%, expression: "(${fact_plan.Budget} - ${fact_gljournals.Actuals})\
          \ / ${fact_plan.Budget} *100", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
    row: 0
    col: 0
    width: 24
    height: 9
