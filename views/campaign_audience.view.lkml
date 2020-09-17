view: campaign_audience {
  sql_table_name: proh_symphony.campaign_audience ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: audience_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.audience_id ;;
  }

  dimension: campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      campaign.id,
      campaign.name,
      campaign.display_name,
      audience.id,
      audience.name,
      audience.source_filename
    ]
  }
}
