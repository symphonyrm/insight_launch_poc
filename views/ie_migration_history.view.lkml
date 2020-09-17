view: ie_migration_history {
  sql_table_name: proh_symphony.ie_migration_history ;;

  dimension: affected_table {
    type: string
    sql: ${TABLE}.affected_table ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.client ;;
  }

  dimension_group: executed_datetime {
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
    sql: ${TABLE}.executed_datetime ;;
  }

  dimension: executed_sql {
    type: string
    sql: ${TABLE}.executed_sql ;;
  }

  dimension: schema_type {
    type: string
    sql: ${TABLE}.schema_type ;;
  }

  dimension: sequence_num {
    type: number
    sql: ${TABLE}.sequence_num ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
