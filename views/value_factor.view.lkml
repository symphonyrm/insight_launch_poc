view: value_factor {
  sql_table_name: proh_symphony.value_factor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: current {
    type: yesno
    sql: ${TABLE}.current ;;
  }

  dimension: factor {
    type: number
    sql: ${TABLE}.factor ;;
  }

  dimension: key_0 {
    type: string
    sql: ${TABLE}.key_0 ;;
  }

  dimension: key_1 {
    type: string
    sql: ${TABLE}.key_1 ;;
  }

  dimension: key_2 {
    type: string
    sql: ${TABLE}.key_2 ;;
  }

  dimension: key_fields {
    type: string
    sql: ${TABLE}.key_fields ;;
  }

  dimension: per_quantity {
    type: number
    sql: ${TABLE}.per_quantity ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}.subcategory ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
