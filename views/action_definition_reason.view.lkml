view: action_definition_reason {
  sql_table_name: proh_symphony.action_definition_reason ;;
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

  dimension: is_automated {
    type: yesno
    sql: ${TABLE}.is_automated ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: reason_title {
    type: string
    sql: ${TABLE}.reason_title ;;
  }

  dimension: to_status_id {
    type: number
    sql: ${TABLE}.to_status_id ;;
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
    drill_fields: [id, action_definition.id, action_definition.name, action.count, action_definition_reason_transition.count]
  }
}
