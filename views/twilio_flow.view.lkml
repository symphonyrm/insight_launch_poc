view: twilio_flow {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: flow_phone {
    type: string
    sql: ${TABLE}.flow_phone ;;
  }

  dimension: flow_sid {
    type: string
    sql: ${TABLE}.flow_sid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
