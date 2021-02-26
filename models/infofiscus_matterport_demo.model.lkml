connection: "infoficus_matterport_demo"

label: "Infofiscus Matterport Finance Model"

datagroup: infofiscus_matterport_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}



persist_with: infofiscus_matterport_demo_default_datagroup
