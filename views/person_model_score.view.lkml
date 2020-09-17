view: person_model_score {
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

  dimension: model_definition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.model_definition_id ;;
  }

  dimension: model_version {
    type: number
    sql: ${TABLE}.model_version ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  dimension: raw_score {
    type: number
    sql: ${TABLE}.raw_score ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.run_id ;;
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
      model_definition.id,
      model_definition.name
    ]
  }
}
