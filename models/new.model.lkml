connection: "tableautolooker"

include: "/views/**/*.view.lkml"
include: "../*.dashboard.lookml"

datagroup: new_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: new_default_datagroup

explore: superstore {
  label: "superstore"
}
