view: parent_organization_child_organization {

  dimension: child_organization_id {
    type: number
    sql: ${TABLE}.child_organization_id ;;
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
