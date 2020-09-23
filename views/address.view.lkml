view: address {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address_hash {
    type: string
    sql: ${TABLE}.address_hash ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
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

  dimension: dpv_match_code {
    type: string
    sql: ${TABLE}.dpv_match_code ;;
  }

  dimension: import_payload {
    type: number
    sql: ${TABLE}.import_payload ;;
  }

  dimension: import_source_id {
    type: number
    sql: ${TABLE}.import_source_id ;;
  }

  dimension: invalid {
    type: yesno
    sql: ${TABLE}.invalid ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: match_mode {
    type: string
    sql: ${TABLE}.match_mode ;;
  }

  dimension: plus4_code {
    type: string
    sql: ${TABLE}.plus4_code ;;
  }

  dimension: postalcode {
    type: string
    sql: ${TABLE}.postalcode ;;
  }

  dimension: rdi {
    type: string
    sql: ${TABLE}.rdi ;;
  }

  dimension: record_type {
    type: string
    sql: ${TABLE}.record_type ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: street1 {
    type: string
    sql: ${TABLE}.street1 ;;
  }

  dimension: street2 {
    type: string
    sql: ${TABLE}.street2 ;;
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

  dimension: usps_active {
    type: string
    sql: ${TABLE}.usps_active ;;
  }

  dimension: validation_failed {
    type: yesno
    sql: ${TABLE}.validation_failed ;;
  }

  dimension: zip_type {
    type: string
    sql: ${TABLE}.zip_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, county_name, address_dpv_footnote.count, entity_address.count]
  }
}
