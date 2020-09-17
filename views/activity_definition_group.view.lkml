view: activity_definition_group {
  sql_table_name: proh_symphony.activity_definition_group ;;

  dimension: activity_definition_group_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_definition_group_definition_id ;;
  }

  dimension: activity_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_definition_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      activity_definition.id,
      activity_definition.name,
      activity_definition.display_name,
      activity_definition.activity_definition_group_display_name,
      activity_definition_group_definition.id,
      activity_definition_group_definition.name
    ]
  }
}
