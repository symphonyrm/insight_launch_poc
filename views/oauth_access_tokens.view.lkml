view: oauth_access_tokens {
  sql_table_name: proh_symphony.oauth_access_tokens ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: access_token {
    type: string
    sql: ${TABLE}.access_token ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension_group: expires {
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
    sql: ${TABLE}.expires ;;
  }

  dimension: revoked {
    type: yesno
    sql: ${TABLE}.revoked ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, oauth_devices.count]
  }
}
