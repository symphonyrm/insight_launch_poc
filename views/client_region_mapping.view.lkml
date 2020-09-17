view: client_region_mapping {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: line_of_business {
    type: string
    sql: ${TABLE}.line_of_business ;;
  }

  dimension: postalcode {
    type: string
    sql: ${TABLE}.postalcode ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.region_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, region_name]
  }
}
