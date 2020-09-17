view: contact_permission_channel {
  sql_table_name: proh_symphony.contact_permission_channel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, person_contact_permission.count, person_contact_permission_source.count]
  }
}
