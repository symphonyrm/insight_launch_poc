view: referral_ims {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cms_specialty_id {
    type: string
    sql: ${TABLE}.cms_specialty_id ;;
  }

  dimension: dest_city {
    type: string
    sql: ${TABLE}.dest_city ;;
  }

  dimension: dest_entity_name {
    type: string
    sql: ${TABLE}.dest_entity_name ;;
  }

  dimension: dest_entity_type {
    type: number
    sql: ${TABLE}.dest_entity_type ;;
  }

  dimension: dest_state {
    type: string
    sql: ${TABLE}.dest_state ;;
  }

  dimension: destination {
    type: number
    sql: ${TABLE}.destination ;;
  }

  dimension: estimated_revenue {
    type: number
    sql: ${TABLE}.estimated_revenue ;;
  }

  dimension: estimated_revenue_client_only {
    type: number
    sql: ${TABLE}.estimated_revenue_client_only ;;
  }

  dimension: estimated_revenue_ims_only {
    type: number
    sql: ${TABLE}.estimated_revenue_ims_only ;;
  }

  dimension: explicit_count {
    type: number
    sql: ${TABLE}.explicit_count ;;
  }

  dimension: iscustomer {
    type: yesno
    sql: ${TABLE}.iscustomer ;;
  }

  dimension: referral_count {
    type: number
    sql: ${TABLE}.referral_count ;;
  }

  dimension: sameday_count {
    type: number
    sql: ${TABLE}.sameday_count ;;
  }

  dimension: source {
    type: number
    sql: ${TABLE}.source ;;
  }

  dimension: source_city {
    type: string
    sql: ${TABLE}.source_city ;;
  }

  dimension: source_cms_specialty_id {
    type: string
    sql: ${TABLE}.source_cms_specialty_id ;;
  }

  dimension: source_entity_name {
    type: string
    sql: ${TABLE}.source_entity_name ;;
  }

  dimension: source_entity_type {
    type: number
    sql: ${TABLE}.source_entity_type ;;
  }

  dimension: source_iscustomer {
    type: yesno
    sql: ${TABLE}.source_iscustomer ;;
  }

  dimension: source_state {
    type: string
    sql: ${TABLE}.source_state ;;
  }

  dimension: total_line_items {
    type: number
    sql: ${TABLE}.total_line_items ;;
  }

  dimension: unique_count {
    type: number
    sql: ${TABLE}.unique_count ;;
  }

  dimension: used_ims_revenue_line_items {
    type: number
    sql: ${TABLE}.used_ims_revenue_line_items ;;
  }

  measure: count {
    type: count
    drill_fields: [id, dest_entity_name, source_entity_name]
  }
}
