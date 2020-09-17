view: group_tag_permission {
  sql_table_name: proh_symphony.group_tag_permission ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.group_id ;;
  }

  dimension: tag_id {
    type: number
    sql: ${TABLE}.tag_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, group.id]
  }
}
