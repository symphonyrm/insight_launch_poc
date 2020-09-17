view: knowledge_connector_person {
  sql_table_name: proh_symphony.knowledge_connector_person ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: knowledge_connector_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.knowledge_connector_id ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
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
      person.id,
      person.firstname,
      person.middlename,
      person.lastname
    ]
  }
}
