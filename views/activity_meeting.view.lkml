view: activity_meeting {

  dimension: activity_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_id ;;
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

  dimension: length {
    type: string
    sql: ${TABLE}.length ;;
  }

  dimension: meeting_type {
    type: string
    sql: ${TABLE}.meeting_type ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: notes_raw {
    type: string
    sql: ${TABLE}.notes_raw ;;
  }

  dimension: objective {
    type: string
    sql: ${TABLE}.objective ;;
  }

  dimension: private_notes {
    type: string
    sql: ${TABLE}.private_notes ;;
  }

  dimension: private_notes_raw {
    type: string
    sql: ${TABLE}.private_notes_raw ;;
  }

  dimension: private_user_group_id {
    type: number
    sql: ${TABLE}.private_user_group_id ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: score_override {
    type: number
    sql: ${TABLE}.score_override ;;
  }

  dimension: sentiment {
    type: string
    sql: ${TABLE}.sentiment ;;
  }

  dimension: topic {
    type: string
    sql: ${TABLE}.topic ;;
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
    drill_fields: [activity.id, activity.workflow_state_name]
  }
}
