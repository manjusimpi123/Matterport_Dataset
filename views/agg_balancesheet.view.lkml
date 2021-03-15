view: agg_balancesheet {
  sql_table_name: "FINANCE"."AGG_BALANCESHEET"
    ;;

  dimension: account {
    type: string
    sql: ${TABLE}."ACCOUNT" ;;
  }

  dimension: account_category {
    type: string
    sql: ${TABLE}."ACCOUNT_CATEGORY" ;;
  }
  measure: Current_Assets {
    type: sum
    sql: CASE WHEN ${account_category}='Current Assets'
      THEN ${ending_balance} end  ;;
  }

  measure: Current_Liabilities {
    type: sum
    sql: CASE WHEN ${account_category}='Current Liabilities'
      THEN ${ending_balance} end;;
  }
  measure: Total_Liabilities {
    type: sum
    sql: CASE WHEN ${account_category}='Current Liabilities' or ${account_category}='Long Term Liabilities'
      THEN ${ending_balance} end  ;;
  }

  measure: Total_Equity {
    type: sum
    sql: CASE WHEN ${account_category}='Equity'
      THEN ${ending_balance} end;;
  }

  measure: Working_Capital {
    type: number
    sql: ${Current_Assets}-${Current_Liabilities} ;;
    }

  dimension: account_desc {
    type: string
    sql: ${TABLE}."ACCOUNT_DESC" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: account_subcategories {
    type: string
    sql: ${TABLE}."ACCOUNT_SUBCATEGORIES" ;;
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
