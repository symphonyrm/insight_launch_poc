view: attribute_group {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: display_order {
    type: number
    sql: ${TABLE}.display_order ;;
  }

  dimension: entity {
    type: string
    sql: ${TABLE}.entity ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
