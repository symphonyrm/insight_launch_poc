view: algo_value_entity_override {
  sql_table_name: proh_symphony.algo_value_entity_override ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: algo_value_bucket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.algo_value_bucket_id ;;
  }

  dimension: business_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_line_id ;;
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

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: entity_subtype {
    type: string
    sql: ${TABLE}.entity_subtype ;;
  }

  dimension: entity_type {
    type: string
    sql: ${TABLE}.entity_type ;;
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
    drill_fields: [id, algo_value_bucket.id, business_line.id]
  }
}
