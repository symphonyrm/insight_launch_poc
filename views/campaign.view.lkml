view: campaign {
  sql_table_name: proh_symphony.campaign ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_display {
    type: string
    sql: ${TABLE}.action_display ;;
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

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
  }

  dimension_group: ended {
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
    sql: ${TABLE}.ended_at ;;
  }

  dimension: follow_up_duration {
    type: number
    sql: ${TABLE}.follow_up_duration ;;
  }

  dimension: follow_up_enabled {
    type: yesno
    sql: ${TABLE}.follow_up_enabled ;;
  }

  dimension: img_url {
    type: string
    sql: ${TABLE}.img_url ;;
  }

  dimension: is_evergreen {
    type: yesno
    sql: ${TABLE}.is_evergreen ;;
  }

  dimension: is_worklist {
    type: yesno
    sql: ${TABLE}.is_worklist ;;
  }

  dimension_group: launched {
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
    sql: ${TABLE}.launched_at ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: objective {
    type: string
    sql: ${TABLE}.objective ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: target_person_type_definition_id {
    type: number
    sql: ${TABLE}.target_person_type_definition_id ;;
  }

  dimension: target_type {
    type: string
    sql: ${TABLE}.target_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      display_name,
      campaign_audience.count,
      campaign_emailmarketing.count,
      campaign_goal_definition.count,
      campaign_person.count,
      campaign_product.count,
      campaign_user.count,
      notification.count
    ]
  }
}
