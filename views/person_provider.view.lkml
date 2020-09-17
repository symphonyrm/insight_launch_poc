view: person_provider {

  dimension: certifications {
    type: string
    sql: ${TABLE}.certifications ;;
  }

  dimension: client_provider_id {
    type: string
    sql: ${TABLE}.client_provider_id ;;
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

  dimension: degree {
    type: string
    sql: ${TABLE}.degree ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: import_source_id {
    type: number
    sql: ${TABLE}.import_source_id ;;
  }

  dimension: jobtitle {
    type: string
    sql: ${TABLE}.jobtitle ;;
  }

  dimension: memberships {
    type: string
    sql: ${TABLE}.memberships ;;
  }

  dimension: npi {
    type: number
    sql: ${TABLE}.npi ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  dimension: tin {
    type: string
    sql: ${TABLE}.tin ;;
  }

  dimension: training {
    type: string
    sql: ${TABLE}.training ;;
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
    drill_fields: [person.id, person.firstname, person.middlename, person.lastname]
  }
}
