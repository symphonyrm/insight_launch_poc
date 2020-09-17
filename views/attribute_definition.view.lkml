view: attribute_definition {
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
    type: yesno
    sql: ${TABLE}.display_order ;;
  }

  dimension: entity {
    type: string
    sql: ${TABLE}.entity ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent_group_id {
    type: number
    sql: ${TABLE}.parent_group_id ;;
  }

  dimension: promoted {
    type: yesno
    sql: ${TABLE}.promoted ;;
  }

  dimension: promoted_display_order {
    type: yesno
    sql: ${TABLE}.promoted_display_order ;;
  }

  dimension: required {
    type: string
    sql: ${TABLE}.required ;;
  }

  dimension: searchable {
    type: string
    sql: ${TABLE}.searchable ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, attribute_options.count, attribute_value.count]
  }
}
