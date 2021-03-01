- dashboard: infofiscus_balance_sheet


  tile_size: 100


  title: Balance Sheet
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - name: Balance Sheet
    title: Balance Sheet
    model: infoficus_matterport_demo
    explore: bs_gl_journals_aggregation
    type: looker_grid
    fields: [bs_gl_journals_aggregation.Net_Amt, bs_gl_journals_aggregation.hier5_name,
      bs_gl_journals_aggregation.hier4_name, bs_gl_journals_aggregation.hier_name,
      dim_date.fiscal_year]
    pivots: [dim_date.fiscal_year]
    filters:
      bs_gl_journals_aggregation.fiscal_year: not 0
    sorts: [bs_gl_journals_aggregation.hier5_name, bs_gl_journals_aggregation.hier4_name,
      bs_gl_journals_aggregation.hier_name, bs_gl_journals_aggregation.Net_Amt desc
        0, dim_date.fiscal_year]
    subtotals: [bs_gl_journals_aggregation.hier5_name, bs_gl_journals_aggregation.hier4_name]
    limit: 500
    total: true
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      bs_gl_journals_aggregation.hier5_name: 202
      bs_gl_journals_aggregation.hier4_name: 182
      bs_gl_journals_aggregation.hier_name: 262
      bs_gl_journals_aggregation.Net_Amt: 130
    header_font_color: "#FDEC85"
    header_background_color: "#bd0b1b"
    hidden_fields:
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 10
  filters:
  - name: Untitled Filter
    title: Untitled Filter
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
