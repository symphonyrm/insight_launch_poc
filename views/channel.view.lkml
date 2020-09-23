view: channel {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.probability ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, goal_definition_probability.count, person_goal_definition_probability.count, person_probability.count]
  }
}
