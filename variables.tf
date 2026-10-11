variable "group_billable_member_memberships_lookup" {
  description = <<EOT
Map of group_billable_member_memberships_lookup, attributes below
Required:
    - group_id
    - user_id
EOT

  type = map(object({
    group_id = string
    user_id  = number
  }))
}

