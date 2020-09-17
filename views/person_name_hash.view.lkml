view: person_name_hash {
  sql_table_name: proh_symphony.person_name_hash ;;

  dimension: name_hash {
    type: number
    sql: ${TABLE}.name_hash ;;
  }

  dimension: name_no_suffix_hash {
    type: number
    sql: ${TABLE}.name_no_suffix_hash ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
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

  measure: count {
    type: count
    drill_fields: [person.id, person.firstname, person.middlename, person.lastname]
  }
}
