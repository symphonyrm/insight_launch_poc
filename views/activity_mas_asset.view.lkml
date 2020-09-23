view: activity_mas_asset {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: activity_definition_group {
    type: string
    sql: ${TABLE}.activity_definition_group ;;
  }

  dimension: activity_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_id ;;
  }

  dimension: mas_asset_id {
    type: number
    sql: ${TABLE}.mas_asset_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, activity.id, activity.workflow_state_name]
  }
}
