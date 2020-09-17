view: referral_based_kpis {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: calculated {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.calculated_date ;;
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

  dimension: growth_kpi {
    type: number
    sql: ${TABLE}.growth_kpi ;;
  }

  dimension: last_year_count_in {
    type: number
    sql: ${TABLE}.last_year_count_in ;;
  }

  dimension: last_year_count_out {
    type: number
    sql: ${TABLE}.last_year_count_out ;;
  }

  dimension: last_year_count_total {
    type: number
    sql: ${TABLE}.last_year_count_total ;;
  }

  dimension: leakage_recovery_kpi {
    type: number
    sql: ${TABLE}.leakage_recovery_kpi ;;
  }

  dimension_group: max_referral {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.max_referral_date ;;
  }

  dimension: person_group_id {
    type: number
    sql: ${TABLE}.person_group_id ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  dimension: referral_source {
    type: string
    sql: ${TABLE}.referral_source ;;
  }

  dimension: this_year_count_in {
    type: number
    sql: ${TABLE}.this_year_count_in ;;
  }

  dimension: this_year_count_out {
    type: number
    sql: ${TABLE}.this_year_count_out ;;
  }

  dimension: this_year_count_total {
    type: number
    sql: ${TABLE}.this_year_count_total ;;
  }

  dimension: timeframe {
    type: string
    sql: ${TABLE}.timeframe ;;
  }

  dimension: total_kpi {
    type: number
    sql: ${TABLE}.total_kpi ;;
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
    drill_fields: [id, person.id, person.firstname, person.middlename, person.lastname]
  }
}
