view: person_patient {
  sql_table_name: proh_symphony.person_patient ;;

  dimension: client_account_id {
    type: string
    sql: ${TABLE}.client_account_id ;;
  }

  dimension: client_patient_id {
    type: string
    sql: ${TABLE}.client_patient_id ;;
  }

  dimension: client_patient_id_source {
    type: string
    sql: ${TABLE}.client_patient_id_source ;;
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

  dimension: edited {
    type: yesno
    sql: ${TABLE}.edited ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: import_source_id {
    type: number
    sql: ${TABLE}.import_source_id ;;
  }

  dimension: insurance_card_id {
    type: string
    sql: ${TABLE}.insurance_card_id ;;
  }

  dimension: insurance_card_id_source {
    type: string
    sql: ${TABLE}.insurance_card_id_source ;;
  }

  dimension: insurance_card_seq_number {
    type: yesno
    sql: ${TABLE}.insurance_card_seq_number ;;
  }

  dimension: insurance_plan_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.insurance_plan_id ;;
  }

  dimension: insurance_plan_name {
    type: string
    sql: ${TABLE}.insurance_plan_name ;;
  }

  dimension: insurance_plan_type {
    type: string
    sql: ${TABLE}.insurance_plan_type ;;
  }

  dimension: insurance_provider_name {
    type: string
    sql: ${TABLE}.insurance_provider_name ;;
  }

  dimension: is_high_cost {
    type: yesno
    sql: ${TABLE}.is_high_cost ;;
  }

  dimension: is_high_risk {
    type: yesno
    sql: ${TABLE}.is_high_risk ;;
  }

  dimension_group: last_seen {
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
    sql: ${TABLE}.last_seen_date ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.marital_status ;;
  }

  dimension: payer_type {
    type: string
    sql: ${TABLE}.payer_type ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  dimension: primary_client_provider_id {
    type: number
    sql: ${TABLE}.primary_client_provider_id ;;
  }

  dimension: relationship_to_member {
    type: string
    sql: ${TABLE}.relationship_to_member ;;
  }

  dimension: ssn {
    type: string
    sql: ${TABLE}.ssn ;;
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
      insurance_provider_name,
      insurance_plan_name,
      person.id,
      person.firstname,
      person.middlename,
      person.lastname,
      insurance_plan.id,
      insurance_plan.name
    ]
  }
}
