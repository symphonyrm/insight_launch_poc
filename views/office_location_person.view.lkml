view: office_location_person {
  sql_table_name: proh_symphony.office_location_person ;;

  dimension: office_location_id {
    type: number
    sql: ${TABLE}.office_location_id ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  measure: count {
    type: count
    drill_fields: [person.id, person.firstname, person.middlename, person.lastname]
  }
}
