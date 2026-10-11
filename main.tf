data "cloudflare_email_security_block_sender" "email_security_block_sender_lookup" {
  for_each = var.email_security_block_sender_lookup

  account_id = each.value.account_id
  filter     = each.value.filter
  pattern_id = each.value.pattern_id
}

