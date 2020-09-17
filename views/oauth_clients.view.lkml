view: oauth_clients {

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.client_name ;;
  }

  dimension: client_secret {
    type: string
    sql: ${TABLE}.client_secret ;;
  }

  dimension: oauth_grant_type {
    type: string
    sql: ${TABLE}.oauth_grant_type ;;
  }

  dimension: redirect_uri {
    type: string
    sql: ${TABLE}.redirect_uri ;;
  }

  measure: count {
    type: count
    drill_fields: [client_name]
  }
}
