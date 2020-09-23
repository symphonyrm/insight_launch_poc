view: algo_opportunity {
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

  dimension: lab_activity {
    type: number
    sql: ${TABLE}.lab_activity ;;
  }

  dimension: lab_loyal_activity {
    type: number
    sql: ${TABLE}.lab_loyal_activity ;;
  }

  dimension: lab_rank {
    type: number
    sql: ${TABLE}.lab_rank ;;
  }

  dimension: lab_score {
    type: number
    sql: ${TABLE}.lab_score ;;
  }

  dimension: provider_id {
    type: string
    sql: ${TABLE}.provider_id ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: ris_activity {
    type: number
    sql: ${TABLE}.ris_activity ;;
  }

  dimension: ris_loyal_activity {
    type: number
    sql: ${TABLE}.ris_loyal_activity ;;
  }

  dimension: ris_rank {
    type: number
    sql: ${TABLE}.ris_rank ;;
  }

  dimension: ris_score {
    type: number
    sql: ${TABLE}.ris_score ;;
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
