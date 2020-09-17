view: action_definition {
  sql_table_name: proh_symphony.action_definition ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: auto_assign {
    type: yesno
    sql: ${TABLE}.auto_assign ;;
  }

  dimension: auto_assign_type {
    type: string
    sql: ${TABLE}.auto_assign_type ;;
  }

  dimension: auto_close_reason_id {
    type: number
    sql: ${TABLE}.auto_close_reason_id ;;
  }

  dimension: auto_open_reason_id {
    type: number
    sql: ${TABLE}.auto_open_reason_id ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
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

  dimension: goal_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.goal_definition_id ;;
  }

  dimension: goal_percentage {
    type: number
    sql: ${TABLE}.goal_percentage ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: subtype {
    type: string
    sql: ${TABLE}.subtype ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
      name,
      goal_definition.id,
      goal_definition.name,
      goal_definition.short_name,
      action.count,
      action_definition_reason.count,
      action_disposition_action_definition.count,
      campaign_goal_definition.count,
      goal_status_action.count
    ]
  }
}
