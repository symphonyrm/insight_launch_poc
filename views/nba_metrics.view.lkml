view: nba_metrics {
  sql_table_name: proh_symphony.nba_metrics ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: base_value {
    type: number
    sql: ${TABLE}.base_value ;;
  }

  dimension: closed_population_count {
    type: number
    sql: ${TABLE}.closed_population_count ;;
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

  dimension: cumulative_closed_population_count {
    type: number
    sql: ${TABLE}.cumulative_closed_population_count ;;
  }

  dimension: goal_definition_configuration_hash {
    type: number
    sql: ${TABLE}.goal_definition_configuration_hash ;;
  }

  dimension: goal_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.goal_definition_id ;;
  }

  dimension: ineligible_population_count {
    type: number
    sql: ${TABLE}.ineligible_population_count ;;
  }

  dimension: is_backfilled {
    type: yesno
    sql: ${TABLE}.is_backfilled ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_latest {
    type: yesno
    sql: ${TABLE}.is_latest ;;
  }

  dimension: is_preview {
    type: yesno
    sql: ${TABLE}.is_preview ;;
  }

  dimension: nba_engine_worklog_id {
    type: number
    sql: ${TABLE}.nba_engine_worklog_id ;;
  }

  dimension: open_population_count {
    type: number
    sql: ${TABLE}.open_population_count ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [id, goal_definition.id, goal_definition.name, goal_definition.short_name]
  }
}
