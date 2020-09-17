view: activity_definition_group_definition {
  sql_table_name: proh_symphony.activity_definition_group_definition ;;
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
    drill_fields: [id, name, activity_definition_group.count]
  }
}
