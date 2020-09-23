view: knowledge_connector_goal_definition {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: goal_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.goal_definition_id ;;
  }

  dimension: knowledge_connector_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.knowledge_connector_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      knowledge_connector.id,
      knowledge_connector.display_name,
      goal_definition.id,
      goal_definition.name,
      goal_definition.short_name
    ]
  }
}
