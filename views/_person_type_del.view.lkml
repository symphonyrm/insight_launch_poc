view: _person_type_del {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: is_affiliated {
    type: number
    sql: ${TABLE}.is_affiliated ;;
  }

  dimension: is_pediatric {
    type: number
    sql: ${TABLE}.is_pediatric ;;
  }

  dimension: is_provider {
    type: number
    sql: ${TABLE}.is_provider ;;
  }

  dimension: is_user {
    type: number
    sql: ${TABLE}.is_user ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  dimension: person_type_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_type_definition_id ;;
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
      person_type_definition.id,
      person_type_definition.name
    ]
  }
}
