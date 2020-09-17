view: contact_validity {
  sql_table_name: proh_symphony.contact_validity ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}.contact ;;
  }

  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_id ;;
  }

  dimension: contact_validity_source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_validity_source_id ;;
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

  dimension: is_valid {
    type: yesno
    sql: ${TABLE}.is_valid ;;
  }

  dimension: sms_contact_validity_source_id {
    type: number
    sql: ${TABLE}.sms_contact_validity_source_id ;;
  }

  dimension: sms_is_valid {
    type: yesno
    sql: ${TABLE}.sms_is_valid ;;
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
    drill_fields: [id, contact.id, contact_validity_source.id]
  }
}
