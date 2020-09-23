view: entity_relationship_definition {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
    sql: ${TABLE}.createdAt ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }

  dimension: left_entity_type {
    type: string
    sql: ${TABLE}.left_entity_type ;;
  }

  dimension: left_to_right_descriptor {
    type: string
    sql: ${TABLE}.left_to_right_descriptor ;;
  }

  dimension: relationship {
    type: string
    sql: ${TABLE}.relationship ;;
  }

  dimension: right_entity_type {
    type: string
    sql: ${TABLE}.right_entity_type ;;
  }

  dimension: right_to_left_descriptor {
    type: string
    sql: ${TABLE}.right_to_left_descriptor ;;
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
    sql: ${TABLE}.updatedAt ;;
  }

  measure: count {
    type: count
    drill_fields: [id, entity_relationships.count]
  }
}
