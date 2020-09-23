view: referral_athena {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: client_patient_id {
    type: number
    sql: ${TABLE}.client_patient_id ;;
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

  dimension_group: created_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_date ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: department_group {
    type: string
    sql: ${TABLE}.department_group ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: destination {
    type: number
    sql: ${TABLE}.destination ;;
  }

  dimension: in_count {
    type: number
    sql: ${TABLE}.in_count ;;
  }

  dimension: oon_count {
    type: number
    sql: ${TABLE}.oon_count ;;
  }

  dimension: oon_reason {
    type: string
    sql: ${TABLE}.oon_reason ;;
  }

  dimension_group: order_chart {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_chart_date ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }

  dimension: order_type_group {
    type: string
    sql: ${TABLE}.order_type_group ;;
  }

  dimension: ordering_provider {
    type: string
    sql: ${TABLE}.ordering_provider ;;
  }

  dimension: receiving_provider {
    type: string
    sql: ${TABLE}.receiving_provider ;;
  }

  dimension: receiving_provider_in {
    type: yesno
    sql: ${TABLE}.receiving_provider_in ;;
  }

  dimension: source {
    type: number
    sql: ${TABLE}.source ;;
  }

  dimension: total_count {
    type: number
    sql: ${TABLE}.total_count ;;
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
