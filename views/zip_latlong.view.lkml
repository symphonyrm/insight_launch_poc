view: zip_latlong {
  sql_table_name: proh_symphony.zip_latlong ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: dst {
    type: number
    sql: ${TABLE}.dst ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: timezone {
    type: number
    sql: ${TABLE}.timezone ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
