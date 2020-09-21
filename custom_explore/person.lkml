
include: "/models/launch_poc_base.lkml"

explore: person_base {
  view_name: person
  label: "Person Base"
  description: "Person information"

  join: person_type {
    view_label: "Person"
    sql_on: ${person.id} = ${person_type.person_id} ;;
    relationship: one_to_many
  }

  join: tag_entities {
    sql_on: ${tag_entities.entity_id} = ${person.id} ;;
    relationship: one_to_many
  }

  join: entity_address {
    sql_on: ${entity_address.entity_id} = ${person.id} ;;
    relationship: one_to_many
  }

  join: address {
    sql_on: ${address.id} = ${entity_address.address_id} ;;
    relationship: many_to_many
  }

  join: contact {
    sql_on: ${contact.entity_id} = ${person.id} ;;
    relationship: one_to_many
  }

  join: contact_validity {
    sql_on: ${contact_validity.contact_id} = ${contact.id} ;;
    relationship: one_to_many
  }

  join: person_contact_permission {
    sql_on: ${person_contact_permission.person_id} = ${person.id} ;;
    relationship: one_to_many
  }

  join: goal {
    sql_on: ${goal.person_id} = ${person.id} ;;
    relationship: one_to_many
  }
}
