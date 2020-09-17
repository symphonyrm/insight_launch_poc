view: activity_message_email {
  sql_table_name: proh_symphony.activity_message_email ;;

  dimension: activity_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.activity_id ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}.contact ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: message_template_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.message_template_id ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  measure: count {
    type: count
    drill_fields: [activity.id, activity.workflow_state_name, message_template.id, message_template.name]
  }
}
