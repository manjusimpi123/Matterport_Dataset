connection: "infoficus_matterport_demo"
include: "/views/**/*.view"
include: "/**/*.dashboard"
label: "Infofiscus Finance"

datagroup: infofiscus_matterport_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: infofiscus_matterport_demo_default_datagroup

explore: fact_gljournals {
  label: "Income and Expense"
  join: dim_account {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gljournals.d_account_key}=${dim_account.d_account_key} ;;
    # sql_on: ${fact_gljournals.D Account Key} = ${dim_account.D Account Key} ;;
  }
  join: dim_accountcategories {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gljournals.accountcategories_key} = ${dim_accountcategories.d_accountcategories_key} ;;
  }
  join: dim_date {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gljournals.posted_date_key} = ${dim_date.date_pkey} ;;
  }
  join:  dim_entity{
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gljournals.d_entity_key} = ${dim_entity.d_entity_key} ;;
  }

  join:dim_department  {
    type:left_outer
    relationship: many_to_one
    sql_on: ${fact_gljournals.d_dept_key} = ${dim_department.d_dept_key} ;;
  }
  }
  explore: bs_gl_journals_aggregation {
    label:"Liquid Analysis"
    join: dim_date {
      type: left_outer
      relationship: many_to_one
      sql_on: ${bs_gl_journals_aggregation.gl_transaction_date_key} = ${dim_date.date_pkey} ;;
    }
  }
explore:fact_plan {
  label:"Budget Detail"
  join: dim_account {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_plan.account_code_key} = ${dim_account.d_account_key} ;;
  }

  join: account_categories {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_plan.accountcategories_key} = ${account_categories.d_accountcategories_key} ;;
  }

  join: dim_date {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_plan.plan_year_date_key} = ${dim_date.date_pkey} ;;
  }
  join: dim_department {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_plan.dept_code_key} = ${dim_department.d_dept_key} ;;
  }

}


explore: pnl_gl_journals_aggregation {}

explore: agg_balancesheet {}

explore: agg_trial_balance {}

explore:fact_gl_invoice {
  label: "Account Receivable"
  join: dim_account {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_invoice.d_account_key}  = ${dim_account.d_account_key} ;;
  }
  join: dim_currencies {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_invoice.d_currency_key} = ${dim_currencies.d_currency_key} ;;
  }
  join:dim_entity  {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_invoice.d_entity_key} = ${dim_entity.d_entity_key};;

  }
}
