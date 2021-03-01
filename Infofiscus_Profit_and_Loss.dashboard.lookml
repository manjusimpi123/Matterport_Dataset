- dashboard: infofiscus_profit_and_loss
  tile_size: 100
  title: P&L Statement 2
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - title: P&L Statement Drill down
    name: P&L Statement Drill down
    model: infofiscus_matterport_demo
    explore: pnl_gl_journals_aggregation
    type: table
    fields: [pnl_gl_journals_aggregation.hier4_name, pnl_gl_journals_aggregation.hier3_name,pnl_gl_journals_aggregation.hier2_name,
    pnl_gl_journals_aggregation.hier1_name,pnl_gl_journals_aggregation.hier_name,
      pnl_gl_journals_aggregation.net_amount, pnl_gl_journals_aggregation.fiscal_year]
    pivots: [pnl_gl_journals_aggregation.fiscal_year]
    filters:
      pnl_gl_journals_aggregation.fiscal_year: '2020'
    sorts: [pnl_gl_journals_aggregation.net_amount desc 0, pnl_gl_journals_aggregation.fiscal_year]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      pnl_gl_journals_aggregation.NetAmount: net_amount
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 10
