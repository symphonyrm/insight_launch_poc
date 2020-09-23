view: activity_definition {
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

  dimension: activity_definition_group_display_name {
    type: string
    sql: ${TABLE}.activity_definition_group_display_name ;;
  }

  dimension: activity_feed_display_template {
    type: string
    sql: ${TABLE}.activity_feed_display_template ;;
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
    sql: ${TABLE}.createdAt ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }

  dimension: display_all_fields {
    type: yesno
    sql: ${TABLE}.display_all_fields ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: editable {
    type: yesno
    sql: ${TABLE}.editable ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: navbar {
    type: yesno
    sql: ${TABLE}.navbar ;;
  }

  dimension: office {
    type: yesno
    sql: ${TABLE}.office ;;
  }

  dimension: organization {
    type: yesno
    sql: ${TABLE}.organization ;;
  }

  dimension: patient {
    type: yesno
    sql: ${TABLE}.patient ;;
  }

  dimension: provider {
    type: yesno
    sql: ${TABLE}.provider ;;
  }

  dimension: required {
    type: string
    sql: ${TABLE}.required ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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
    sql: ${TABLE}.updatedAt ;;
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
      activity_definition_group_display_name,
      activity_definition_group.count,
      lead_source.count
    ]
  }
}
