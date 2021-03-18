view: agg_balancesheet {
  sql_table_name: "FINANCE"."AGG_BALANCESHEET"
    ;;

  dimension: account_category {
    type: string
    sql: ${TABLE}."ACCOUNT_CATEGORY" ;;
  }

  dimension: account_desc {
    type: string
    sql: ${TABLE}."ACCOUNT_DESC" ;;
  }
  measure: Current_Assets {
    type: sum
    sql: CASE WHEN ${account_subcategory}='Current Assets'
      THEN ${ending_balance} end  ;;
    value_format: "0.000,,\" M\""
  }

  measure: Current_Liabilities {
    type: sum
    sql: CASE WHEN ${account_subcategory}='Current Liabilities'
      THEN ${ending_balance} end;;
    value_format: "0.000,,\" M\""
  }
  measure: Total_Liabilities {
    type: sum
    sql: CASE WHEN ${account_subcategory}='Current Liabilities' or ${account_subcategory}='Long Term Liabilities'
      THEN ${ending_balance} end  ;;
    value_format: "0.000,,\" M\""
  }

  measure: Total_Equity {
    type: sum
    sql: CASE WHEN ${account_subcategory}='Equity'
      THEN ${ending_balance} end;;
    value_format: "0.000,,\" M\""
  }

  measure: Working_Capital {
    type: number
    sql: ${Current_Assets}-${Current_Liabilities} ;;
    value_format: "0,\" K\""
  }


  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: account_subcategory {
    type: string
    sql: ${TABLE}."ACCOUNT_SUBCATEGORY" ;;
  }

  dimension: account_title {
    type: string
    sql: ${TABLE}."ACCOUNT_TITLE" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."AMOUNT" ;;
  }

  dimension: begin_balance {
    type: number
    sql: ${TABLE}."BEGIN_BALANCE" ;;
  }

  dimension: ending_balance {
    type: number
    sql: ${TABLE}."ENDING_BALANCE" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
