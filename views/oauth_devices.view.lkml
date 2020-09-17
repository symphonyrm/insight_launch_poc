view: oauth_devices {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: oauth_access_token_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oauth_access_token_id ;;
  }

  dimension: oauth_authorization_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oauth_authorization_code_id ;;
  }

  dimension: oauth_client_id {
    type: string
    sql: ${TABLE}.oauth_client_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, oauth_access_tokens.id, oauth_authorization_code.id]
  }
}
