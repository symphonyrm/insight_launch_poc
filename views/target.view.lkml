view: target {
  sql_table_name: proh_symphony.target ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alternate_sort_value {
    type: number
    sql: ${TABLE}.alternate_sort_value ;;
  }

  dimension: audience_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.audience_id ;;
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

  dimension_group: claimed {
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
    sql: ${TABLE}.claimed_at ;;
  }

  dimension: claimed_by {
    type: number
    sql: ${TABLE}.claimed_by ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension_group: follow_up_end {
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
    sql: ${TABLE}.follow_up_end_date ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: is_removed_from_audience {
    type: yesno
    sql: ${TABLE}.is_removed_from_audience ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }

  dimension: middlename {
    type: string
    sql: ${TABLE}.middlename ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  dimension: primary_phone_number {
    type: string
    sql: ${TABLE}.primary_phone_number ;;
  }

  dimension: secondary_phone_number {
    type: string
    sql: ${TABLE}.secondary_phone_number ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: type {
    type: string
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
      audience.id,
      audience.name,
      audience.source_filename,
      person.id,
      person.firstname,
      person.middlename,
      person.lastname,
      activity_call.count,
      activity_call_backup_20191008.count,
      activity_email.count
    ]
  }
}
