- dashboard: infofiscus_matterport_dashboards
  title: Infofiscus Income/Expense Matterport dashboard
  layout: newspaper
  preferred_viewer: dashboards
  tile_size: 100
  refresh: 1 hour
  embed_style:
    background_color: "#555661"
    show_title: true
    title_color: "#d8efff"
    show_filters_bar: true
    tile_text_color: "#d8f6ff"
    text_tile_text_color: "#5181b2"
  elements:
  - name: Gross Profit
    title: Gross Profit
    model: infofiscus_matterport_demo
    explore: fact_gljournals
    type: looker_donut_multiples
    fields: [fact_gljournals.gross_profit, dim_date.month_name]
    pivots: [dim_date.month_name]
    filters: {}
    sorts: [dim_date.month_name]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_value_labels: true
    font_size: 1
    hide_legend: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    series_labels: {}
    value_labels: legend
    label_type: labPer
    inner_radius: 75
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_gljournals.gross_profit,
            id: fact_gljournals.gross_profit, name: Gross Profit}], showLabels: false,
        showValues: true, valueFormat: '$0, "K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: $0, "K"
    series_types: {}
    x_axis_datetime_label: ''
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: black
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_format: $0, "K"
    show_null_points: true
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    bar_range_max: 8000000
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    interpolation: linear
    listen:
      year: dim_date.year
    row: 5
    col: 0
    width: 8
    height: 8
  - title: Income
    name: Income
    model: infofiscus_matterport_demo
    explore: fact_gljournals
    type: single_value
    fields: [fact_gljournals.Revenue, fact_gljournals.expense]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#44a634"
    single_value_title: Income
    value_format: $0, "K"
    comparison_label: Expense Percentage Indicator
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '10'
    orientation: vertical
    style_dim_date.month_name: "#48455e"
    show_title_dim_date.month_name: false
    title_override_dim_date.month_name: ''
    title_placement_dim_date.month_name: below
    value_format_dim_date.month_name: ''
    style_fact_gljournals.Revenue: "#212533"
    show_title_fact_gljournals.Revenue: false
    title_placement_fact_gljournals.Revenue: above
    value_format_fact_gljournals.Revenue: '0'
    show_comparison_fact_gljournals.Revenue: false
    dividers: false
    comparison_style_fact_gljournals.Revenue: value
    comparison_show_label_fact_gljournals.Revenue: true
    comparison_label_fact_gljournals.Revenue: "."
    comparison_label_placement_fact_gljournals.Revenue: below
    comp_value_format_fact_gljournals.Revenue: '0'
    pos_is_bad_fact_gljournals.Revenue: false
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_gljournals.Revenue,
            id: fact_gljournals.Revenue, name: Revenue}], showLabels: false, showValues: true,
        valueFormat: '$0, "K"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: false
    label_value_format: $0, "K"
    defaults_version: 1
    series_types: {}
    listen:
      year: dim_date.year
    row: 0
    col: 0
    width: 5
    height: 5
  - title: Operating Profit
    name: Operating Profit
    model: infofiscus_matterport_demo
    explore: fact_gljournals
    type: single_value
    fields: [fact_gljournals.operating_profit, dim_date.month_name, dim_date.month_num_in_year,
      fact_gljournals.cost_of_goods_sold]
    filters:
      dim_date.month_num_in_year: '1,2,3,4,5,6,7,8,9,10,11,12'
    sorts: [dim_date.month_num_in_year desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
    custom_color: "#f515cb"
    value_format: $0, "K"
    comparison_label: Total COGS
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: 6dda4f8b-4e73-4e50-8760-eb378041ce07}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: [dim_date.month_num_in_year]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '10'
    orientation: vertical
    style_dim_date.month_name: "#3A4245"
    show_title_dim_date.month_name: false
    title_placement_dim_date.month_name: above
    value_format_dim_date.month_name: ''
    style_fact_gljournals.operating_profit: "#3A4245"
    show_title_fact_gljournals.operating_profit: false
    title_placement_fact_gljournals.operating_profit: above
    value_format_fact_gljournals.operating_profit: "#,##0"
    show_comparison_fact_gljournals.operating_profit: false
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_gljournals.operating_profit,
            id: fact_gljournals.operating_profit, name: Operating Profit}], showLabels: false,
        showValues: true, valueFormat: '$0, "K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: $ 0, "K"
    series_types: {}
    show_null_points: true
    defaults_version: 1
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen:
      year: dim_date.year
    row: 0
    col: 10
    width: 5
    height: 5
  - title: Return on Equity Ratio
    name: Return on Equity Ratio
    model: infofiscus_matterport_demo
    explore: fact_gljournals
    type: looker_area
    fields: [fact_gljournals.Return_on_Equity_Ratio, dim_date.month_name]
    filters: {}
    sorts: [dim_date.month_name]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: false
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
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_gljournals.Return_on_Equity_Ratio,
            id: fact_gljournals.Return_on_Equity_Ratio, name: Return on Equity Ratio}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: '0.00'
    series_types: {}
    series_colors: {}
    label_color: [white]
    up_color: "#81BE56"
    down_color: "#CCC54B"
    total_color: "#55A3B3"
    ordering: none
    show_null_labels: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0.000'
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    value_labels: legend
    label_type: labPer
    listen:
      year: dim_date.year
    row: 13
    col: 0
    width: 11
    height: 8
  - title: Operating Expense
    name: Operating Expense
    model: infofiscus_matterport_demo
    explore: fact_gljournals
    type: looker_area
    fields: [fact_gljournals.Operating_Expense, dim_date.month_name, dim_date.month_num_in_year]
    filters: {}
    sorts: [dim_date.month_num_in_year desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_gljournals.Operating_Expense,
            id: fact_gljournals.Operating_Expense, name: Operating Expense}], showLabels: false,
        showValues: true, valueFormat: '$0, "K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: $0, "K"
    series_types: {}
    series_colors: {}
    label_color: [white]
    trend_lines: []
    ordering: none
    show_null_labels: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    value_format: $0, "K"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b,
          palette_id: ce148433-817b-4aee-aaea-880394d1f089}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [dim_date.month_num_in_year]
    listen:
      year: dim_date.year
    row: 5
    col: 8
    width: 9
    height: 8
  - title: Expense
    name: Expense
    model: infofiscus_matterport_demo
    explore: fact_gljournals
    type: looker_bar
    fields: [fact_gljournals.expense, dim_date.month_name, dim_date.month_num_in_year]
    filters: {}
    sorts: [dim_date.month_num_in_year desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 94ff10f1-bc18-49e3-9172-d166ad160bf5
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_gljournals.expense,
            id: fact_gljournals.expense, name: Expense}], showLabels: false, showValues: true,
        valueFormat: '$0,"K"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    font_size: '12'
    label_value_format: $0, "K"
    series_types: {}
    series_colors: {}
    series_labels: {}
    series_point_styles:
      fact_gljournals.expense: triangle-down
    label_color: [white]
    column_spacing_ratio: 0.3
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: $0, "K"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    bar_range_max: 2000000
    hidden_fields: [dim_date.month_num_in_year]
    hidden_points_if_no: []
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen:
      year: dim_date.year
    row: 5
    col: 17
    width: 7
    height: 8
  - title: Net Working Capital
    name: Net Working Capital
    model: infofiscus_matterport_demo
    explore: fact_gljournals
    type: single_value
    fields: [fact_gljournals.net_working_capital, dim_date.month_name, dim_date.month_num_in_year,
      fact_gljournals.assets]
    filters: {}
    sorts: [dim_date.month_num_in_year desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    custom_color: "#4276BE"
    single_value_title: Net Working Capital
    value_format: $0, "K"
    comparison_label: Total Assets
    hidden_fields: [dim_date.month_num_in_year]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '10'
    orientation: vertical
    style_dim_date.month_name: "#3A4245"
    show_title_dim_date.month_name: false
    title_placement_dim_date.month_name: above
    value_format_dim_date.month_name: ''
    style_fact_gljournals.net_working_capital: "#3A4245"
    show_title_fact_gljournals.net_working_capital: false
    title_placement_fact_gljournals.net_working_capital: above
    value_format_fact_gljournals.net_working_capital: "#,##0"
    show_comparison_fact_gljournals.net_working_capital: false
    dividers: false
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_gljournals.net_working_capital,
            id: fact_gljournals.net_working_capital, name: Net Working Capital}],
        showLabels: false, showValues: true, valueFormat: '$0, "K"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: $0,"K"
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      year: dim_date.year
    row: 0
    col: 5
    width: 5
    height: 5
  - title: Net Profit
    name: Net Profit
    model: infofiscus_matterport_demo
    explore: fact_gljournals
    type: looker_line
    fields: [fact_gljournals.Net_Profit, dim_date.month_name, dim_date.month_num_in_year]
    filters: {}
    sorts: [dim_date.month_num_in_year]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: fact_gljournals.Net_Profit,
            id: fact_gljournals.Net_Profit, name: Net Profit}], showLabels: false,
        showValues: true, valueFormat: '$0, "K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size: '12'
    label_value_format: 0,"K"
    series_types: {}
    series_colors: {}
    series_labels: {}
    label_color: [white]
    x_axis_datetime_label: ''
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#000000"}]
    trend_lines: []
    value_labels: labels
    label_type: lab
    up_color: "#81BE56"
    down_color: "#CCC54B"
    total_color: "#55A3B3"
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      fact_gljournals.Net_Profit:
        is_active: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: 6dda4f8b-4e73-4e50-8760-eb378041ce07}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      fact_gljournals.Net_Profit:
        name: decimal_2
        format_string: "#,##0.00"
        label: Decimals (2)
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: true
    orientation: automatic
    labelScale: ''
    labelPosition: inline
    percentType: total
    percentPosition: left
    valuePosition: left
    labelColorEnabled: false
    labelColor: "#FFF"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_format: $0, "K"
    defaults_version: 1
    hidden_fields: [dim_date.month_num_in_year]
    hidden_points_if_no: []
    map: usa
    map_projection: ''
    groupBars: true
    labelSize: 10pt
    showLegend: true
    bar_range_max: 30000
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen:
      year: dim_date.year
    row: 13
    col: 11
    width: 13
    height: 8
  - title: Operating Margin ratio
    name: Operating Margin ratio
    model: infofiscus_matterport_demo
    explore: fact_gljournals
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [fact_gljournals.operating_profit, fact_gljournals.Total_operating_profit,
      fact_gljournals.operating_Percent]
    sorts: [fact_gljournals.operating_profit]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: [fact_gljournals.Total_operating_profit, fact_gljournals.operating_profit]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '13'
    orientation: vertical
    style_fact_gljournals.operating_Percent: "#4276BE"
    show_title_fact_gljournals.operating_Percent: true
    title_placement_fact_gljournals.operating_Percent: below
    value_format_fact_gljournals.operating_Percent: 0.0 "%"
    dividers: true
    bar_arm_length: 9
    bar_arm_weight: 48
    bar_spinner_length: 121
    bar_spinner_weight: 25
    bar_style: horizontal
    bar_range_min: 0
    bar_range_max: 100
    bar_value_label_type: both
    bar_value_label_font: 8
    bar_value_formatting: 0.00 "%"
    bar_value_label_padding: 45
    bar_target_source: 'off'
    bar_target_label_type: none
    bar_target_label_font: 3
    bar_label_font_size: 3
    bar_fill_color: "#FBB555"
    bar_background_color: "#ded6d6"
    bar_spinner_color: "#282828"
    bar_range_color: "#282828"
    show_value_labels: true
    font_size: 12
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    label_value_format: ''
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    map: usa
    map_projection: ''
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    quantize_colors: false
    truncate_column_names: false
    listen:
      year: dim_date.year
    row: 0
    col: 15
    width: 5
    height: 5
  - title: Net Profit Margin Ratio
    name: Net Profit Margin Ratio
    model: infofiscus_matterport_demo
    explore: fact_gljournals
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [fact_gljournals.Net_Profit, fact_gljournals.net_percent]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: [fact_gljournals.Net_Profit]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '13'
    orientation: vertical
    style_fact_gljournals.net_percent: "#B1399E"
    show_title_fact_gljournals.net_percent: true
    title_placement_fact_gljournals.net_percent: below
    value_format_fact_gljournals.net_percent: 0.0 "%"
    bar_arm_length: 9
    bar_arm_weight: 48
    bar_spinner_length: 121
    bar_spinner_weight: 25
    bar_style: horizontal
    bar_range_min: 0
    bar_range_max: 100
    bar_value_label_type: both
    bar_value_label_font: 8
    bar_value_formatting: 0.00 "%"
    bar_value_label_padding: 45
    bar_target_source: 'off'
    bar_target_label_type: none
    bar_target_label_font: 3
    bar_label_font_size: 3
    bar_fill_color: "#FBB555"
    bar_background_color: "#CECECE"
    bar_spinner_color: "#282828"
    bar_range_color: "#282828"
    show_title_fact_gljournals.operating_Percent: false
    title_placement_fact_gljournals.operating_Percent: above
    value_format_fact_gljournals.operating_Percent: 0.00 "%"
    show_value_labels: true
    font_size: 12
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    label_value_format: ''
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      year: dim_date.year
    row: 0
    col: 20
    width: 4
    height: 5
  filters:
  - name: year
    title: year
    type: number_filter
    default_value: '2016'
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
