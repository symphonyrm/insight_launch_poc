# include all the views
include: "/views/**/*.view"

datagroup: launch_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: launch_poc_default_datagroup

explore: _appointment_del {}

explore: _contact_del {}

explore: _person_type_del {
  join: person {
    type: left_outer
    sql_on: ${_person_type_del.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: person_type_definition {
    type: left_outer
    sql_on: ${_person_type_del.person_type_definition_id} = ${person_type_definition.id} ;;
    relationship: many_to_one
  }
}

explore: action {
  join: person {
    type: left_outer
    sql_on: ${action.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: goal {
    type: left_outer
    sql_on: ${action.goal_id} = ${goal.id} ;;
    relationship: many_to_one
  }

  join: action_definition {
    type: left_outer
    sql_on: ${action.action_definition_id} = ${action_definition.id} ;;
    relationship: many_to_one
  }

  join: action_definition_reason {
    type: left_outer
    sql_on: ${action.action_definition_reason_id} = ${action_definition_reason.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${goal.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: action_activity {
  join: activity {
    type: left_outer
    sql_on: ${action_activity.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: action {
    type: left_outer
    sql_on: ${action_activity.action_id} = ${action.id} ;;
    relationship: many_to_one
  }

  join: action_definition_reason_transition {
    type: left_outer
    sql_on: ${action_activity.action_definition_reason_transition_id} = ${action_definition_reason_transition.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${action.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: goal {
    type: left_outer
    sql_on: ${action.goal_id} = ${goal.id} ;;
    relationship: many_to_one
  }

  join: action_definition {
    type: left_outer
    sql_on: ${action.action_definition_id} = ${action_definition.id} ;;
    relationship: many_to_one
  }

  join: action_definition_reason {
    type: left_outer
    sql_on: ${action.action_definition_reason_id} = ${action_definition_reason.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${goal.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: action_completion {
  join: activity {
    type: left_outer
    sql_on: ${action_completion.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: action {
    type: left_outer
    sql_on: ${action_completion.action_id} = ${action.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${action.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: goal {
    type: left_outer
    sql_on: ${action.goal_id} = ${goal.id} ;;
    relationship: many_to_one
  }

  join: action_definition {
    type: left_outer
    sql_on: ${action.action_definition_id} = ${action_definition.id} ;;
    relationship: many_to_one
  }

  join: action_definition_reason {
    type: left_outer
    sql_on: ${action.action_definition_reason_id} = ${action_definition_reason.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${goal.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: action_definition {
  join: goal_definition {
    type: left_outer
    sql_on: ${action_definition.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: action_definition_reason {
  join: action_definition {
    type: left_outer
    sql_on: ${action_definition_reason.action_definition_id} = ${action_definition.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${action_definition.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: action_definition_reason_transition {
  join: action_definition_reason {
    type: left_outer
    sql_on: ${action_definition_reason_transition.action_definition_reason_id} = ${action_definition_reason.id} ;;
    relationship: many_to_one
  }

  join: action_definition {
    type: left_outer
    sql_on: ${action_definition_reason.action_definition_id} = ${action_definition.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${action_definition.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: action_disposition_action_definition {
  join: action_disposition_definition {
    type: left_outer
    sql_on: ${action_disposition_action_definition.action_disposition_definition_id} = ${action_disposition_definition.id} ;;
    relationship: many_to_one
  }

  join: action_definition {
    type: left_outer
    sql_on: ${action_disposition_action_definition.action_definition_id} = ${action_definition.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${action_definition.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: action_disposition_definition {}

explore: action_state_definition {}

explore: action_status_definition {}

explore: activity {}

explore: activity_action {
  join: activity {
    type: left_outer
    sql_on: ${activity_action.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${activity_action.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: activity_action_instance {
  join: activity {
    type: left_outer
    sql_on: ${activity_action_instance.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: action {
    type: left_outer
    sql_on: ${activity_action_instance.action_id} = ${action.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${action.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: goal {
    type: left_outer
    sql_on: ${action.goal_id} = ${goal.id} ;;
    relationship: many_to_one
  }

  join: action_definition {
    type: left_outer
    sql_on: ${action.action_definition_id} = ${action_definition.id} ;;
    relationship: many_to_one
  }

  join: action_definition_reason {
    type: left_outer
    sql_on: ${action.action_definition_reason_id} = ${action_definition_reason.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${goal.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: activity_call {
  join: activity {
    type: left_outer
    sql_on: ${activity_call.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: target {
    type: left_outer
    sql_on: ${activity_call.target_id} = ${target.id} ;;
    relationship: many_to_one
  }

  join: audience {
    type: left_outer
    sql_on: ${target.audience_id} = ${audience.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${target.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: audience_template {
    type: left_outer
    sql_on: ${audience.audience_template_id} = ${audience_template.id} ;;
    relationship: many_to_one
  }
}

explore: activity_call_backup_20191008 {
  join: activity {
    type: left_outer
    sql_on: ${activity_call_backup_20191008.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: target {
    type: left_outer
    sql_on: ${activity_call_backup_20191008.target_id} = ${target.id} ;;
    relationship: many_to_one
  }

  join: audience {
    type: left_outer
    sql_on: ${target.audience_id} = ${audience.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${target.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: audience_template {
    type: left_outer
    sql_on: ${audience.audience_template_id} = ${audience_template.id} ;;
    relationship: many_to_one
  }
}

explore: activity_compensation {
  join: activity {
    type: left_outer
    sql_on: ${activity_compensation.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_definition {}

explore: activity_definition_group {
  join: activity_definition {
    type: left_outer
    sql_on: ${activity_definition_group.activity_definition_id} = ${activity_definition.id} ;;
    relationship: many_to_one
  }

  join: activity_definition_group_definition {
    type: left_outer
    sql_on: ${activity_definition_group.activity_definition_group_definition_id} = ${activity_definition_group_definition.id} ;;
    relationship: many_to_one
  }
}

explore: activity_definition_group_definition {}

explore: activity_email {
  join: activity {
    type: left_outer
    sql_on: ${activity_email.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: target {
    type: left_outer
    sql_on: ${activity_email.target_id} = ${target.id} ;;
    relationship: many_to_one
  }

  join: audience {
    type: left_outer
    sql_on: ${target.audience_id} = ${audience.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${target.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: audience_template {
    type: left_outer
    sql_on: ${audience.audience_template_id} = ${audience_template.id} ;;
    relationship: many_to_one
  }
}

explore: activity_entity {
  join: activity {
    type: left_outer
    sql_on: ${activity_entity.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_field_options {}

explore: activity_groups {}

explore: activity_interaction {
  join: activity {
    type: left_outer
    sql_on: ${activity_interaction.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_log_action_event {
  join: activity {
    type: left_outer
    sql_on: ${activity_log_action_event.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_log_action_state_change {
  join: activity {
    type: left_outer
    sql_on: ${activity_log_action_state_change.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_log_goal_event {
  join: activity {
    type: left_outer
    sql_on: ${activity_log_goal_event.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_log_goal_source_event {
  join: activity {
    type: left_outer
    sql_on: ${activity_log_goal_source_event.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_log_goal_source_status_change {
  join: activity {
    type: left_outer
    sql_on: ${activity_log_goal_source_status_change.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_log_goal_status_change {
  join: activity {
    type: left_outer
    sql_on: ${activity_log_goal_status_change.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_mas_asset {
  join: activity {
    type: left_outer
    sql_on: ${activity_mas_asset.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_mas_message {
  join: activity {
    type: left_outer
    sql_on: ${activity_mas_message.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_meeting {
  join: activity {
    type: left_outer
    sql_on: ${activity_meeting.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_message_email {
  join: activity {
    type: left_outer
    sql_on: ${activity_message_email.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: message_template {
    type: left_outer
    sql_on: ${activity_message_email.message_template_id} = ${message_template.id} ;;
    relationship: many_to_one
  }
}

explore: activity_organization {
  join: activity {
    type: left_outer
    sql_on: ${activity_organization.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: organization {
    type: left_outer
    sql_on: ${activity_organization.organization_id} = ${organization.id} ;;
    relationship: many_to_one
  }
}

explore: activity_person_relationship_definition {}

explore: activity_person_removed_from_campaign {
  join: activity {
    type: left_outer
    sql_on: ${activity_person_removed_from_campaign.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_privacy_acl {
  join: activity {
    type: left_outer
    sql_on: ${activity_privacy_acl.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: activity_smartlink {
  join: activity {
    type: left_outer
    sql_on: ${activity_smartlink.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: smartlink {
    type: left_outer
    sql_on: ${activity_smartlink.smartlink_id} = ${smartlink.id} ;;
    relationship: many_to_one
  }
}

explore: activity_task {
  join: activity {
    type: left_outer
    sql_on: ${activity_task.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: address {}

explore: address_dpv_footnote {
  join: address {
    type: left_outer
    sql_on: ${address_dpv_footnote.address_id} = ${address.id} ;;
    relationship: many_to_one
  }

  join: dpv_footnote {
    type: left_outer
    sql_on: ${address_dpv_footnote.dpv_footnote_id} = ${dpv_footnote.id} ;;
    relationship: many_to_one
  }
}

explore: algo_entity {
  join: algo_type {
    type: left_outer
    sql_on: ${algo_entity.algo_type_id} = ${algo_type.id} ;;
    relationship: many_to_one
  }

  join: business_line {
    type: left_outer
    sql_on: ${algo_entity.business_line_id} = ${business_line.id} ;;
    relationship: many_to_one
  }

  join: group {
    type: left_outer
    sql_on: ${business_line.group_id} = ${group.id} ;;
    relationship: many_to_one
  }
}

explore: algo_loyalty {}

explore: algo_loyalty_provider {}

explore: algo_opportunity {}

explore: algo_opportunity_provider {}

explore: algo_priority_activity_patient {
  join: person {
    type: left_outer
    sql_on: ${algo_priority_activity_patient.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: algo_priority_activity_provider {
  join: person {
    type: left_outer
    sql_on: ${algo_priority_activity_provider.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: algo_type {}

explore: algo_value {}

explore: algo_value_bucket {}

explore: algo_value_category {
  join: business_line {
    type: left_outer
    sql_on: ${algo_value_category.business_line_id} = ${business_line.id} ;;
    relationship: many_to_one
  }

  join: group {
    type: left_outer
    sql_on: ${algo_value_category.group_id} = ${group.id} ;;
    relationship: many_to_one
  }
}

explore: algo_value_display {}

explore: algo_value_entity {
  join: algo_value_bucket {
    type: left_outer
    sql_on: ${algo_value_entity.algo_value_bucket_id} = ${algo_value_bucket.id} ;;
    relationship: many_to_one
  }
}

explore: algo_value_entity_override {
  join: algo_value_bucket {
    type: left_outer
    sql_on: ${algo_value_entity_override.algo_value_bucket_id} = ${algo_value_bucket.id} ;;
    relationship: many_to_one
  }

  join: business_line {
    type: left_outer
    sql_on: ${algo_value_entity_override.business_line_id} = ${business_line.id} ;;
    relationship: many_to_one
  }

  join: group {
    type: left_outer
    sql_on: ${business_line.group_id} = ${group.id} ;;
    relationship: many_to_one
  }
}

explore: algo_value_entity_with_inactive {
  join: algo_value_bucket {
    type: left_outer
    sql_on: ${algo_value_entity_with_inactive.algo_value_bucket_id} = ${algo_value_bucket.id} ;;
    relationship: many_to_one
  }
}

explore: algo_value_patient {
  join: person {
    type: left_outer
    sql_on: ${algo_value_patient.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: algo_value_patient_display {}

explore: algo_value_provider {}

explore: appointment {}

explore: attachment {}

explore: attribute_definition {}

explore: attribute_group {}

explore: attribute_options {
  join: attribute_definition {
    type: left_outer
    sql_on: ${attribute_options.attribute_definition_id} = ${attribute_definition.id} ;;
    relationship: many_to_one
  }
}

explore: attribute_value {
  join: attribute_definition {
    type: left_outer
    sql_on: ${attribute_value.attribute_definition_id} = ${attribute_definition.id} ;;
    relationship: many_to_one
  }
}

explore: audience {
  join: audience_template {
    type: left_outer
    sql_on: ${audience.audience_template_id} = ${audience_template.id} ;;
    relationship: many_to_one
  }
}

explore: audience_entity {
  join: audience {
    type: left_outer
    sql_on: ${audience_entity.audience_id} = ${audience.id} ;;
    relationship: many_to_one
  }

  join: audience_template {
    type: left_outer
    sql_on: ${audience.audience_template_id} = ${audience_template.id} ;;
    relationship: many_to_one
  }
}

explore: audience_template {}

explore: audit {}

explore: broadcast {
  join: group {
    type: left_outer
    sql_on: ${broadcast.group_id} = ${group.id} ;;
    relationship: many_to_one
  }
}

explore: business_line {
  join: group {
    type: left_outer
    sql_on: ${business_line.group_id} = ${group.id} ;;
    relationship: many_to_one
  }
}

explore: call_result_definition {}

explore: campaign {}

explore: campaign_audience {
  join: campaign {
    type: left_outer
    sql_on: ${campaign_audience.campaign_id} = ${campaign.id} ;;
    relationship: many_to_one
  }

  join: audience {
    type: left_outer
    sql_on: ${campaign_audience.audience_id} = ${audience.id} ;;
    relationship: many_to_one
  }

  join: audience_template {
    type: left_outer
    sql_on: ${audience.audience_template_id} = ${audience_template.id} ;;
    relationship: many_to_one
  }
}

explore: campaign_emailmarketing {
  join: campaign {
    type: left_outer
    sql_on: ${campaign_emailmarketing.campaign_id} = ${campaign.id} ;;
    relationship: many_to_one
  }
}

explore: campaign_goal_definition {
  join: campaign {
    type: left_outer
    sql_on: ${campaign_goal_definition.campaign_id} = ${campaign.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${campaign_goal_definition.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }

  join: action_definition {
    type: left_outer
    sql_on: ${campaign_goal_definition.action_definition_id} = ${action_definition.id} ;;
    relationship: many_to_one
  }
}

explore: campaign_person {
  join: campaign {
    type: left_outer
    sql_on: ${campaign_person.campaign_id} = ${campaign.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${campaign_person.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: campaign_person_state_definition {}

explore: campaign_product {
  join: campaign {
    type: left_outer
    sql_on: ${campaign_product.campaign_id} = ${campaign.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${campaign_product.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: campaign_user {
  join: campaign {
    type: left_outer
    sql_on: ${campaign_user.campaign_id} = ${campaign.id} ;;
    relationship: many_to_one
  }
}

explore: channel {}

explore: client_id_alias {}

explore: client_key_alias {}

explore: client_key_definition {}

explore: client_region_mapping {}

explore: clinical {
  join: person {
    type: left_outer
    sql_on: ${clinical.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: column_point_value {}

explore: comment {
  join: activity {
    type: left_outer
    sql_on: ${comment.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: condition_definition {}

explore: config {}

explore: config_whitelist {}

explore: contact {}

explore: contact_permission_category {}

explore: contact_permission_channel {}

explore: contact_validity {
  join: contact {
    type: left_outer
    sql_on: ${contact_validity.contact_id} = ${contact.id} ;;
    relationship: many_to_one
  }

  join: contact_validity_source {
    type: left_outer
    sql_on: ${contact_validity.contact_validity_source_id} = ${contact_validity_source.id} ;;
    relationship: many_to_one
  }
}

explore: contact_validity_source {
  join: contact {
    type: left_outer
    sql_on: ${contact_validity_source.contact_id} = ${contact.id} ;;
    relationship: many_to_one
  }
}

explore: csv_target_source {
  join: person {
    type: left_outer
    sql_on: ${csv_target_source.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: audience_template {
    type: left_outer
    sql_on: ${csv_target_source.audience_template_id} = ${audience_template.id} ;;
    relationship: many_to_one
  }
}

explore: dpv_footnote {}

explore: dpv_match_code {}

explore: entity_address {
  join: address {
    type: left_outer
    sql_on: ${entity_address.address_id} = ${address.id} ;;
    relationship: many_to_one
  }
}

explore: entity_bitmask {}

explore: entity_client_key {}

explore: entity_last_activity {}

explore: entity_relationship_definition {}

explore: entity_relationship_permission {
  join: entity_relationships {
    type: left_outer
    sql_on: ${entity_relationship_permission.entity_relationship_id} = ${entity_relationships.id} ;;
    relationship: many_to_one
  }

  join: entity_relationship_definition {
    type: left_outer
    sql_on: ${entity_relationships.entity_relationship_definition_id} = ${entity_relationship_definition.id} ;;
    relationship: many_to_one
  }
}

explore: entity_relationships {
  join: entity_relationship_definition {
    type: left_outer
    sql_on: ${entity_relationships.entity_relationship_definition_id} = ${entity_relationship_definition.id} ;;
    relationship: many_to_one
  }
}

explore: entity_type {}

explore: entity_value_override {}

explore: flyway_schema_history {}

explore: goal {
  join: person {
    type: left_outer
    sql_on: ${goal.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${goal.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: goal_activity {
  join: goal {
    type: left_outer
    sql_on: ${goal_activity.goal_id} = ${goal.id} ;;
    relationship: many_to_one
  }

  join: activity {
    type: left_outer
    sql_on: ${goal_activity.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${goal.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${goal.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: goal_definition {}

explore: goal_definition_configuration {
  join: goal_definition {
    type: left_outer
    sql_on: ${goal_definition_configuration.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: goal_definition_probability {
  join: goal_definition {
    type: left_outer
    sql_on: ${goal_definition_probability.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }

  join: channel {
    type: left_outer
    sql_on: ${goal_definition_probability.channel_id} = ${channel.id} ;;
    relationship: many_to_one
  }
}

explore: goal_source {
  join: goal {
    type: left_outer
    sql_on: ${goal_source.goal_id} = ${goal.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${goal.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${goal.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: goal_source_activity {
  join: goal_source {
    type: left_outer
    sql_on: ${goal_source_activity.goal_source_id} = ${goal_source.id} ;;
    relationship: many_to_one
  }

  join: activity {
    type: left_outer
    sql_on: ${goal_source_activity.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: goal {
    type: left_outer
    sql_on: ${goal_source.goal_id} = ${goal.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${goal.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${goal.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: goal_status_action {
  join: goal_definition {
    type: left_outer
    sql_on: ${goal_status_action.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }

  join: action_definition {
    type: left_outer
    sql_on: ${goal_status_action.action_definition_id} = ${action_definition.id} ;;
    relationship: many_to_one
  }
}

explore: group {}

explore: group_member {
  join: group {
    type: left_outer
    sql_on: ${group_member.group_id} = ${group.id} ;;
    relationship: many_to_one
  }
}

explore: group_tag_permission {
  join: group {
    type: left_outer
    sql_on: ${group_tag_permission.group_id} = ${group.id} ;;
    relationship: many_to_one
  }
}

explore: health_goal_definition {}

explore: ie_migration_history {}

explore: imtn_referral_imaging_accountreps {}

explore: imtn_referral_imaging_topten {}

explore: imtn_referral_lab_accountreps {}

explore: imtn_referral_lab_topten {}

explore: insight_embed_content {}

explore: insurance_plan {}

explore: knowledge_connector {}

explore: knowledge_connector_display_type_definition {}

explore: knowledge_connector_doc_type_definition {}

explore: knowledge_connector_goal_definition {
  join: knowledge_connector {
    type: left_outer
    sql_on: ${knowledge_connector_goal_definition.knowledge_connector_id} = ${knowledge_connector.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${knowledge_connector_goal_definition.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: knowledge_connector_person {
  join: knowledge_connector {
    type: left_outer
    sql_on: ${knowledge_connector_person.knowledge_connector_id} = ${knowledge_connector.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${knowledge_connector_person.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: knowledge_connector_url {
  join: knowledge_connector {
    type: left_outer
    sql_on: ${knowledge_connector_url.knowledge_connector_id} = ${knowledge_connector.id} ;;
    relationship: many_to_one
  }
}

explore: lead_source {
  join: activity_definition {
    type: left_outer
    sql_on: ${lead_source.activity_definition_id} = ${activity_definition.id} ;;
    relationship: many_to_one
  }
}

explore: map_elgg_symphony {}

explore: map_elgg_symphony_20200117 {}

explore: mas_link {}

explore: mas_template {}

explore: med_prescription {
  join: medication {
    type: left_outer
    sql_on: ${med_prescription.medication_id} = ${medication.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${medication.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: med_vaccine {
  join: medication {
    type: left_outer
    sql_on: ${med_vaccine.medication_id} = ${medication.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${medication.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: medication {
  join: person {
    type: left_outer
    sql_on: ${medication.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: message_template {}

explore: model_definition {}

explore: nba_metrics {
  join: goal_definition {
    type: left_outer
    sql_on: ${nba_metrics.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: notification {
  join: activity {
    type: left_outer
    sql_on: ${notification.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: comment {
    type: left_outer
    sql_on: ${notification.comment_id} = ${comment.id} ;;
    relationship: many_to_one
  }

  join: campaign {
    type: left_outer
    sql_on: ${notification.campaign_id} = ${campaign.id} ;;
    relationship: many_to_one
  }

  join: workflow {
    type: left_outer
    sql_on: ${notification.workflow_id} = ${workflow.id} ;;
    relationship: many_to_one
  }

  join: workflow_definition {
    type: left_outer
    sql_on: ${workflow.workflow_definition_id} = ${workflow_definition.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${workflow_definition.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: nppes_basic {
  join: specialty {
    type: left_outer
    sql_on: ${nppes_basic.specialty_id} = ${specialty.cms_specialty_id} ;;
    relationship: many_to_one
  }
}

explore: oauth_access_tokens {}

explore: oauth_authorization_code {}

explore: oauth_clients {}

explore: oauth_devices {
  join: oauth_access_tokens {
    type: left_outer
    sql_on: ${oauth_devices.oauth_access_token_id} = ${oauth_access_tokens.id} ;;
    relationship: many_to_one
  }

  join: oauth_authorization_code {
    type: left_outer
    sql_on: ${oauth_devices.oauth_authorization_code_id} = ${oauth_authorization_code.id} ;;
    relationship: many_to_one
  }
}

explore: office_location_person {
  join: person {
    type: left_outer
    sql_on: ${office_location_person.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: organization {}

explore: organization_person {
  join: person {
    type: left_outer
    sql_on: ${organization_person.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: organization_specialty {
  join: organization {
    type: left_outer
    sql_on: ${organization_specialty.organization_id} = ${organization.id} ;;
    relationship: many_to_one
  }

  join: specialty {
    type: left_outer
    sql_on: ${organization_specialty.specialty_id} = ${specialty.cms_specialty_id} ;;
    relationship: many_to_one
  }
}

explore: parent_organization_child_office_location {}

explore: parent_organization_child_office_location_nested {}

explore: parent_organization_child_organization {}

explore: patient_condition {
  join: person {
    type: left_outer
    sql_on: ${patient_condition.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: patient_health_goal {
  join: person {
    type: left_outer
    sql_on: ${patient_health_goal.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: payer_ims {}

explore: permission_definition {}

explore: person {}

explore: person_activity {
  join: person {
    type: left_outer
    sql_on: ${person_activity.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: activity {
    type: left_outer
    sql_on: ${person_activity.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }
}

explore: person_contact_permission {
  join: person {
    type: left_outer
    sql_on: ${person_contact_permission.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: contact_permission_channel {
    type: left_outer
    sql_on: ${person_contact_permission.contact_permission_channel_id} = ${contact_permission_channel.id} ;;
    relationship: many_to_one
  }

  join: contact_permission_category {
    type: left_outer
    sql_on: ${person_contact_permission.contact_permission_category_id} = ${contact_permission_category.id} ;;
    relationship: many_to_one
  }

  join: person_contact_permission_source {
    type: left_outer
    sql_on: ${person_contact_permission.person_contact_permission_source_id} = ${person_contact_permission_source.id} ;;
    relationship: many_to_one
  }
}

explore: person_contact_permission_source {
  join: person {
    type: left_outer
    sql_on: ${person_contact_permission_source.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: contact_permission_channel {
    type: left_outer
    sql_on: ${person_contact_permission_source.contact_permission_channel_id} = ${contact_permission_channel.id} ;;
    relationship: many_to_one
  }

  join: contact_permission_category {
    type: left_outer
    sql_on: ${person_contact_permission_source.contact_permission_category_id} = ${contact_permission_category.id} ;;
    relationship: many_to_one
  }
}

explore: person_goal_definition_probability {
  join: person {
    type: left_outer
    sql_on: ${person_goal_definition_probability.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${person_goal_definition_probability.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }

  join: channel {
    type: left_outer
    sql_on: ${person_goal_definition_probability.channel_id} = ${channel.id} ;;
    relationship: many_to_one
  }
}

explore: person_lead_source {
  join: person {
    type: left_outer
    sql_on: ${person_lead_source.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: lead_source {
    type: left_outer
    sql_on: ${person_lead_source.lead_source_id} = ${lead_source.id} ;;
    relationship: many_to_one
  }

  join: activity {
    type: left_outer
    sql_on: ${person_lead_source.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: goal {
    type: left_outer
    sql_on: ${person_lead_source.goal_id} = ${goal.id} ;;
    relationship: many_to_one
  }

  join: activity_definition {
    type: left_outer
    sql_on: ${lead_source.activity_definition_id} = ${activity_definition.id} ;;
    relationship: many_to_one
  }

  join: goal_definition {
    type: left_outer
    sql_on: ${goal.goal_definition_id} = ${goal_definition.id} ;;
    relationship: many_to_one
  }
}

explore: person_model_score {
  join: person {
    type: left_outer
    sql_on: ${person_model_score.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: model_definition {
    type: left_outer
    sql_on: ${person_model_score.model_definition_id} = ${model_definition.id} ;;
    relationship: many_to_one
  }
}

explore: person_name_hash {
  join: person {
    type: left_outer
    sql_on: ${person_name_hash.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: person_patient {
  join: person {
    type: left_outer
    sql_on: ${person_patient.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: insurance_plan {
    type: left_outer
    sql_on: ${person_patient.insurance_plan_id} = ${insurance_plan.id} ;;
    relationship: many_to_one
  }
}

explore: person_probability {
  join: person {
    type: left_outer
    sql_on: ${person_probability.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: channel {
    type: left_outer
    sql_on: ${person_probability.channel_id} = ${channel.id} ;;
    relationship: many_to_one
  }
}

explore: person_provider {
  join: person {
    type: left_outer
    sql_on: ${person_provider.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: person_specialty {
  join: person {
    type: left_outer
    sql_on: ${person_specialty.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: specialty {
    type: left_outer
    sql_on: ${person_specialty.specialty_id} = ${specialty.cms_specialty_id} ;;
    relationship: many_to_one
  }
}

explore: person_type {
  join: person {
    type: left_outer
    sql_on: ${person_type.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: person_type_definition {
    type: left_outer
    sql_on: ${person_type.person_type_definition_id} = ${person_type_definition.id} ;;
    relationship: many_to_one
  }
}

explore: person_type_definition {}

explore: person_user {
  join: person {
    type: left_outer
    sql_on: ${person_user.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: preference_definition {}

explore: privacy_definition {}

explore: problem_code {
  join: person {
    type: left_outer
    sql_on: ${problem_code.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: product {}

explore: provider_insurance_plan {
  join: person {
    type: left_outer
    sql_on: ${provider_insurance_plan.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: pvp_filter_config {}

explore: record_type {}

explore: referral {}

explore: referral_athena {}

explore: referral_athena_factor {}

explore: referral_based_kpis {
  join: person {
    type: left_outer
    sql_on: ${referral_based_kpis.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: referral_ims {}

explore: reset_password_code {}

explore: sequelize_meta {}

explore: sequence_data {}

explore: smartlink {}

explore: specialty {}

explore: sync_definition {}

explore: tag_definition {}

explore: tag_entities {
  join: tag_definition {
    type: left_outer
    sql_on: ${tag_entities.tag_definition_id} = ${tag_definition.id} ;;
    relationship: many_to_one
  }
}

explore: target {
  join: audience {
    type: left_outer
    sql_on: ${target.audience_id} = ${audience.id} ;;
    relationship: many_to_one
  }

  join: person {
    type: left_outer
    sql_on: ${target.person_id} = ${person.id} ;;
    relationship: many_to_one
  }

  join: audience_template {
    type: left_outer
    sql_on: ${audience.audience_template_id} = ${audience_template.id} ;;
    relationship: many_to_one
  }
}

explore: target_status_definition {}

explore: title {}

explore: twilio_flow {}

explore: user_permission {
  join: person {
    type: left_outer
    sql_on: ${user_permission.person_id} = ${person.id} ;;
    relationship: many_to_one
  }
}

explore: user_preference {
  join: preference_definition {
    type: left_outer
    sql_on: ${user_preference.preference_definition_id} = ${preference_definition.id} ;;
    relationship: many_to_one
  }
}

explore: value_factor {}

explore: workflow {
  join: workflow_definition {
    type: left_outer
    sql_on: ${workflow.workflow_definition_id} = ${workflow_definition.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${workflow_definition.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: workflow_activity {
  join: workflow {
    type: left_outer
    sql_on: ${workflow_activity.workflow_id} = ${workflow.id} ;;
    relationship: many_to_one
  }

  join: activity {
    type: left_outer
    sql_on: ${workflow_activity.activity_id} = ${activity.id} ;;
    relationship: many_to_one
  }

  join: workflow_definition {
    type: left_outer
    sql_on: ${workflow.workflow_definition_id} = ${workflow_definition.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${workflow_definition.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: workflow_definition {
  join: product {
    type: left_outer
    sql_on: ${workflow_definition.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: zip_latlong {}

explore: zip_type {}
