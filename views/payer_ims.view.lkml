view: payer_ims {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: aileron_payer_cl_id {
    type: number
    sql: ${TABLE}.aileron_payer_cl_id ;;
  }

  dimension: aileron_payer_class {
    type: string
    sql: ${TABLE}.aileron_payer_class ;;
  }

  dimension: explicit_referring_count {
    type: number
    sql: ${TABLE}.explicit_referring_count ;;
  }

  dimension: explicit_rendering_count {
    type: number
    sql: ${TABLE}.explicit_rendering_count ;;
  }

  dimension: npi {
    type: number
    sql: ${TABLE}.npi ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
