view: user_preference {
  sql_table_name: proh_symphony.user_preference ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: configuration {
    type: string
    sql: ${TABLE}.configuration ;;
  }

  dimension: preference_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.preference_definition_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, preference_definition.id]
  }
}
