view: action_disposition_action_definition {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.action_definition_id ;;
  }

  dimension: action_disposition_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.action_disposition_definition_id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: display_order {
    type: yesno
    sql: ${TABLE}.display_order ;;
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
    drill_fields: [id, action_disposition_definition.id, action_definition.id, action_definition.name]
  }
}
