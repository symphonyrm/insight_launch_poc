view: appointment {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appt_id {
    type: string
    sql: ${TABLE}.appt_id ;;
  }

  dimension_group: appt_made {
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
    sql: ${TABLE}.appt_made_date ;;
  }

  dimension: appt_note {
    type: string
    sql: ${TABLE}.appt_note ;;
  }

  dimension: appt_patient_id {
    type: number
    sql: ${TABLE}.appt_patient_id ;;
  }

  dimension: appt_provider_id {
    type: number
    sql: ${TABLE}.appt_provider_id ;;
  }

  dimension: appt_status {
    type: string
    sql: ${TABLE}.appt_status ;;
  }

  dimension: appt_type {
    type: string
    sql: ${TABLE}.appt_type ;;
  }

  dimension: appt_type_class {
    type: string
    sql: ${TABLE}.appt_type_class ;;
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

  dimension: import_source_id {
    type: number
    sql: ${TABLE}.import_source_id ;;
  }

  dimension_group: start_datetime {
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
    sql: ${TABLE}.start_datetime ;;
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
    drill_fields: [id]
  }
}
