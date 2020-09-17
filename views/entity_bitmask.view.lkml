view: entity_bitmask {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: entity {
    type: string
    sql: ${TABLE}.entity ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
