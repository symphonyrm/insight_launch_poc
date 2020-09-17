view: audit {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: datetime {
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
    sql: ${TABLE}.datetime ;;
  }

  dimension: entityid {
    type: number
    value_format_name: id
    sql: ${TABLE}.entityid ;;
  }

  dimension: entityname {
    type: string
    sql: ${TABLE}.entityname ;;
  }

  dimension: eventname {
    type: string
    sql: ${TABLE}.eventname ;;
  }

  dimension: is_error {
    type: yesno
    sql: ${TABLE}.is_error ;;
  }

  dimension: jsondata {
    type: string
    sql: ${TABLE}.jsondata ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, eventname, entityname]
  }
}
