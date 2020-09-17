view: activity_log_goal_status_change {
  sql_table_name: proh_symphony.activity_log_goal_status_change ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: activity_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_id ;;
  }

  dimension: begin_status {
    type: string
    sql: ${TABLE}.begin_status ;;
  }

  dimension: end_status {
    type: string
    sql: ${TABLE}.end_status ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  measure: count {
    type: count
    drill_fields: [id, activity.id, activity.workflow_state_name]
  }
}
