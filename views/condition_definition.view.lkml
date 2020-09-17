view: condition_definition {
  sql_table_name: proh_symphony.condition_definition ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: is_chronic {
    type: yesno
    sql: ${TABLE}.is_chronic ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: value_explanation {
    type: string
    sql: ${TABLE}.value_explanation ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
