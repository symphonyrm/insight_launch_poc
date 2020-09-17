view: person {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: contact_status {
    type: string
    sql: ${TABLE}.contact_status ;;
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

  dimension_group: deceased {
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
    sql: ${TABLE}.deceased_date ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: dob {
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
    sql: ${TABLE}.dob ;;
  }

  dimension: ethnicity {
    type: string
    sql: ${TABLE}.ethnicity ;;
  }

  dimension: first_middle_last {
    type: string
    sql: ${TABLE}.first_middle_last ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: import_payload {
    type: number
    sql: ${TABLE}.import_payload ;;
  }

  dimension: import_source_id {
    type: number
    sql: ${TABLE}.import_source_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_deceased {
    type: yesno
    sql: ${TABLE}.is_deceased ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_patient {
    type: yesno
    sql: ${TABLE}.is_patient ;;
  }

  dimension: is_provider {
    type: yesno
    sql: ${TABLE}.is_provider ;;
  }

  dimension: is_user {
    type: yesno
    sql: ${TABLE}.is_user ;;
  }

  dimension: languages {
    type: string
    sql: ${TABLE}.languages ;;
  }

  dimension_group: last_meeting {
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
    sql: ${TABLE}.last_meeting_date ;;
  }

  dimension: last_middle_first {
    type: string
    sql: ${TABLE}.last_middle_first ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }

  dimension: middlename {
    type: string
    sql: ${TABLE}.middlename ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}.photo_url ;;
  }

  dimension: race {
    type: string
    sql: ${TABLE}.race ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
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
      firstname,
      middlename,
      lastname,
      action.count,
      algo_priority_activity_patient.count,
      algo_priority_activity_provider.count,
      algo_value_patient.count,
      campaign_person.count,
      clinical.count,
      csv_target_source.count,
      goal.count,
      knowledge_connector_person.count,
      medication.count,
      office_location_person.count,
      organization_person.count,
      patient_condition.count,
      patient_health_goal.count,
      person_activity.count,
      person_contact_permission.count,
      person_contact_permission_source.count,
      person_goal_definition_probability.count,
      person_lead_source.count,
      person_model_score.count,
      person_name_hash.count,
      person_patient.count,
      person_probability.count,
      person_provider.count,
      person_specialty.count,
      person_type.count,
      person_user.count,
      problem_code.count,
      provider_insurance_plan.count,
      referral_based_kpis.count,
      target.count,
      user_permission.count,
      _person_type_del.count
    ]
  }
}
