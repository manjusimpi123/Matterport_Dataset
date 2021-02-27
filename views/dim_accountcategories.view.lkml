view: dim_accountcategories {
  sql_table_name: "FINANCE"."DIM_ACCOUNTCATEGORIES"
    ;;

  dimension: account_category {
    type: string
    sql: ${TABLE}."ACCOUNT_CATEGORY" ;;
  }

  dimension: account_range_max {
    type: string
    sql: ${TABLE}."ACCOUNT_RANGE_MAX" ;;
  }

  dimension: account_range_min {
    type: string
    sql: ${TABLE}."ACCOUNT_RANGE_MIN" ;;
  }

  dimension: category_type {
    type: string
    sql: ${TABLE}."CATEGORY_TYPE" ;;
  }

  dimension: d_accountcategories_key {
    type: number
    primary_key: yes
    sql: ${TABLE}."D_ACCOUNTCATEGORIES_KEY" ;;
  }
  dimension: Dim_Revenue{
    type:number
    sql:
       CASE WHEN ${account_category}='Sales' or  ${account_category}= 'Other Income'
       THEN ${fact_gljournals.net_amount}
       END ;;
  }
  dimension: Dim_operating_expense{
    type:number
    sql:
      case when ${account_category}='Operational Expenses'
      THEN ${fact_gljournals.net_amount} END;;
  }
  dimension: Dim_Expense{
    type:number
    sql:
      case when ${account_category}='Other Expense' and ${account_category}='Operational Expenses'
      THEN ${fact_gljournals.net_amount} END;;
  }

  dimension: Dim_cost_of_goods_sold{
    type:number
    sql:
      case when ${account_category}='COGS'
      THEN ${fact_gljournals.net_amount} END;;
  }

  dimension: Dim_assets{
    type:number
    sql:
      case when ${category_type}='Asset'
      THEN ${fact_gljournals.net_amount} END;;
  }

  dimension: Dim_Liabilities{
    type:number
    sql:
      case when ${category_type}='Liabilties'
      THEN ${fact_gljournals.net_amount}
      END;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
