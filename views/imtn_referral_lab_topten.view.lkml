view: imtn_referral_lab_topten {
  sql_table_name: proh_symphony.imtn_referral_lab_topten ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_rep {
    type: string
    sql: ${TABLE}.AccountRep ;;
  }

  dimension: account_rep_id {
    type: number
    sql: ${TABLE}.AccountRepId ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.Count ;;
  }

  measure: imtn_referral_lab_topten_count {
    type: count
    drill_fields: [id]
  }
}
