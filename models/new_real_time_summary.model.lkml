connection: "lok_db_obi"

# include all the views
include: "/views/**/*.view"

datagroup: new_real_time_summary_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: new_real_time_summary_default_datagroup


explore: location {}

explore: real_time_summary {
  join: location {
    type: left_outer
    relationship: many_to_one
    sql_on: ${real_time_summary.curr_loc_fk}=${location.locn_sk} ;;
  }
}
