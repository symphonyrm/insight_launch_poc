view: person_contact_permission {
  sql_table_name: proh_symphony.person_contact_permission ;;
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

  dimension: person_contact_permission_source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_contact_permission_source_id ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
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
      person_contact_permission_source.id
    ]
  }
}
