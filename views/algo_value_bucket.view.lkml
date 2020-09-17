view: algo_value_bucket {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
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

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: display_color {
    type: string
    sql: ${TABLE}.display_color ;;
  }

  dimension: meeting_interval {
    type: number
    sql: ${TABLE}.meeting_interval ;;
  }

  dimension: tier {
    type: number
    sql: ${TABLE}.tier ;;
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
    drill_fields: [id, algo_value_entity.count, algo_value_entity_override.count, algo_value_entity_with_inactive.count]
  }
}
