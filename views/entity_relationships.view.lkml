view: entity_relationships {
  sql_table_name: proh_symphony.entity_relationships ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: entity_relationship_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.entity_relationship_definition_id ;;
  }

  dimension: guid_one {
    type: number
    sql: ${TABLE}.guid_one ;;
  }

  dimension: guid_two {
    type: number
    sql: ${TABLE}.guid_two ;;
  }

  dimension: hours {
    type: string
    sql: ${TABLE}.hours ;;
  }

  dimension: import_source_id {
    type: number
    sql: ${TABLE}.import_source_id ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: relationship {
    type: string
    sql: ${TABLE}.relationship ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension_group: time_created {
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
    sql: ${TABLE}.time_created ;;
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

  dimension: user_generated {
    type: yesno
    sql: ${TABLE}.user_generated ;;
  }

  measure: count {
    type: count
    drill_fields: [id, entity_relationship_definition.id, entity_relationship_permission.count]
  }
}
