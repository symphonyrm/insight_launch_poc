
include: "/models/launch_poc_base.lkml"

include: "./person.lkml"

explore: patient_base {
  extends: [person_base]
  label: "Patient Base"
  description: "Patient information"
  sql_always_where: ${person_type.person_type_definition_id} in (2,4)
      AND NOT ${person.is_deceased}
      AND ${person.is_active};;

    join: entity_client_key {
      sql_on: ${person.id} = ${entity_client_key.entity_id} ;;
      relationship: one_to_many
    }

    join: client_key_definition {
      sql_on: ${client_key_definition.id} = ${entity_client_key.key_id} ;;
      relationship: one_to_many
    }
  }
