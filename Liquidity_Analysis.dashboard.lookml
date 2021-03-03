- dashboard: liquidity_analysis
  title: Infofiscus Liquidity Analysis
  tile_size: 100

  layout: newspaper
  preferred_viewer: dashboards
  embed_style:
    background_color: "#6e7980"
    show_title: true
    title_color: "#e9ffff"
    show_filters_bar: true
    tile_text_color: "#f9ffff"
    text_tile_text_color: "#bdbdbd"
  elements:
  - name: Cash
    title: Cash
    model: infoficus_matterport_demo
    explore: bs_gl_journals_aggregation
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [bs_gl_journals_aggregation.Cash, dim_date.year, bs_gl_journals_aggregation.Current_Assets]
    filters:
      dim_date.month_num_in_year: '1,2,3,4,5,6,7,8,9,10,11,12'
    sorts: [bs_gl_journals_aggregation.Cash desc]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: [dim_date.year]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '15'
    orientation: vertical
    style_bs_gl_journals_aggregation.Cash: "#B1399E"
    show_title_bs_gl_journals_aggregation.Cash: true
    title_placement_bs_gl_journals_aggregation.Cash: below
    value_format_bs_gl_journals_aggregation.Cash: $0, "K"
    show_comparison_bs_gl_journals_aggregation.Current_Assets: true
    comparison_style_bs_gl_journals_aggregation.Current_Assets: calculate_progress_perc
    comparison_show_label_bs_gl_journals_aggregation.Current_Assets: true
    comparison_label_placement_bs_gl_journals_aggregation.Current_Assets: below
    comp_value_format_bs_gl_journals_aggregation.Current_Assets: $0, "K"
    pos_is_bad_bs_gl_journals_aggregation.Current_Assets: false
    style_bs_gl_journals_aggregation.Current_Assets: "#3A4245"
    show_title_bs_gl_journals_aggregation.Current_Assets: true
    title_placement_bs_gl_journals_aggregation.Current_Assets: above
    value_format_bs_gl_journals_aggregation.Current_Assets: ''
    show_title_dim_date.year: false
    show_title_dim_date.month_name: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: bs_gl_journals_aggregation.Cash,
            id: bs_gl_journals_aggregation.Cash, name: Cash}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    label_value_format: $0.0, "K"
    series_types: {}
    label_color: [black]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    listen:
      Year: dim_date.year
    row: 0
    col: 0
    width: 5
    height: 5
  - title: Account Receivable
    name: Account Receivable
    model: infoficus_matterport_demo
    explore: bs_gl_journals_aggregation
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [bs_gl_journals_aggregation.Account_Receivable, dim_date.year, bs_gl_journals_aggregation.Equity]
    filters:
      dim_date.month_num_in_year: '1,2,3,4,5,6,7,8,9,10,11,12'
    sorts: [bs_gl_journals_aggregation.Account_Receivable desc]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: [dim_date.year]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '15'
    orientation: vertical
    style_bs_gl_journals_aggregation.Account_Receivable: "#4276BE"
    show_title_bs_gl_journals_aggregation.Account_Receivable: true
    title_placement_bs_gl_journals_aggregation.Account_Receivable: below
    value_format_bs_gl_journals_aggregation.Account_Receivable: $#,##0, "K"
    show_comparison_bs_gl_journals_aggregation.Equity: true
    comparison_style_bs_gl_journals_aggregation.Equity: value
    comparison_show_label_bs_gl_journals_aggregation.Equity: true
    comparison_label_placement_bs_gl_journals_aggregation.Equity: below
    comp_value_format_bs_gl_journals_aggregation.Equity: $#,##0, "K"
    style_bs_gl_journals_aggregation.Equity: "#3A4245"
    show_title_bs_gl_journals_aggregation.Equity: true
    title_placement_bs_gl_journals_aggregation.Equity: above
    value_format_bs_gl_journals_aggregation.Equity: ''
    show_comparison_bs_gl_journals_aggregation.Current_Liabilities: true
    comparison_style_bs_gl_journals_aggregation.Current_Liabilities: calculate_progress_perc
    comparison_show_label_bs_gl_journals_aggregation.Current_Liabilities: true
    comparison_label_bs_gl_journals_aggregation.Current_Liabilities: ''
    comparison_label_placement_bs_gl_journals_aggregation.Current_Liabilities: below
    comp_value_format_bs_gl_journals_aggregation.Current_Liabilities: $0.00, "K"
    pos_is_bad_bs_gl_journals_aggregation.Current_Liabilities: false
    style_bs_gl_journals_aggregation.Current_Liabilities: "#3A4245"
    show_title_bs_gl_journals_aggregation.Current_Liabilities: true
    title_placement_bs_gl_journals_aggregation.Current_Liabilities: above
    value_format_bs_gl_journals_aggregation.Current_Liabilities: ''
    show_title_dim_date.year: true
    show_title_dim_date.month_name: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: bs_gl_journals_aggregation.Account_Receivable,
            id: bs_gl_journals_aggregation.Account_Receivable, name: Account Receivable}],
        showLabels: false, showValues: true, valueFormat: '$0, "K"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: $0.0, "K"
    series_types: {}
    series_colors: {}
    label_color: [black]
    defaults_version: 0
    listen:
      Year: dim_date.year
    row: 0
    col: 5
    width: 5
    height: 5
  - title: Debt to Asset Ratio
    name: Debt to Asset Ratio
    model: infoficus_matterport_demo
    explore: bs_gl_journals_aggregation
    type: single_value
    fields: [bs_gl_journals_aggregation.Debt_To_Assets_Ratio, dim_date.year]
    filters:
      dim_date.month_num_in_year: '1,2,3,4,5,6,7,8,9,10,11,12'
    sorts: [bs_gl_journals_aggregation.Debt_To_Assets_Ratio desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#079c98"
    value_format: '0.000'
    hidden_fields: [dim_date.year]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '10'
    orientation: vertical
    show_title_bs_gl_journals_aggregation.Debt_To_Assets_Ratio: false
    value_format_bs_gl_journals_aggregation.Debt_To_Assets_Ratio: '0.000'
    show_title_dim_date.year: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: bottom, series: [{axisId: bs_gl_journals_aggregation.Debt_To_Assets_Ratio,
            id: bs_gl_journals_aggregation.Debt_To_Assets_Ratio, name: Debt to Assets
              Ratio}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: '0.000'
    series_types: {}
    label_color: [black]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Year: dim_date.year
    row: 0
    col: 20
    width: 4
    height: 5
  - title: Account Payable
    name: Account Payable
    model: infoficus_matterport_demo
    explore: bs_gl_journals_aggregation
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [bs_gl_journals_aggregation.Account_Payable, dim_date.year, bs_gl_journals_aggregation.Current_Liabilities]
    filters:
      dim_date.month_num_in_year: '1,2,3,4,5,6,7,8,9,10,11,12'
    sorts: [bs_gl_journals_aggregation.Account_Payable desc]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: [dim_date.year]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '15'
    orientation: vertical
    style_bs_gl_journals_aggregation.Account_Payable: "#E57947"
    show_title_bs_gl_journals_aggregation.Account_Payable: true
    title_placement_bs_gl_journals_aggregation.Account_Payable: below
    value_format_bs_gl_journals_aggregation.Account_Payable: $0, "K"
    show_comparison_bs_gl_journals_aggregation.Current_Liabilities: true
    comparison_style_bs_gl_journals_aggregation.Current_Liabilities: calculate_progress_perc
    comparison_show_label_bs_gl_journals_aggregation.Current_Liabilities: true
    comparison_label_placement_bs_gl_journals_aggregation.Current_Liabilities: below
    comp_value_format_bs_gl_journals_aggregation.Current_Liabilities: ''
    pos_is_bad_bs_gl_journals_aggregation.Current_Liabilities: false
    style_bs_gl_journals_aggregation.Current_Liabilities: "#3A4245"
    show_title_bs_gl_journals_aggregation.Current_Liabilities: true
    title_placement_bs_gl_journals_aggregation.Current_Liabilities: above
    value_format_bs_gl_journals_aggregation.Current_Liabilities: ''
    show_comparison_bs_gl_journals_aggregation.Equity: true
    comparison_style_bs_gl_journals_aggregation.Equity: value
    comparison_show_label_bs_gl_journals_aggregation.Equity: true
    comparison_label_placement_bs_gl_journals_aggregation.Equity: below
    comp_value_format_bs_gl_journals_aggregation.Equity: ''
    pos_is_bad_bs_gl_journals_aggregation.Equity: false
    style_bs_gl_journals_aggregation.Equity: "#3A4245"
    show_title_bs_gl_journals_aggregation.Equity: true
    title_placement_bs_gl_journals_aggregation.Equity: above
    value_format_bs_gl_journals_aggregation.Equity: ''
    style_dim_date.month_name: "#3A4245"
    show_title_dim_date.month_name: false
    title_placement_dim_date.month_name: above
    value_format_dim_date.month_name: ''
    show_comparison_bs_gl_journals_aggregation.Account_Payable: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: bs_gl_journals_aggregation.Account_Payable,
            id: bs_gl_journals_aggregation.Account_Payable, name: Account Payable}],
        showLabels: false, showValues: true, valueFormat: '$ 0, "K"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: $ 0.0, "K"
    label_color: [black]
    defaults_version: 0
    series_types: {}
    listen:
      Year: dim_date.year
    row: 0
    col: 10
    width: 5
    height: 5
  - title: Debt to Equity Ratio
    name: Debt to Equity Ratio
    model: infoficus_matterport_demo
    explore: bs_gl_journals_aggregation
    type: single_value
    fields: [bs_gl_journals_aggregation.Debt_To_Equity_Ratio, dim_date.year]
    filters:
      dim_date.month_num_in_year: '1,2,3,4,5,6,7,8,9,10,11,12'
    sorts: [bs_gl_journals_aggregation.Debt_To_Equity_Ratio desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    custom_color: "#FF8168"
    value_format: '0.000'
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: [dim_date.year]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '10'
    orientation: vertical
    show_title_bs_gl_journals_aggregation.Debt_To_Equity_Ratio: false
    value_format_bs_gl_journals_aggregation.Debt_To_Equity_Ratio: '0.000'
    show_title_dim_date.year: false
    show_title_dim_date.month_name: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: bs_gl_journals_aggregation.Debt_To_Equity_Ratio,
            id: bs_gl_journals_aggregation.Debt_To_Equity_Ratio, name: Debt to Equity
              Ratio}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: '0.00'
    series_types: {}
    label_color: [black]
    defaults_version: 1
    listen:
      Year: dim_date.year
    row: 0
    col: 15
    width: 5
    height: 5
  - title: Cash and AR
    name: Cash and AR
    model: infoficus_matterport_demo
    explore: bs_gl_journals_aggregation
    type: looker_area
    fields: [dim_date.month_num_in_year, bs_gl_journals_aggregation.Cash, bs_gl_journals_aggregation.Account_Receivable,
      dim_date.month_name]
    sorts: [dim_date.month_num_in_year]
    limit: 500
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
    legend_position: right
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: bs_gl_journals_aggregation.Cash,
            id: bs_gl_journals_aggregation.Cash, name: Cash}, {axisId: bs_gl_journals_aggregation.Account_Receivable,
            id: bs_gl_journals_aggregation.Account_Receivable, name: Account Receivable}],
        showLabels: false, showValues: true, valueFormat: '0, "K"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '10'
    label_value_format: '#,##0,"K"'
    series_types: {}
    series_labels: {}
    label_color: [white]
    swap_axes: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_fields: [dim_date.month_num_in_year]
    value_labels: legend
    label_type: labPer
    hidden_points_if_no: []
    bar_range_max: 0
    listen:
      Year: dim_date.year
    row: 5
    col: 0
    width: 12
    height: 7
  - title: Top AR by Customer
    name: Top AR by Customer
    model: infoficus_matterport_demo
    explore: budget_detail_analysis
    type: table
    fields: [budget_detail_analysis.full_name, budget_detail_analysis.Amount]
    filters:
      budget_detail_analysis.name: Accounts Receivable
    sorts: [budget_detail_analysis.Amount desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: ''
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    legend_position: center
    font_size: '15'
    series_types: {}
    point_style: circle
    series_colors: {}
    series_point_styles: {}
    show_value_labels: true
    label_density: 25
    label_color: [white]
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1ebd8493-ebcc-4e57-a4ff-ab3e6111da24, options: {steps: 2, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: true, stepped: true}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    defaults_version: 1
    series_column_widths:
      budget_detail_analysis.full_name: 492
    listen: {}
    row: 5
    col: 12
    width: 12
    height: 7
  - title: AR by Company
    name: AR by Company
    model: infoficus_matterport_demo
    explore: fact_gljournals
    type: looker_column
    fields: [dim_entity.entity_desc, fact_gljournals.Net_amount, dim_date.year]
    filters:
      dim_account.acct_desc: Accounts Receivable
    sorts: [fact_gljournals.Net_amount desc]
    limit: 500
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_gljournals.Net_amount,
            id: fact_gljournals.Net_amount, name: Net Amount}], showLabels: false,
        showValues: true, valueFormat: '0, "M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: '15'
    label_value_format: $#,##0, "K"
    series_types: {}
    series_colors:
      fact_gljournals.Net_amount: "#E8710A"
    series_labels: {}
    label_color: [white]
    column_spacing_ratio: 0.8
    font_size_main: ''
    orientation: vertical
    show_title_dim_entity.entity_desc: false
    defaults_version: 1
    hidden_fields: [dim_date.year]
    hidden_points_if_no: []
    listen:
      Year: dim_date.year
    row: 12
    col: 0
    width: 6
    height: 8
  - title: AP by Company
    name: AP by Company
    model: infoficus_matterport_demo
    explore: fact_gljournals
    type: looker_column
    fields: [dim_entity.entity_desc, fact_gljournals.Net_amount, dim_date.year]
    filters:
      dim_account.acct_desc: Accounts Payable
    sorts: [fact_gljournals.Net_amount desc]
    limit: 500
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
    y_axes: [{label: '', orientation: left, series: [{axisId: fact_gljournals.Net_amount,
            id: fact_gljournals.Net_amount, name: Net Amount}], showLabels: false,
        showValues: true, valueFormat: '0, "M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: $#,##0,"K"
    series_colors:
      fact_gljournals.Net_amount: "#E57947"
    label_color: [white]
    column_spacing_ratio: 0.8
    defaults_version: 1
    hidden_fields: [dim_date.year]
    listen:
      Year: dim_date.year
    row: 12
    col: 6
    width: 6
    height: 8
  - title: Account Receivable and Account Payable
    name: Account Receivable and Account Payable
    model: infoficus_matterport_demo
    explore: bs_gl_journals_aggregation
    type: looker_line
    fields: [dim_date.month_name, dim_date.month_num_in_year, bs_gl_journals_aggregation.Account_Payable,
      bs_gl_journals_aggregation.Account_Receivable]
    filters:
      dim_date.month_num_in_year: '1,2,3,4,5,6,7,8,9,10,11,12'
    sorts: [dim_date.month_num_in_year desc]
    limit: 500
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
    y_axis_reversed: true
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: bs_gl_journals_aggregation.Account_Receivable,
            id: bs_gl_journals_aggregation.Account_Receivable, name: Account Receivable}],
        showLabels: false, showValues: false, valueFormat: '$0, "K"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: '', orientation: left,
        series: [{axisId: bs_gl_journals_aggregation.Account_Payable, id: bs_gl_journals_aggregation.Account_Payable,
            name: Account Payable}], showLabels: false, showValues: true, valueFormat: '$0,
          "K"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: $0, "K"
    series_types:
      bs_gl_journals_aggregation.Account_Payable: column
    series_colors:
      bs_gl_journals_aggregation.Cash: "#7CB342"
      bs_gl_journals_aggregation.Account_Receivable: "#c77f0c"
      bs_gl_journals_aggregation.Account_Payable: "#10cc0a"
    label_color: [Black]
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [dim_date.month_num_in_year]
    defaults_version: 1
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
      Year: dim_date.year
    row: 12
    col: 12
    width: 12
    height: 8
  filters:
  - name: Year
    title: Year
    type: number_filter
    default_value: '2016'
    allow_multiple_values: true
    required: false
