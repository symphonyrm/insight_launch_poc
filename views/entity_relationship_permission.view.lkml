view: entity_relationship_permission {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: entity_relationship_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.entity_relationship_id ;;
  }

  dimension: permission_id {
    type: number
    sql: ${TABLE}.permission_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, entity_relationships.id]
  }
}
