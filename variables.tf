variable "email_security_block_sender_lookup" {
  description = <<EOT
Map of email_security_block_sender_lookup, attributes below
Required:
    - account_id
Optional:
    - filter
    - pattern_id
EOT

  type = map(object({
    account_id = string
    filter = optional(object({
      direction    = optional(string)
      order        = optional(string)
      pattern      = optional(string)
      pattern_type = optional(string)
      search       = optional(string)
    }))
    pattern_id = optional(string)
  }))
}

