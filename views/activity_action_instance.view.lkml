view: activity_action_instance {
  sql_table_name: proh_symphony.activity_action_instance ;;

  dimension: action_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.action_id ;;
  }

  dimension: activity_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_id ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [activity.id, activity.workflow_state_name, action.id]
  }
}
