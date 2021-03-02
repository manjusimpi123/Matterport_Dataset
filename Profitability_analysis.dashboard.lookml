- dashboard: profitability_analysis
  title: Profitability Analysis
  tile_size: 100
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - name: Gross Profit Trend
    title: Gross Profit Trend
    merged_queries:
    - model: infoficus_matterport_demo
      explore: fact_plan
      type: table
      fields: [fact_plan.Budget, dim_date.month_name]
      filters:
        dim_date.month_name: "-Unkown"
      sorts: [dim_date.month_name]
      limit: 500
    - model: infoficus_matterport_demo
      explore: fact_gljournals
      type: looker_column
      fields: [fact_gljournals.Actuals, dim_date.month_name, fact_gljournals.gross_profit]
      filters:
        dim_date.month_name: "-NULL,-Unkown"
      sorts: [dim_date.month_name]
      limit: 500
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
      defaults_version: 1
      join_fields:
      - field_name: dim_date.month_name
        source_field_name: dim_date.month_name
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_plan.Budget, id: fact_plan.Budget,
            name: Budget}, {axisId: fact_gljournals.Actuals, id: fact_gljournals.Actuals,
            name: Actuals}], showLabels: true, showValues: true, valueFormat: '$0,"k"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    label_value_format: $0,"k"
    series_types: {}
    point_style: circle_outline
    series_colors:
      fact_gljournals.Actuals: "#72D16D"
      fact_plan.Budget: "#3EB0D5"
      fact_gljournals.gross_profit: "#B1399E"
    show_value_labels: false
    label_density: 25
    label_color: [b]
    x_axis_scale: auto
    x_axis_datetime_label: ''
    y_axis_combined: true
    ordering: none
    label_rotation: -90
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    row: 0
    col: 0
    width: 12
    height: 10
  - name: Net Profit Trend
    title: Net Profit Trend
    merged_queries:
    - model: infoficus_matterport_demo
      explore: fact_plan
      type: table
      fields: [fact_plan.Budget, dim_date.month_name]
      filters:
        dim_date.month_name: "-Unkown"
      sorts: [dim_date.month_name]
      limit: 500
    - model: infoficus_matterport_demo
      explore: fact_gljournals
      type: looker_column
      fields: [fact_gljournals.Actuals, dim_date.month_name, fact_gljournals.Net_Profit]
      filters:
        dim_date.month_name: "-NULL,-Unkown"
      sorts: [dim_date.month_name]
      limit: 500
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
      defaults_version: 1
      join_fields:
      - field_name: dim_date.month_name
        source_field_name: dim_date.month_name
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_plan.Budget, id: fact_plan.Budget,
            name: Budget}, {axisId: fact_gljournals.Actuals, id: fact_gljournals.Actuals,
            name: Actuals}], showLabels: true, showValues: true, valueFormat: '$0,"k"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    label_value_format: $0,"k"
    series_types: {}
    point_style: circle_outline
    series_colors:
      fact_gljournals.Actuals: "#75E2E2"
      fact_plan.Budget: "#592EC2"
      fact_gljournals.gross_profit: "#B1399E"
      fact_gljournals.Net_Profit: "#FBB555"
    show_value_labels: false
    label_density: 25
    label_color: [b]
    x_axis_scale: auto
    x_axis_datetime_label: ''
    y_axis_combined: true
    ordering: none
    label_rotation: -90
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    row: 0
    col: 12
    width: 12
    height: 10
  - name: Profitability Description
    title: Profitability Description
    merged_queries:
    - model: infoficus_matterport_demo
      explore: fact_gljournals
      type: looker_line
      fields: [fact_gljournals.Revenue, fact_gljournals.cost_of_goods_sold, fact_gljournals.gross_profit,
        fact_gljournals.Net_Profit, fact_gljournals.Actuals, dim_date.fiscal_year]
      filters:
        dim_date.fiscal_year: NOT NULL,not 0
      sorts: [dim_date.fiscal_year]
      limit: 500
      column_limit: 50
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
      show_null_points: true
      interpolation: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      series_types: {}
      value_labels: legend
      label_type: labPer
    - model: infofiscus-income-expenses
      explore: fact_plan
      type: table
      fields: [dim_date.fiscal_year, fact_plan.Budget]
      filters:
        dim_date.fiscal_year: not 0
      sorts: [fact_plan.Budget desc]
      limit: 500
      join_fields:
      - field_name: dim_date.fiscal_year
        source_field_name: dim_date.fiscal_year
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: true
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      fact_gljournals.Revenue:
        is_active: false
      fact_plan.Budget:
        is_active: false
        palette:
          palette_id: a3f9463f-88e2-450e-9363-9525c96ecd6d
          collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: 99d2d3ac-7579-41a0-b16c-a381b7ae96da}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      dim_date.fiscal_year:
        name: id
        format_string: '0'
        label: ID
      fact_gljournals.Revenue: $0,"K"
      fact_gljournals.cost_of_goods_sold: $0,"K"
      fact_gljournals.gross_profit: $0,"K"
      fact_gljournals.Net_Profit: $0,"K"
      fact_gljournals.Actuals: $0,"K"
      fact_plan.Budget: $0,"K"
    type: looker_grid
    series_types: {}
    row: 10
    col: 0
    width: 24
    height: 4
