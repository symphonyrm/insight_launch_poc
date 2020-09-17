view: activity {
  sql_table_name: proh_symphony.activity ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: activity {
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
    sql: ${TABLE}.activity_date ;;
  }

  dimension: activity_guid {
    type: number
    value_format_name: id
    sql: ${TABLE}.activity_guid ;;
  }

  dimension: archived {
    type: yesno
    sql: ${TABLE}.archived ;;
  }

  dimension: attachment {
    type: string
    sql: ${TABLE}.attachment ;;
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

  dimension: editable {
    type: yesno
    sql: ${TABLE}.editable ;;
  }

  dimension: has_patient {
    type: yesno
    sql: ${TABLE}.has_patient ;;
  }

  dimension: has_provider {
    type: yesno
    sql: ${TABLE}.has_provider ;;
  }

  dimension: import_payload {
    type: number
    sql: ${TABLE}.import_payload ;;
  }

  dimension: import_source_id {
    type: number
    sql: ${TABLE}.import_source_id ;;
  }

  dimension: privacy_setting {
    type: number
    sql: ${TABLE}.privacy_setting ;;
  }

  dimension: private_attachment {
    type: string
    sql: ${TABLE}.private_attachment ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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

  dimension: workflow_state_name {
    type: string
    sql: ${TABLE}.workflow_state_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      workflow_state_name,
      action_activity.count,
      action_completion.count,
      activity_action.count,
      activity_action_instance.count,
      activity_call.count,
      activity_call_backup_20191008.count,
      activity_compensation.count,
      activity_email.count,
      activity_entity.count,
      activity_interaction.count,
      activity_log_action_event.count,
      activity_log_action_state_change.count,
      activity_log_goal_event.count,
      activity_log_goal_source_event.count,
      activity_log_goal_source_status_change.count,
      activity_log_goal_status_change.count,
      activity_mas_asset.count,
      activity_mas_message.count,
      activity_meeting.count,
      activity_message_email.count,
      activity_organization.count,
      activity_person_removed_from_campaign.count,
      activity_privacy_acl.count,
      activity_smartlink.count,
      activity_task.count,
      comment.count,
      goal_activity.count,
      goal_source_activity.count,
      notification.count,
      person_activity.count,
      person_lead_source.count,
      workflow_activity.count
    ]
  }
}
