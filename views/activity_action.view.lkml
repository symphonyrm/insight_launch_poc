view: activity_action {

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: activity_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_id ;;
  }

  dimension_group: callback {
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
    sql: ${TABLE}.callback_at ;;
  }

  dimension: channels {
    type: string
    sql: ${TABLE}.channels ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.due_date ;;
  }

  dimension: import_source_id {
    type: number
    sql: ${TABLE}.import_source_id ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: source_detail {
    type: string
    sql: ${TABLE}.source_detail ;;
  }

  dimension: source_status {
    type: string
    sql: ${TABLE}.source_status ;;
  }

  measure: count {
    type: count
    drill_fields: [activity.id, activity.workflow_state_name, product.id, product.name]
  }
}
