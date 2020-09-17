view: activity_smartlink {
  sql_table_name: proh_symphony.activity_smartlink ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: activity_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_id ;;
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

  dimension: smartlink_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.smartlink_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, activity.id, activity.workflow_state_name, smartlink.id]
  }
}
