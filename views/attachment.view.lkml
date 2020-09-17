view: attachment {
  sql_table_name: proh_symphony.attachment ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: guid {
    type: number
    value_format_name: id
    sql: ${TABLE}.guid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: upload_timestamp {
    type: string
    sql: ${TABLE}.upload_timestamp ;;
  }

  dimension: uploaded_by {
    type: number
    sql: ${TABLE}.uploaded_by ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
