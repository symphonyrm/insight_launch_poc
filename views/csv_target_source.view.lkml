view: csv_target_source {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: audience_template_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.audience_template_id ;;
  }

  dimension: claimed_by {
    type: number
    sql: ${TABLE}.claimed_by ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
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
      audience_template.id,
      audience_template.name
    ]
  }
}
