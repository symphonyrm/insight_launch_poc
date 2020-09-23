
include: "/models/launch_poc_base.lkml"

include: "./person.lkml"

explore: provider_base {
  extends: [person_base]
  label: "Provider Base"
  description: "Provider information"
  fields: []
}
#
# explore: works_at {
#   view_name: organization
#
#   join: entity_relationships {
#     sql_on:
#       ${entity_relationships.guid_two} = ${person.id} AND
#       ${entity_relationships.is_deleted} = 0;;
#     relationship: one_to_many
#   }
#
#   join: entity_relationship_definition {
#     sql_on:
#       ${entity_relationship_definition.id} = ${entity_relationships.entity_relationship_definition_id} AND
#       ${entity_relationship_definition.left_to_right_descriptor} = "Works At";;
#     relationship: one_to_many
#   }
#
#   join: tag_entities {
#     sql_on: ${tag_entities.id} = ${entity_relationships.id} ;;
#     relationship: one_to_many
#   }
#
#   join: tag_definition {
#     sql_on: ${tag_definition.id} = ${tag_entities.tag_definition_id} and ${tag_definition.name} = "Display";;
#     relationship: one_to_many
#   }
# }
#
# explore: common {
#   from: organization
#
#   join: entity_relationships {
#     sql_on:
#       ${entity_relationships.guid_two} = ${person.id} AND
#       ${entity_relationships.is_deleted} = 0;;
#     relationship: one_to_many
#   }
# }
