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
