view: bs_aggregation {
  sql_table_name: "FINANCE"."BS_AGGREGATION"
    ;;

  dimension: account {
    type: string
    sql: ${TABLE}."ACCOUNT" ;;
  }

  dimension: account_category {
    type: string
    sql: ${TABLE}."ACCOUNT_CATEGORY" ;;
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
