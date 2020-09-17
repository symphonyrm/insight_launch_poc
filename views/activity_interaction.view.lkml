view: activity_interaction {
  sql_table_name: proh_symphony.activity_interaction ;;

  dimension: activity_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_id ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: notes_raw {
    type: string
    sql: ${TABLE}.notes_raw ;;
  }

  dimension: topic {
    type: string
    sql: ${TABLE}.topic ;;
  }

  measure: count {
    type: count
    drill_fields: [activity.id, activity.workflow_state_name]
  }
}
