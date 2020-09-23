view: smartlink {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: activity_definition {
    type: number
    sql: ${TABLE}.activity_definition ;;
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

  dimension: display_text {
    type: string
    sql: ${TABLE}.display_text ;;
  }

  dimension: href {
    type: string
    sql: ${TABLE}.href ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }

  dimension: link_text {
    type: string
    sql: ${TABLE}.link_text ;;
  }

  dimension: tag_text {
    type: string
    sql: ${TABLE}.tag_text ;;
  }

  measure: count {
    type: count
    drill_fields: [id, activity_smartlink.count]
  }
}
