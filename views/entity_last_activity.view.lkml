view: entity_last_activity {
  sql_table_name: proh_symphony.entity_last_activity ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension_group: last_activity {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_activity_date ;;
  }

  dimension: last_activity_group_id {
    type: number
    sql: ${TABLE}.last_activity_group_id ;;
  }

  dimension: last_activity_id {
    type: number
    sql: ${TABLE}.last_activity_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
