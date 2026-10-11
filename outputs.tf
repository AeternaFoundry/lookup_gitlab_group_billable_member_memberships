output "group_billable_member_memberships_lookup_id" {
  description = "Map of id values across all group_billable_member_memberships_lookup, keyed the same as var.group_billable_member_memberships_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_group_billable_member_memberships.group_billable_member_memberships_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_billable_member_memberships_lookup_group_id" {
  description = "Map of group_id values across all group_billable_member_memberships_lookup, keyed the same as var.group_billable_member_memberships_lookup except keys with no group_id are omitted"
  value       = { for k, v in data.gitlab_group_billable_member_memberships.group_billable_member_memberships_lookup : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "group_billable_member_memberships_lookup_memberships" {
  description = "Map of memberships values across all group_billable_member_memberships_lookup, keyed the same as var.group_billable_member_memberships_lookup except keys with no memberships are omitted"
  value       = { for k, v in data.gitlab_group_billable_member_memberships.group_billable_member_memberships_lookup : k => v.memberships if v.memberships != null && length(v.memberships) > 0 }
}
output "group_billable_member_memberships_lookup_user_id" {
  description = "Map of user_id values across all group_billable_member_memberships_lookup, keyed the same as var.group_billable_member_memberships_lookup except keys with no user_id are omitted"
  value       = { for k, v in data.gitlab_group_billable_member_memberships.group_billable_member_memberships_lookup : k => v.user_id if v.user_id != null }
}

