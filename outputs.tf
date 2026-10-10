output "lex_slot_types_id" {
  description = "Map of id values across all lex_slot_types, keyed the same as var.lex_slot_types"
  value       = { for k, v in aws_lex_slot_type.lex_slot_types : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lex_slot_types_checksum" {
  description = "Map of checksum values across all lex_slot_types, keyed the same as var.lex_slot_types"
  value       = { for k, v in aws_lex_slot_type.lex_slot_types : k => v.checksum if v.checksum != null && length(v.checksum) > 0 }
}
output "lex_slot_types_create_version" {
  description = "Map of create_version values across all lex_slot_types, keyed the same as var.lex_slot_types"
  value       = { for k, v in aws_lex_slot_type.lex_slot_types : k => v.create_version if v.create_version != null }
}
output "lex_slot_types_created_date" {
  description = "Map of created_date values across all lex_slot_types, keyed the same as var.lex_slot_types"
  value       = { for k, v in aws_lex_slot_type.lex_slot_types : k => v.created_date if v.created_date != null && length(v.created_date) > 0 }
}
output "lex_slot_types_description" {
  description = "Map of description values across all lex_slot_types, keyed the same as var.lex_slot_types"
  value       = { for k, v in aws_lex_slot_type.lex_slot_types : k => v.description if v.description != null && length(v.description) > 0 }
}
output "lex_slot_types_enumeration_value" {
  description = "Map of enumeration_value values across all lex_slot_types, keyed the same as var.lex_slot_types"
  value       = { for k, v in aws_lex_slot_type.lex_slot_types : k => v.enumeration_value if v.enumeration_value != null && length(v.enumeration_value) > 0 }
}
output "lex_slot_types_last_updated_date" {
  description = "Map of last_updated_date values across all lex_slot_types, keyed the same as var.lex_slot_types"
  value       = { for k, v in aws_lex_slot_type.lex_slot_types : k => v.last_updated_date if v.last_updated_date != null && length(v.last_updated_date) > 0 }
}
output "lex_slot_types_name" {
  description = "Map of name values across all lex_slot_types, keyed the same as var.lex_slot_types"
  value       = { for k, v in aws_lex_slot_type.lex_slot_types : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lex_slot_types_region" {
  description = "Map of region values across all lex_slot_types, keyed the same as var.lex_slot_types"
  value       = { for k, v in aws_lex_slot_type.lex_slot_types : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lex_slot_types_value_selection_strategy" {
  description = "Map of value_selection_strategy values across all lex_slot_types, keyed the same as var.lex_slot_types"
  value       = { for k, v in aws_lex_slot_type.lex_slot_types : k => v.value_selection_strategy if v.value_selection_strategy != null && length(v.value_selection_strategy) > 0 }
}
output "lex_slot_types_version" {
  description = "Map of version values across all lex_slot_types, keyed the same as var.lex_slot_types"
  value       = { for k, v in aws_lex_slot_type.lex_slot_types : k => v.version if v.version != null && length(v.version) > 0 }
}

