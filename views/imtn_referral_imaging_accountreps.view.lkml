view: imtn_referral_imaging_accountreps {
  sql_table_name: proh_symphony.imtn_referral_imaging_accountreps ;;
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

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  measure: imtn_referral_imaging_accountreps_count {
    type: count
    drill_fields: [id]
  }
}
