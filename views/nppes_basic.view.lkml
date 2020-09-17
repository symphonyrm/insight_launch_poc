view: nppes_basic {
  sql_table_name: proh_symphony.nppes_basic ;;

  dimension: ein {
    type: string
    sql: ${TABLE}.ein ;;
  }

  dimension: entity_typecode {
    type: yesno
    sql: ${TABLE}.entity_typecode ;;
  }

  dimension: full_name_or_org_name {
    type: string
    sql: ${TABLE}.full_name_or_org_name ;;
  }

  dimension: npi {
    type: number
    sql: ${TABLE}.npi ;;
  }

  dimension: primary_taxonomy {
    type: string
    sql: ${TABLE}.primary_taxonomy ;;
  }

  dimension: prov_first_line_prac_loc_addr {
    type: string
    sql: ${TABLE}.prov_first_line_prac_loc_addr ;;
  }

  dimension: prov_first_name {
    type: string
    sql: ${TABLE}.prov_first_name ;;
  }

  dimension: prov_gender_code {
    type: string
    sql: ${TABLE}.prov_gender_code ;;
  }

  dimension: prov_last_name {
    type: string
    sql: ${TABLE}.prov_last_name ;;
  }

  dimension: prov_middle_name {
    type: string
    sql: ${TABLE}.prov_middle_name ;;
  }

  dimension: prov_org_name {
    type: string
    sql: ${TABLE}.prov_org_name ;;
  }

  dimension: prov_prac_loc_addr_city {
    type: string
    sql: ${TABLE}.prov_prac_loc_addr_city ;;
  }

  dimension: prov_prac_loc_addr_country_code {
    type: string
    sql: ${TABLE}.prov_prac_loc_addr_country_code ;;
  }

  dimension: prov_prac_loc_addr_fax {
    type: string
    sql: ${TABLE}.prov_prac_loc_addr_fax ;;
  }

  dimension: prov_prac_loc_addr_phone {
    type: string
    sql: ${TABLE}.prov_prac_loc_addr_phone ;;
  }

  dimension: prov_prac_loc_addr_postal_code {
    type: string
    sql: ${TABLE}.prov_prac_loc_addr_postal_code ;;
  }

  dimension: prov_prac_loc_addr_state {
    type: string
    sql: ${TABLE}.prov_prac_loc_addr_state ;;
  }

  dimension: prov_second_line_prac_loc_addr {
    type: string
    sql: ${TABLE}.prov_second_line_prac_loc_addr ;;
  }

  dimension: replacement_npi {
    type: number
    sql: ${TABLE}.replacement_npi ;;
  }

  dimension: specialty_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.specialty_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      full_name_or_org_name,
      prov_org_name,
      prov_last_name,
      prov_first_name,
      prov_middle_name,
      specialty.name,
      specialty.cms_specialty_id
    ]
  }
}
