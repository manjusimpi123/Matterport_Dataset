connection: "infoficus_matterport_demo"

include: "/views/**/*.view"
include: "/**/*.dashboard"
label: "Account Receivable1"

datagroup: infofiscus_matterport_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}
explore:fact_gl_invoice {
  label: "Account Receivable1"
  join:stg_gl_invoice  {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_gl_invoice.dw_key_id} = ${stg_gl_invoice.dw_key_id};;
    }
  }

# include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
