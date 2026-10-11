data "gitlab_group_billable_member_memberships" "group_billable_member_memberships_lookup" {
  for_each = var.group_billable_member_memberships_lookup

  group_id = each.value.group_id
  user_id  = each.value.user_id
}

