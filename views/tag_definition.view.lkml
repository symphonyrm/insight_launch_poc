view: tag_definition {
  sql_table_name: proh_symphony.tag_definition ;;
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

  dimension: cardinal {
    type: string
    sql: ${TABLE}.cardinal ;;
  }

  dimension: days_to_expire {
    type: number
    sql: ${TABLE}.days_to_expire ;;
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

  dimension: entity_context {
    type: string
    sql: ${TABLE}.entity_context ;;
  }

  dimension_group: expiration {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expiration_date ;;
  }

  dimension: mas {
    type: yesno
    sql: ${TABLE}.mas ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: searchable {
    type: string
    sql: ${TABLE}.searchable ;;
  }

  dimension: system {
    type: yesno
    sql: ${TABLE}.system ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, tag_entities.count]
  }
}
