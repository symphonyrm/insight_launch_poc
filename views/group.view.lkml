view: group {
  sql_table_name: proh_symphony.`group` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: entity {
    type: string
    sql: ${TABLE}.entity ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: left_val {
    type: number
    sql: ${TABLE}.left_val ;;
  }

  dimension: meeting_quota {
    type: number
    sql: ${TABLE}.meeting_quota ;;
  }

  dimension: right_val {
    type: number
    sql: ${TABLE}.right_val ;;
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
      algo_value_category.count,
      broadcast.count,
      business_line.count,
      group_member.count,
      group_tag_permission.count
    ]
  }
}
