view: action_completion {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_disposition_id {
    type: number
    sql: ${TABLE}.action_disposition_id ;;
  }

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

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
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
    drill_fields: [id, activity.id, activity.workflow_state_name, action.id]
  }
}
