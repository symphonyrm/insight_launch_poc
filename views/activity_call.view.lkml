view: activity_call {

  dimension: activity_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_id ;;
  }

  dimension: call_duration {
    type: number
    sql: ${TABLE}.call_duration ;;
  }

  dimension: call_result_id {
    type: number
    sql: ${TABLE}.call_result_id ;;
  }

  dimension: direction {
    type: string
    sql: ${TABLE}.direction ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: target_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.target_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      activity.id,
      activity.workflow_state_name,
      target.id,
      target.firstname,
      target.middlename,
      target.lastname
    ]
  }
}
