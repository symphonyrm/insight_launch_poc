view: person_lead_source {
  sql_table_name: proh_symphony.person_lead_source ;;
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

  dimension: goal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.goal_id ;;
  }

  dimension: lead_source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: newly_created {
    type: yesno
    sql: ${TABLE}.newly_created ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      person.id,
      person.firstname,
      person.middlename,
      person.lastname,
      lead_source.id,
      lead_source.name,
      activity.id,
      activity.workflow_state_name,
      goal.id
    ]
  }
}
