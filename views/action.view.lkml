view: action {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.action_definition_id ;;
  }

  dimension: action_definition_reason_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.action_definition_reason_id ;;
  }

  dimension: action_state_id {
    type: number
    sql: ${TABLE}.action_state_id ;;
  }

  dimension: action_status_id {
    type: number
    sql: ${TABLE}.action_status_id ;;
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

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }

  dimension_group: due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.due_date ;;
  }

  dimension_group: due_date_timestamp {
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
    sql: ${TABLE}.due_date_timestamp ;;
  }

  dimension: expected_value {
    type: number
    sql: ${TABLE}.expected_value ;;
  }

  dimension: goal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.goal_id ;;
  }

  dimension: import_payload {
    type: number
    sql: ${TABLE}.import_payload ;;
  }

  dimension: import_source_id {
    type: number
    sql: ${TABLE}.import_source_id ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  dimension: potential_value {
    type: number
    sql: ${TABLE}.potential_value ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.probability ;;
  }

  dimension: realized_value {
    type: number
    sql: ${TABLE}.realized_value ;;
  }

  dimension_group: state_last_updated {
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
    sql: ${TABLE}.state_last_updated ;;
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
      person.id,
      person.firstname,
      person.middlename,
      person.lastname,
      goal.id,
      action_definition.id,
      action_definition.name,
      action_definition_reason.id,
      action_activity.count,
      action_completion.count,
      activity_action_instance.count
    ]
  }
}
