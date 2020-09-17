view: specialty {
  drill_fields: [cms_specialty_id]

  dimension: cms_specialty_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.cms_specialty_id ;;
  }

  dimension: actor {
    type: string
    sql: ${TABLE}.actor ;;
  }

  dimension: actors {
    type: string
    sql: ${TABLE}.actors ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [cms_specialty_id, name, nppes_basic.count, organization_specialty.count, person_specialty.count]
  }
}
