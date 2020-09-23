view: med_prescription {

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

  dimension: import_payload {
    type: number
    sql: ${TABLE}.import_payload ;;
  }

  dimension: import_source_id {
    type: number
    sql: ${TABLE}.import_source_id ;;
  }

  dimension: medication_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.medication_id ;;
  }

  dimension: num_refills {
    type: number
    sql: ${TABLE}.num_refills ;;
  }

  dimension: quantity_prescribed {
    type: string
    sql: ${TABLE}.quantity_prescribed ;;
  }

  dimension: schedule {
    type: string
    sql: ${TABLE}.schedule ;;
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
    drill_fields: [medication.id, medication.name]
  }
}
