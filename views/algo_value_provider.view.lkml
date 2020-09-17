view: algo_value_provider {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: current {
    type: yesno
    sql: ${TABLE}.current ;;
  }

  dimension: entity_id {
    type: string
    sql: ${TABLE}.entity_id ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
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

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
