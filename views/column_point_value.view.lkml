view: column_point_value {

  dimension: column_name {
    type: string
    sql: ${TABLE}.column_name ;;
  }

  dimension: point_value {
    type: number
    sql: ${TABLE}.point_value ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, column_name]
  }
}
