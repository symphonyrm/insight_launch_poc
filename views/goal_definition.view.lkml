view: goal_definition {
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

  dimension: completion_workflow_definition_id {
    type: number
    sql: ${TABLE}.completion_workflow_definition_id ;;
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

  dimension: disabled {
    type: yesno
    sql: ${TABLE}.disabled ;;
  }

  dimension: edit_setting {
    type: string
    sql: ${TABLE}.edit_setting ;;
  }

  dimension: healthos_defined {
    type: yesno
    sql: ${TABLE}.healthos_defined ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: short_name {
    type: string
    sql: ${TABLE}.short_name ;;
  }

  dimension: subtype {
    type: string
    sql: ${TABLE}.subtype ;;
  }

  dimension: target_person_type_definition_id {
    type: number
    sql: ${TABLE}.target_person_type_definition_id ;;
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
      short_name,
      action_definition.count,
      campaign_goal_definition.count,
      goal.count,
      goal_definition_configuration.count,
      goal_definition_probability.count,
      goal_status_action.count,
      knowledge_connector_goal_definition.count,
      nba_metrics.count,
      person_goal_definition_probability.count
    ]
  }
}
