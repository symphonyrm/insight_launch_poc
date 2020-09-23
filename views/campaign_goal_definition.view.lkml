view: campaign_goal_definition {
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

  dimension: campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: goal_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.goal_definition_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      campaign.id,
      campaign.name,
      campaign.display_name,
      goal_definition.id,
      goal_definition.name,
      goal_definition.short_name,
      action_definition.id,
      action_definition.name
    ]
  }
}
