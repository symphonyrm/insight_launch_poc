view: patient_health_goal {
  sql_table_name: proh_symphony.patient_health_goal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: health_goal_id {
    type: number
    sql: ${TABLE}.health_goal_id ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, person.id, person.firstname, person.middlename, person.lastname]
  }
}
