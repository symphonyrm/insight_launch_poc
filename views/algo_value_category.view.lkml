view: algo_value_category {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: a {
    type: string
    sql: ${TABLE}.A ;;
  }

  dimension: b {
    type: string
    sql: ${TABLE}.B ;;
  }

  dimension: business_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.business_line_id ;;
  }

  dimension: c {
    type: string
    sql: ${TABLE}.C ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
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
    sql: ${TABLE}.createdAt ;;
  }

  dimension: current {
    type: yesno
    sql: ${TABLE}.current ;;
  }

  dimension: d {
    type: string
    sql: ${TABLE}.D ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.group_id ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
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
    sql: ${TABLE}.updatedAt ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [id, business_line.id, group.id]
  }
}
