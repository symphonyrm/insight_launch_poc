view: knowledge_connector_url {
  sql_table_name: proh_symphony.knowledge_connector_url ;;
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

  dimension: link_url {
    type: string
    sql: ${TABLE}.link_url ;;
  }

  measure: count {
    type: count
    drill_fields: [id, knowledge_connector.id, knowledge_connector.display_name]
  }
}
