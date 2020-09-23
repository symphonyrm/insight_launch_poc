view: activity_log_action_state_change {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_begin_state_disposition_id {
    type: number
    sql: ${TABLE}.action_begin_state_disposition_id ;;
  }

  dimension: action_begin_state_id {
    type: number
    sql: ${TABLE}.action_begin_state_id ;;
  }

  dimension: action_end_state_disposition_id {
    type: number
    sql: ${TABLE}.action_end_state_disposition_id ;;
  }

  dimension: action_end_state_id {
    type: number
    sql: ${TABLE}.action_end_state_id ;;
  }

  dimension: activity_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_id ;;
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
