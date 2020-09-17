view: client_id_alias {
  sql_table_name: proh_symphony.client_id_alias ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alias_id {
    type: number
    sql: ${TABLE}.alias_id ;;
  }

  dimension: id_name {
    type: string
    sql: ${TABLE}.id_name ;;
  }

  dimension: real_id {
    type: number
    sql: ${TABLE}.real_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, id_name]
  }
}
