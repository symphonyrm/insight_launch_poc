view: parent_organization_child_office_location {

  dimension: child_office_location_id {
    type: number
    sql: ${TABLE}.child_office_location_id ;;
  }

  dimension: parent_organization_id {
    type: number
    sql: ${TABLE}.parent_organization_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
