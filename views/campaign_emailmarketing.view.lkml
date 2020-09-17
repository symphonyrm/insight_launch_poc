view: campaign_emailmarketing {
  sql_table_name: proh_symphony.campaign_emailmarketing ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: emailmarketing_id {
    type: number
    sql: ${TABLE}.emailmarketing_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, campaign.id, campaign.name, campaign.display_name]
  }
}
