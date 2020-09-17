view: action_definition_reason_transition {
  sql_table_name: proh_symphony.action_definition_reason_transition ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_definition_reason_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.action_definition_reason_id ;;
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

  dimension: from_status_id {
    type: number
    sql: ${TABLE}.from_status_id ;;
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
    drill_fields: [id, action_definition_reason.id, action_activity.count]
  }
}
