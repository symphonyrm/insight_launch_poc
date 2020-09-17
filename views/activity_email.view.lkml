view: activity_email {

  dimension: activity_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: initiated_by {
    type: number
    sql: ${TABLE}.initiated_by ;;
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
