view: goal_status_action {
  sql_table_name: proh_symphony.goal_status_action ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accomplished_wait_period {
    type: number
    sql: ${TABLE}.accomplished_wait_period ;;
  }

  dimension: action_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.action_definition_id ;;
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

  dimension: default_create_status {
    type: number
    sql: ${TABLE}.default_create_status ;;
  }

  dimension: default_due_date_period {
    type: number
    sql: ${TABLE}.default_due_date_period ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: goal_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.goal_definition_id ;;
  }

  dimension: goal_status {
    type: string
    sql: ${TABLE}.goal_status ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: snooze_period {
    type: number
    sql: ${TABLE}.snooze_period ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      goal_definition.id,
      goal_definition.name,
      goal_definition.short_name,
      action_definition.id,
      action_definition.name
    ]
  }
}
