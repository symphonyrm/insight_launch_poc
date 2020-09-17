view: person_contact_permission_source {
  sql_table_name: proh_symphony.person_contact_permission_source ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: contact_permission_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_permission_category_id ;;
  }

  dimension: contact_permission_channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_permission_channel_id ;;
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

  dimension: permission {
    type: yesno
    sql: ${TABLE}.permission ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension_group: source_timestamp {
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
    sql: ${TABLE}.source_timestamp ;;
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
      person.id,
      person.firstname,
      person.middlename,
      person.lastname,
      contact_permission_channel.id,
      contact_permission_channel.name,
      contact_permission_category.id,
      contact_permission_category.name,
      person_contact_permission.count
    ]
  }
}
