view: real_time_summary {
  sql_table_name: Looker_Dashboard.Real_Time_Summary ;;

  dimension: boss_consol_ind {
    type: yesno
    sql: ${TABLE}.boss_consol_ind ;;
  }

  dimension_group: boss_delvr_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.boss_delvr_ts ;;
  }

  dimension: boss_ind {
    type: yesno
    sql: ${TABLE}.boss_ind ;;
  }

  dimension: boss_outbound_in_process_fil_location_ {
    type: number
    hidden: yes
    sql: ${TABLE}.BOSS_Outbound_in_Process_FIL_Location_ ;;
  }

  dimension: boss_shipments_picked_up {
    type: number
    hidden: yes
    sql: ${TABLE}.BOSS_Shipments_Picked_Up ;;
  }

  dimension: boss_shipments_ready_for_pickup {
    type: number
    hidden: yes
    sql: ${TABLE}.BOSS_Shipments_Ready_for_Pickup ;;
  }

  dimension: boss_shipments_received {
    type: number
    hidden: yes
    sql: ${TABLE}.BOSS_Shipments_Received ;;
  }

  dimension: boss_shipments_stored {
    type: number
    hidden: yes
    sql: ${TABLE}.BOSS_Shipments_Stored ;;
  }

  dimension: boss_shipments_to_be_returned {
    type: number
    hidden: yes
    sql: ${TABLE}.BOSS_Shipments_to_be_Returned ;;
  }

  dimension: curr_loc_fk {
    type: number
    primary_key: yes
    sql: ${TABLE}.curr_loc_fk ;;
  }

  dimension: late_boss_shipments {
    type: number
    hidden: yes
    sql: ${TABLE}.Late_BOSS_Shipments ;;
  }

  dimension: overall_boss_shipments_pickup_location_ {
    type: number
    hidden: yes
    sql: ${TABLE}.Overall_BOSS_Shipments_Pickup_Location_ ;;
  }

  measure: boss_outbound_in_process_fil_location {
    type: sum
    sql: ${TABLE}.BOSS_Outbound_in_Process_FIL_Location_ ;;
    drill_fields: [location.Division,location.Region,location.District,location.Store,boss_outbound_in_process_fil_location]
  }

  measure: boss_shipments_pckd_up {
    type: sum
    sql: ${TABLE}.BOSS_Shipments_Picked_Up ;;
    drill_fields: [location.Division,location.Region,location.District,location.Store,boss_shipments_pckd_up]
  }

  measure: boss_shipment_ready_for_pickup {
    type: sum
    sql: ${TABLE}.BOSS_Shipments_Ready_for_Pickup ;;
    drill_fields: [location.Division,location.Region,location.District,location.Store,boss_shipment_ready_for_pickup]
  }

  measure: boss_shipments_rcd {
    type: sum
    sql: ${TABLE}.BOSS_Shipments_Received ;;
    drill_fields: [location.Division,location.Region,location.District,location.Store,boss_shipments_rcd]
  }

  measure: boss_shipments_strd {
    type: sum
    sql: ${TABLE}.BOSS_Shipments_Stored ;;
    drill_fields: [location.Division,location.Region,location.District,location.Store,boss_shipments_strd]
  }

  measure: boss_shipment_to_return {
    type: number
    sql: ${TABLE}.BOSS_Shipments_to_be_Returned ;;
    drill_fields: [location.Division,location.Region,location.District,location.Store,boss_shipment_to_return]
  }

  measure: late_boss_shipment {
    type: sum
    sql: ${TABLE}.Late_BOSS_Shipments ;;
    drill_fields: [location.Division,location.Region,location.District,location.Store,late_boss_shipment]
  }

  measure: overall_boss_shipments_pickup_location {
    type: sum
    sql: ${TABLE}.Overall_BOSS_Shipments_Pickup_Location_ ;;
    drill_fields: [location.Division,location.Region,location.District,location.Store,overall_boss_shipments_pickup_location]
  }
}
