view: client_key_alias {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alias_key_value {
    type: string
    sql: ${TABLE}.alias_key_value ;;
  }

  dimension: client_key_id {
    type: number
    sql: ${TABLE}.client_key_id ;;
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: import_source_id {
    type: number
    sql: ${TABLE}.import_source_id ;;
  }

  dimension: real_key_value {
    type: string
    sql: ${TABLE}.real_key_value ;;
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
