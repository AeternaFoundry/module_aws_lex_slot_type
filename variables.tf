variable "lex_slot_types" {
  description = <<EOT
Map of lex_slot_types, attributes below
Required:
    - name
    - enumeration_value (block):
        - synonyms (optional)
        - value (required)
Optional:
    - create_version
    - description
    - region
    - value_selection_strategy
EOT

  type = map(object({
    name                     = string
    create_version           = optional(bool)
    description              = optional(string)
    region                   = optional(string)
    value_selection_strategy = optional(string)
    enumeration_value = list(object({
      synonyms = optional(set(string))
      value    = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lex_slot_types : (
        length(v.enumeration_value) >= 1 && length(v.enumeration_value) <= 10000
      )
    ])
    error_message = "Each enumeration_value list must contain between 1 and 10000 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.lex_slot_types : (
        alltrue([for item in v.enumeration_value : (item.synonyms == null || (alltrue([for x in item.synonyms : length(x) >= 1 && length(x) <= 140])))])
      )
    ])
    error_message = "must be between 1 and 140 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

