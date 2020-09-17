view: organization_person {
  sql_table_name: proh_symphony.organization_person ;;

  dimension: parent_organization_id {
    type: number
    sql: ${TABLE}.parent_organization_id ;;
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
