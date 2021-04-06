view: fact_gl_invoice {
  sql_table_name: "FINANCE"."FACT_GL_INVOICE"
    ;;

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."AMOUNT" ;;
  }

  dimension: d_account_key {
    type: number
    sql: ${TABLE}."D_ACCOUNT_KEY" ;;
  }

  dimension: d_accountingperiods_key {
    type: number
    sql: ${TABLE}."D_ACCOUNTINGPERIODS_KEY" ;;
  }

  dimension: d_currency_key {
    type: number
    sql: ${TABLE}."D_CURRENCY_KEY" ;;
  }

  dimension: d_customers_key {
    type: number
    sql: ${TABLE}."D_CUSTOMERS_KEY" ;;
  }

  dimension: d_entity_key {
    type: number
    sql: ${TABLE}."D_ENTITY_KEY" ;;
  }

  dimension: d_item_key {
    type: number
    sql: ${TABLE}."D_ITEM_KEY" ;;
  }

  dimension: d_tax_vendor_key {
    type: number
    sql: ${TABLE}."D_TAX_VENDOR_KEY" ;;
  }

  dimension_group: date_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE_CREATED" ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}."DISCOUNT_AMOUNT" ;;
  }

  dimension: discount_rate {
    type: string
    sql: ${TABLE}."DISCOUNT_RATE" ;;
  }

  dimension_group: due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DUE_DATE" ;;
  }
  dimension:duedate {
    type: date
    sql: ${due_date} ;;
  }
  dimension:now {
    type: date
    sql: now() ;;
  }

  dimension: OverdueInvoicesnotcleared  {
    type: number
    sql: case when ${inv_status} = 'Open' and ${duedate} < ${now} then ${inv_tranid} end ;;
  }

  measure: Overdue_Invoices_not_cleared  {
    type: count_distinct
   sql: ${OverdueInvoicesnotcleared} ;; }

  dimension: dw_key_id {
    type: string
    sql: ${TABLE}."DW_KEY_ID" ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}."EXCHANGE_RATE" ;;
  }

  dimension: fact_invoice_key {
    type: number
    sql: ${TABLE}."FACT_INVOICE_KEY" ;;
  }

  dimension: gross_profit_percent {
    type: number
    sql: ${TABLE}."GROSS_PROFIT_PERCENT" ;;
  }

  dimension: grossprofit {
    type: number
    sql: ${TABLE}."GROSSPROFIT" ;;
  }

  dimension_group: insert_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."INSERT_DT" ;;
  }

  dimension: inv_status {
    type: string
    sql: ${TABLE}."INV_STATUS" ;;
  }

  dimension: inv_tranid {
    type: string
    sql: ${TABLE}."INV_TRANID" ;;
  }

  dimension: openbalance {
    type: number
    sql: ${TABLE}."OPENBALANCE" ;;
  }

  dimension: openbalance_foreign {
    type: number
    sql: ${TABLE}."OPENBALANCE_FOREIGN" ;;
  }

  dimension: pending_amount {
    type: number
    sql: ${TABLE}."PENDING_AMOUNT" ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}."SUBTOTAL" ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}."TAX_RATE" ;;
  }

  dimension: tax_total {
    type: number
    sql: ${TABLE}."TAX_TOTAL" ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}."TOTAL_AMOUNT" ;;
  }

  dimension_group: trandate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."TRANDATE" ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}."TRANSACTION_ID" ;;
  }

  dimension: transaction_line_id {
    type: number
    sql: ${TABLE}."TRANSACTION_LINE_ID" ;;
  }

  dimension_group: update_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."UPDATE_DT" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
