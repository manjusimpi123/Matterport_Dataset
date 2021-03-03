view: bs_gl_journals_aggregation {
  sql_table_name: "FINANCE"."BS_GL_JOURNALS_AGGREGATION"
    ;;

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: accountcategories_key {
    type: number
    sql: ${TABLE}."ACCOUNTCATEGORIES_KEY" ;;
  }

  dimension: aggregate_net_amount {
    type: number
    sql: ${TABLE}."AGGREGATE_NET_AMOUNT" ;;
  }

  dimension: begin_balance {
    type: number
    sql: ${TABLE}."BEGIN_BALANCE" ;;
  }

  dimension: fiscal_period {
    type: string
    sql: ${TABLE}."FISCAL_PERIOD" ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}."FISCAL_YEAR" ;;
  }

  dimension: gl_transaction_date_key {
    type: number
    sql: ${TABLE}."GL_TRANSACTION_DATE_KEY" ;;
  }

  dimension: hier1_name {
    type: string
    sql: ${TABLE}."HIER1_NAME" ;;
  }

  dimension: hier2_name {
    type: string
    sql: ${TABLE}."HIER2_NAME" ;;
  }

  dimension: hier3_name {
    type: string
    sql: ${TABLE}."HIER3_NAME" ;;
  }

  dimension: hier4_name {
    type: string
    sql: ${TABLE}."HIER4_NAME" ;;
  }

  dimension: hier5_name {
    type: string
    sql: ${TABLE}."HIER5_NAME" ;;
  }

  dimension: hier_name {
    type: string
    sql: ${TABLE}."HIER_NAME" ;;
  }

  dimension: hier_num {
    type: string
    sql: ${TABLE}."HIER_NUM" ;;
  }

  dimension: key_id {
    type: string
    sql: ${TABLE}."KEY_ID" ;;
  }

  dimension: net_amount {
    type: number
    sql: ${TABLE}."NET_AMOUNT" ;;
  }


  dimension:Dim_Cash{
    type:number
    sql:
      case when ${hier3_name} ='Bank'
      THEN ${net_amount}
      END;;
  }
  dimension:Dim_Fixed_Asset{
    type:number
    sql:
      case when ${hier3_name}='Fixed Asset'
      THEN ${net_amount}
      END;;
  }
  dimension:Dim_Account_Receivable
  {
    type:number
    sql:
      case when ${hier2_name}='1200000 - Accounts Receivable'
      THEN ${net_amount}
      END;;
  }

  dimension:Dim_Total_Liabilities
  {
    type:number
    sql:
      case when ${hier4_name} ='Liability'
      THEN ${net_amount}
      END;;
  }

  dimension:Dim_Total_Assets
  {
    type:number
    sql:
      case when ${hier5_name}='Asset'
      THEN ${net_amount}
      END;;
  }

  dimension:Dim_Account_Payable
  {
    type:number
    sql:
      case when ${hier2_name} like '%Accounts Payable%'
      THEN ${net_amount}
      END;;
  }
  dimension:Dim_Current_Assets
  {
    type:number
    sql:
      case when ${hier4_name}='Current Asset'
      THEN ${net_amount}
      END;;
  }

  dimension:Dim_Current_Liabilities
  {
    type:number
    sql:
      case when ${hier4_name}='Current Liability'
      THEN ${net_amount}*-1
      END;;

    }

    measure:Total_Liabilities{
      type: sum
      sql:${Dim_Total_Liabilities};;
      value_format: "$0.000,,\" M\""
    }
    measure:Total_Assets{
      type: sum
      sql:${Dim_Total_Assets};;
      value_format: "$0.000,,\" M\""
    }
    measure:Debt_To_Assets_Ratio{
      type: number
      sql:${Total_Liabilities} / ${Total_Assets};;
    }
    measure:Equity{
      type: number
      sql:${Total_Assets} - ${Total_Liabilities};;
      value_format: "$0.000,,\" M\""
    }
    measure:Cash{
      type: sum
      sql:${Dim_Cash};;
    }
    measure:Account_Receivable{
      type: sum
      sql:${Dim_Account_Receivable};;
    }
    measure:Account_Payable{
      type: sum
      sql:${Dim_Account_Payable};;
    }
    measure:Debt_To_Equity_Ratio{
      type: number
      sql:${Total_Liabilities} / ${Equity};;
    }
    measure:Current_Assets{
      type: sum
      sql:${Dim_Current_Assets};;
      value_format: "$0.000,,\" M\""
    }
    measure:Current_Liabilities{
      type: sum
      sql:${Dim_Current_Liabilities};;
      value_format: "$0.000,,\" M\""
    }
    measure:Current_Ratio{
      type: number
      sql:${Current_Assets}-${Current_Liabilities};;
    }
    measure:Net_Amount{
      type: sum
      sql:${net_amount};;
    }

    # ----- Sets of fields for drilling ------
    set: detail {
      fields: [
        hier_name,
        hier2_name,
        hier5_name,
        hier1_name,
        hier3_name,
        hier4_name
      ]
    }
  measure: count {
    type: count
    drill_fields: [detail*]
  }


}
