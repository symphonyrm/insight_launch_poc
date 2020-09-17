view: sequence_data {
  sql_table_name: proh_symphony.sequence_data ;;

  dimension: sequence_cur_value {
    type: number
    sql: ${TABLE}.sequence_cur_value ;;
  }

  dimension: sequence_cycle {
    type: yesno
    sql: ${TABLE}.sequence_cycle ;;
  }

  dimension: sequence_increment {
    type: number
    sql: ${TABLE}.sequence_increment ;;
  }

  dimension: sequence_max_value {
    type: number
    sql: ${TABLE}.sequence_max_value ;;
  }

  dimension: sequence_min_value {
    type: number
    sql: ${TABLE}.sequence_min_value ;;
  }

  dimension: sequence_name {
    type: string
    sql: ${TABLE}.sequence_name ;;
  }

  measure: count {
    type: count
    drill_fields: [sequence_name]
  }
}
