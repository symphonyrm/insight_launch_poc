view: map_elgg_symphony_20200117 {
  sql_table_name: proh_symphony.map_elgg_symphony_20200117 ;;
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

  dimension: guid {
    type: number
    value_format_name: id
    sql: ${TABLE}.guid ;;
  }

  dimension: symphony_id {
    type: number
    sql: ${TABLE}.symphony_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
