view: goal_definition_configuration {
  sql_table_name: proh_symphony.goal_definition_configuration ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assignment_configuration {
    type: string
    sql: ${TABLE}.assignment_configuration ;;
  }

  dimension: assignment_method {
    type: string
    sql: ${TABLE}.assignment_method ;;
  }

  dimension: assignment_source_id {
    type: number
    sql: ${TABLE}.assignment_source_id ;;
  }

  dimension: closure_configuration {
    type: string
    sql: ${TABLE}.closure_configuration ;;
  }

  dimension: closure_method {
    type: string
    sql: ${TABLE}.closure_method ;;
  }

  dimension: closure_source_id {
    type: number
    sql: ${TABLE}.closure_source_id ;;
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

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_preview {
    type: yesno
    sql: ${TABLE}.is_preview ;;
  }

  dimension_group: last_sync {
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
    sql: ${TABLE}.last_sync_at ;;
  }

  dimension: preview_goal_def_base_value {
    type: number
    sql: ${TABLE}.preview_goal_def_base_value ;;
  }

  dimension: preview_goal_def_disabled {
    type: yesno
    sql: ${TABLE}.preview_goal_def_disabled ;;
  }

  dimension: preview_goal_def_name {
    type: string
    sql: ${TABLE}.preview_goal_def_name ;;
  }

  dimension: processing_status {
    type: string
    sql: ${TABLE}.processing_status ;;
  }

  dimension: status_reason {
    type: string
    sql: ${TABLE}.status_reason ;;
  }

  dimension: sync_interval_minutes {
    type: number
    sql: ${TABLE}.sync_interval_minutes ;;
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
    drill_fields: [id, preview_goal_def_name, goal_definition.id, goal_definition.name, goal_definition.short_name]
  }
}
